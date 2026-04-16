---@meta

---Options that define how to blend when changing view targets.
---@class EViewTargetBlendFunction
---@field VTBlend_Linear number @Camera does a simple linear interpolation.
---@field VTBlend_Cubic number @Camera has a slight ease in and ease out, but amount of ease cannot be tweaked.
---@field VTBlend_EaseIn number @Camera immediately accelerates, but smoothly decelerates into the target.  Ease amount controlled by BlendExp.
---@field VTBlend_EaseOut number @Camera smoothly accelerates, but does not decelerate into the target.  Ease amount controlled by BlendExp.
---@field VTBlend_EaseInOut number @Camera smoothly accelerates and decelerates.  Ease amount controlled by BlendExp.
---@field VTBlend_MAX number
EViewTargetBlendFunction = {}


---Cached camera POV info, stored as optimization so we only need to do a full camera update once per tick.
---@class FCameraCacheEntry
---@field TimeStamp number @World time this entry was created.
---@field POV FMinimalViewInfo @Camera POV to cache.
FCameraCacheEntry = {}


---A ViewTarget is the primary actor the camera is associated with.
---@class FTViewTarget
---@field POV any @Computed point of view
FTViewTarget = {}


---A set of parameters to describe how to transition between view targets.
---@class FViewTargetTransitionParams
---@field BlendTime number @Total duration of blend to pending view target. 0 means no blending.
---@field BlendFunction EViewTargetBlendFunction @Function to apply to the blend parameter.
---@field BlendExp number @Exponent, used by certain blend functions to control the shape of the curve.
---@field bLockOutgoing number @If true, lock outgoing viewtarget to last frame's camera POV for the remainder of the blend. This is useful if you plan to teleport the old viewtarget, but don't want to affect the blend.
---@field bLockLocation number
FViewTargetTransitionParams = {}


---@class FOnViewPitchMinPostChanged : ULuaMulticastDelegate
FOnViewPitchMinPostChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldViewPitchMin: number, NewViewPitchMin: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnViewPitchMinPostChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldViewPitchMin number
---@param NewViewPitchMin number
function FOnViewPitchMinPostChanged:Broadcast(OldViewPitchMin, NewViewPitchMin) end


---@class FOnViewPitchMaxPostChanged : ULuaMulticastDelegate
FOnViewPitchMaxPostChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldViewPitchMax: number, NewViewPitchMax: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnViewPitchMaxPostChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldViewPitchMax number
---@param NewViewPitchMax number
function FOnViewPitchMaxPostChanged:Broadcast(OldViewPitchMax, NewViewPitchMax) end


---A PlayerCameraManager is responsible for managing the camera for a particular player. It defines the final view properties used by other systems (e.g. the renderer), meaning you can think of it as your virtual eyeball in the world. It can compute the final camera properties directly, or it can arbitrate/blend between other objects or actors that influence the camera (e.g. blending from one CameraActor to another). The PlayerCameraManagers primary external responsibility is to reliably respond to various Get*() functions, such as GetCameraViewPoint. Most everything else is implementation detail and overrideable by user projects. By default, a PlayerCameraManager maintains a "view target", which is the primary actor the camera is associated with. It can also apply various "post" effects to the final view state, such as camera animations, shakes, post-process effects or special effects such as dirt on the lens.
---@class APlayerCameraManager: AActor
---@field DefaultFOV number @FOV to use by default.
---@field DefaultOrthoWidth number @The default desired width (in world units) of the orthographic view (ignored in Perspective mode)
---@field DefaultAspectRatio number @Default aspect ratio (used when a view target override the aspect ratio and bConstrainAspectRatio is set; most of the time the value from a camera component will be used instead)
---@field CameraCache any @Cached camera properties.
---@field LastFrameCameraCache any @Cached camera properties, one frame old.
---@field ViewTarget any @Current ViewTarget
---@field PendingViewTarget any @Pending view target for blending
---@field CachedViewPOV FMinimalViewInfo @If This POV is not null, Use this Value to Blend Target
---@field ModifierList ULuaArrayHelper<UCameraModifier> @List of active camera modifier instances that have a chance to update the final camera POV
---@field DefaultModifiers ULuaArrayHelper<UCameraModifier> @List of modifiers to create by default for this camera
---@field FreeCamDistance number @Distance to place free camera from view target (used in certain CameraStyles)
---@field FreeCamOffset FVector @Offset to Z free camera position (used in certain CameraStyles)
---@field ViewTargetOffset FVector @Offset to view target (used in certain CameraStyles)
---@field CameraLensEffects ULuaArrayHelper<AEmitterCameraLensEffectBase> @CameraBlood emitter attached to this camera
---@field PostProcessBlendCache ULuaArrayHelper<FPostProcessSettings> @Internal list of active post process effects. Parallel array to PostProcessBlendCacheWeights.
---@field ActiveAnims ULuaArrayHelper<UCameraAnimInst> @Array of camera anim instances that are currently playing and in-use
---@field FreeAnims ULuaArrayHelper<UCameraAnimInst> @Array of camera anim instances that are not playing and available to be used.
---@field bIsOrthographic number @True when this camera should use an orthographic perspective instead of FOV
---@field bDefaultConstrainAspectRatio number @True if black bars should be added if the destination view has a different aspect ratio (only used when a view target doesn't specify whether or not to constrain the aspect ratio; most of the time the value from a camera component is used instead)
---@field bUseClientSideCameraUpdates number @True if server will use camera positions replicated from the client instead of calculating them locally.
---@field bGameCameraCutThisFrame number @True if we did a camera cut this frame. Automatically reset to false every frame. This flag affects various things in the renderer (such as whether to use the occlusion queries from last frame, and motion blur).
---@field SendServerUpdateCameraInterval number
---@field ViewPitchMin number @Minimum view pitch, in degrees.
---@field ViewPitchMax number @Maximum view pitch, in degrees.
---@field ViewYawMin number @Minimum view yaw, in degrees.
---@field ViewYawMax number @Maximum view yaw, in degrees.
---@field ViewRollMin number @Minimum view roll, in degrees.
---@field ViewRollMax number @Maximum view roll, in degrees.
---@field BaseCamAnimTrans FTransform
---@field PostViewPitchMinChangedDelegate FOnViewPitchMinPostChanged
---@field PostViewPitchMaxChangedDelegate FOnViewPitchMaxPostChanged
local APlayerCameraManager = {}

---@param InViewPitchMin number
function APlayerCameraManager:SetViewPitchMin(InViewPitchMin) end

---@return number
function APlayerCameraManager:GetViewPitchMin() end

---@param InViewPitchMax number
function APlayerCameraManager:SetViewPitchMax(InViewPitchMax) end

---@return number
function APlayerCameraManager:GetViewPitchMax() end

---Implementable blueprint hook to allow a PlayerCameraManager subclass to constrain or otherwise modify the camera during free-camera photography. For example, a blueprint may wish to limit the distance from the camera's original point, or forbid the camera from passing through walls. NewCameraLocation contains the proposed new camera location. PreviousCameraLocation contains the camera location in the previous frame. OriginalCameraLocation contains the camera location before the game was put into photography mode. Return ResultCameraLocation as modified according to your constraints.
---@param NewCameraLocation FVector
---@param PreviousCameraLocation FVector
---@param OriginalCameraLocation FVector
---@param ResultCameraLocation FVector
function APlayerCameraManager:PhotographyCameraModify(NewCameraLocation, PreviousCameraLocation, OriginalCameraLocation, ResultCameraLocation) end

---Event triggered upon entering Photography mode (before pausing, if r.Photography.AutoPause is 1).
function APlayerCameraManager:OnPhotographySessionStart() end

---Event triggered upon leaving Photography mode (after unpausing, if r.Photography.AutoPause is 1).
function APlayerCameraManager:OnPhotographySessionEnd() end

---Event triggered upon the start of a multi-part photograph capture (i.e. a stereoscopic or 360-degree shot).  This is an ideal time to turn off rendering effects that tile badly (UI, subtitles, vignette, very aggressive bloom, etc; most of these are automatically disabled when r.Photography.AutoPostprocess is 1).
function APlayerCameraManager:OnPhotographyMultiPartCaptureStart() end

---Event triggered upon the end of a multi-part photograph capture, when manual free-roaming photographic camera control is about to be returned to the user. Here you may re-enable whatever was turned off within OnPhotographyMultiPartCaptureStart.
function APlayerCameraManager:OnPhotographyMultiPartCaptureEnd() end

---Blueprint hook to allow blueprints to override existing camera behavior or implement custom cameras. If this function returns true, we will use the given returned values and skip further calculations to determine final camera POV.
---@param CameraTarget AActor
---@param NewCameraLocation FVector
---@param NewCameraRotation FRotator
---@param NewCameraFOV number
---@return boolean
function APlayerCameraManager:BlueprintUpdateCamera(CameraTarget, NewCameraLocation, NewCameraRotation, NewCameraFOV) end

---Removes the given camera modifier from this camera (if it's on the camera in the first place) and discards it.
---@param ModifierToRemove UCameraModifier
---@return boolean
function APlayerCameraManager:RemoveCameraModifier(ModifierToRemove) end

---@return number
function APlayerCameraManager:GetFOVAngle() end

---Locks the FOV to the given value.  Unlock with UnlockFOV.
---@param NewFOV number
function APlayerCameraManager:SetFOV(NewFOV) end

---Unlocks the FOV.
function APlayerCameraManager:UnlockFOV() end

---@return FRotator
function APlayerCameraManager:GetCameraRotation() end

---@return FVector
function APlayerCameraManager:GetCameraLocation() end

---Removes the given lens effect from the camera.
---@param Emitter AEmitterCameraLensEffectBase
function APlayerCameraManager:RemoveCameraLensEffect(Emitter) end

---Removes all camera lens effects.
function APlayerCameraManager:ClearCameraLensEffects() end

---Immediately stops the given shake instance and invalidates it.
---@param ShakeInstance UCameraShake
---@param bImmediately boolean
function APlayerCameraManager:StopCameraShake(ShakeInstance, bImmediately) end

---Stops playing CameraShake of the given class.
---@param Shake UCameraShake
---@param bImmediately boolean
function APlayerCameraManager:StopAllInstancesOfCameraShake(Shake, bImmediately) end

---Stops all active camera shakes on this camera.
---@param bImmediately boolean
function APlayerCameraManager:StopAllCameraShakes(bImmediately) end

---Does a camera fade to/from a solid color.  Animates automatically.
---@param FromAlpha number
---@param ToAlpha number
---@param Duration number
---@param Color FLinearColor
---@param bShouldFadeAudio boolean
---@param bHoldWhenFinished boolean
function APlayerCameraManager:StartCameraFade(FromAlpha, ToAlpha, Duration, Color, bShouldFadeAudio, bHoldWhenFinished) end

---Stops camera fading.
function APlayerCameraManager:StopCameraFade() end

---Turns on camera fading at the given opacity. Does not auto-animate, allowing user to animate themselves. Call StopCameraFade to turn fading back off.
---@param InFadeAmount number
---@param Color FLinearColor
---@param bInFadeAudio boolean
function APlayerCameraManager:SetManualCameraFade(InFadeAmount, Color, bInFadeAudio) end

---Stop playing all instances of the indicated CameraAnim.
---@param Anim UCameraAnim
---@param bImmediate boolean
function APlayerCameraManager:StopAllInstancesOfCameraAnim(Anim, bImmediate) end

---Stops the given CameraAnimInst from playing.  The given pointer should be considered invalid after this.
---@param AnimInst UCameraAnimInst
---@param bImmediate boolean
function APlayerCameraManager:StopCameraAnimInst(AnimInst, bImmediate) end

---Stop playing all CameraAnims on this CameraManager.
---@param bImmediate boolean
function APlayerCameraManager:StopAllCameraAnims(bImmediate) end
