---@meta

---@class EFPCacheState
---@field Auto number
---@field ForceCache number
---@field ForceRedraw number
EFPCacheState = {}


---Determines whether a Character can attempt to step up onto a component when they walk in to it.
---@class ECanBeCharacterBase
---@field ECB_No number @Character cannot step up onto this Component.
---@field ECB_Yes number @Character can step up onto this Component.
---@field ECB_Owner number @Owning actor determines whether character can step up onto this Component (default true unless overridden in code).
---@field ECB_MAX number
ECanBeCharacterBase = {}


---@class EHasCustomNavigableGeometry
---@field No number
---@field Yes number
---@field EvenIfNotCollidable number
---@field DontExport number
EHasCustomNavigableGeometry = {}


---Exposed enum to parallel RHI's EStencilMask and show up in the editor. Has a paired struct to convert between the two.
---@class ERendererStencilMask
---@field ERSM_Default number @Default
---@field ERSM_255 number @All bits (255), ignore depth
---@field ERSM_1 number @First bit (1), ignore depth
---@field ERSM_2 number @Second bit (2), ignore depth
---@field ERSM_4 number @Third bit (4), ignore depth
---@field ERSM_8 number @Fourth bit (8), ignore depth
---@field ERSM_16 number @Fifth bit (16), ignore depth
---@field ERSM_32 number @Sixth bit (32), ignore depth
---@field ERSM_64 number @Seventh bit (64), ignore depth
---@field ERSM_128 number @Eighth bit (128), ignore depth
ERendererStencilMask = {}


---@class EOverrideQueryMobilityType
---@field Any number
---@field Static number
---@field DynamicAndStationary number
EOverrideQueryMobilityType = {}


---Information about the sprite category
---@class FSpriteCategoryInfo
---@field Category string @Sprite category that the component belongs to
---@field DisplayName string @Localized name of the sprite category
---@field Description string @Localized description of the sprite category
FSpriteCategoryInfo = {}


---Delegate for notification of blocking collision against a specific component. NormalImpulse will be filled in for physics-simulating bodies, but will be zero for swept-component blocking collisions.
---@class FComponentHitSignature : ULuaMulticastDelegate
FComponentHitSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HitComponent: UPrimitiveComponent, OtherActor: AActor, OtherComp: UPrimitiveComponent, NormalImpulse: FVector, Hit: FHitResult) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentHitSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function FComponentHitSignature:Broadcast(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end


---Delegate for notification of start of overlap with a specific component
---@class FComponentBeginOverlapSignature : ULuaMulticastDelegate
FComponentBeginOverlapSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OverlappedComponent: UPrimitiveComponent, OtherActor: AActor, OtherComp: UPrimitiveComponent, OtherBodyIndex: number, bFromSweep: boolean, SweepResult: FHitResult) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentBeginOverlapSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function FComponentBeginOverlapSignature:Broadcast(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---Delegate for notification of end of overlap with a specific component
---@class FComponentEndOverlapSignature : ULuaMulticastDelegate
FComponentEndOverlapSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OverlappedComponent: UPrimitiveComponent, OtherActor: AActor, OtherComp: UPrimitiveComponent, OtherBodyIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentEndOverlapSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function FComponentEndOverlapSignature:Broadcast(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end


---Delegate for notification when a wake event is fired by physics
---@class FComponentWakeSignature : ULuaMulticastDelegate
FComponentWakeSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WakingComponent: UPrimitiveComponent, BoneName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentWakeSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param WakingComponent UPrimitiveComponent
---@param BoneName string
function FComponentWakeSignature:Broadcast(WakingComponent, BoneName) end


---Delegate for notification when a sleep event is fired by physics
---@class FComponentSleepSignature : ULuaMulticastDelegate
FComponentSleepSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SleepingComponent: UPrimitiveComponent, BoneName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentSleepSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param SleepingComponent UPrimitiveComponent
---@param BoneName string
function FComponentSleepSignature:Broadcast(SleepingComponent, BoneName) end


---Delegate for notification when collision settings change.
---@class FComponentCollisionSettingsChangedSignature : ULuaMulticastDelegate
FComponentCollisionSettingsChangedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ChangedComponent: UPrimitiveComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentCollisionSettingsChangedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param ChangedComponent UPrimitiveComponent
function FComponentCollisionSettingsChangedSignature:Broadcast(ChangedComponent) end


---@class FComponentBeginCursorOverSignature : ULuaMulticastDelegate
FComponentBeginCursorOverSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TouchedComponent: UPrimitiveComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentBeginCursorOverSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param TouchedComponent UPrimitiveComponent
function FComponentBeginCursorOverSignature:Broadcast(TouchedComponent) end


---@class FComponentEndCursorOverSignature : ULuaMulticastDelegate
FComponentEndCursorOverSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TouchedComponent: UPrimitiveComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentEndCursorOverSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param TouchedComponent UPrimitiveComponent
function FComponentEndCursorOverSignature:Broadcast(TouchedComponent) end


---@class FComponentOnClickedSignature : ULuaMulticastDelegate
FComponentOnClickedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TouchedComponent: UPrimitiveComponent, ButtonPressed: FKey) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentOnClickedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param TouchedComponent UPrimitiveComponent
---@param ButtonPressed FKey
function FComponentOnClickedSignature:Broadcast(TouchedComponent, ButtonPressed) end


---@class FComponentOnReleasedSignature : ULuaMulticastDelegate
FComponentOnReleasedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TouchedComponent: UPrimitiveComponent, ButtonReleased: FKey) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentOnReleasedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param TouchedComponent UPrimitiveComponent
---@param ButtonReleased FKey
function FComponentOnReleasedSignature:Broadcast(TouchedComponent, ButtonReleased) end


---@class FComponentOnInputTouchBeginSignature : ULuaMulticastDelegate
FComponentOnInputTouchBeginSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FingerIndex: ETouchIndex, TouchedComponent: UPrimitiveComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentOnInputTouchBeginSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param FingerIndex ETouchIndex
---@param TouchedComponent UPrimitiveComponent
function FComponentOnInputTouchBeginSignature:Broadcast(FingerIndex, TouchedComponent) end


---@class FComponentOnInputTouchEndSignature : ULuaMulticastDelegate
FComponentOnInputTouchEndSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FingerIndex: ETouchIndex, TouchedComponent: UPrimitiveComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentOnInputTouchEndSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param FingerIndex ETouchIndex
---@param TouchedComponent UPrimitiveComponent
function FComponentOnInputTouchEndSignature:Broadcast(FingerIndex, TouchedComponent) end


---@class FComponentBeginTouchOverSignature : ULuaMulticastDelegate
FComponentBeginTouchOverSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FingerIndex: ETouchIndex, TouchedComponent: UPrimitiveComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentBeginTouchOverSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param FingerIndex ETouchIndex
---@param TouchedComponent UPrimitiveComponent
function FComponentBeginTouchOverSignature:Broadcast(FingerIndex, TouchedComponent) end


---@class FComponentEndTouchOverSignature : ULuaMulticastDelegate
FComponentEndTouchOverSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FingerIndex: ETouchIndex, TouchedComponent: UPrimitiveComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComponentEndTouchOverSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param FingerIndex ETouchIndex
---@param TouchedComponent UPrimitiveComponent
function FComponentEndTouchOverSignature:Broadcast(FingerIndex, TouchedComponent) end


---PrimitiveComponents are SceneComponents that contain or generate some sort of geometry, generally to be rendered or used as collision data. There are several subclasses for the various types of geometry, but the most common by far are the ShapeComponents (Capsule, Sphere, Box), StaticMeshComponent, and SkeletalMeshComponent. ShapeComponents generate geometry that is used for collision detection but are not rendered, while StaticMeshComponents and SkeletalMeshComponents contain pre-built geometry that is rendered, but can also be used for collision detection.
---@class UPrimitiveComponent: USceneComponent, INavRelevantInterface
---@field ExpectedQualityLimit FExpectedQuality @If limit > actual, primitive won't be rendered.
---@field bFixedLODDistanceFactorSwitch number @open this switch to use r.LOD.FixedDistanceFactor to control lod switch for example r.LOD.FixedDistanceFactor=0.5 is half distance of origin to switch new lod
---@field CullingScreenSize number @If the screen percentage of the bounding box under this value, it will be culled. Set "0" to avoid contribution culling
---@field MinDrawDistance number @The minimum distance at which the primitive should be rendered, measured in world space units from the center of the primitive's bounding sphere to the camera position.
---@field LDMaxDrawDistance number @Max draw distance exposed to LDs. The real max draw distance is the min (disregarding 0) of this and volumes affecting this object.
---@field CachedMaxDrawDistance number @The distance to cull this primitive at. A CachedMaxDrawDistance of 0 indicates that the primitive should not be culled by distance.
---@field DepthPriorityGroup ESceneDepthPriorityGroup @The scene depth priority group to draw the primitive in.
---@field ViewOwnerDepthPriorityGroup ESceneDepthPriorityGroup @The scene depth priority group to draw the primitive in, if it's being viewed by its owner.
---@field LightmapType ELightmapType @Controls the type of lightmap used for this component.
---@field VLMOptimizeType EVLMOptimizeType @To optimize performance, VLM can select optimization method.
---@field bInstanceCulling number
---@field OverrideQueryMobilityType EOverrideQueryMobilityType
---@field bUseAsPVSOC number
---@field bUseDynamicPVS number
---@field FramePredictionCacheState EFPCacheState
---@field StaticSceneCacheState EFPCacheState
---@field bForceInjectToHierarchicalSurfel number @If true, the primitive intersecting with the surfel volume will be injected into the volume whenever the camera moves.
---@field bForceUseStaticMovability number @If true, the movability of the primitive will be considered as static in Surfel GI pipeline.
---@field bAffectSurfelGIWhenHidden number @If true, always affect global illumination even if hidden in game
---@field bBulletCanBreakThrough number
---@field bAlwaysCreatePhysicsState number @Indicates if we'd like to create physics state all the time (for collision and simulation). If you set this to false, it still will create physics state if collision or simulation activated. This can help performance if you'd like to avoid overhead of creating physics state when triggers
---@field bGenerateOverlapEvents number @If true, this component will generate overlap events when it is overlapping other components (eg Begin Overlap). Both components (this and the other) must have this enabled for overlap events to occur.
---@field bUpdateOverlapEventsWhenMove number
---@field bForceUpdateOverlapEventsWhenMove number
---@field bUseSingleSweep number
---@field bMultiBodyOverlap number @If true, this component will generate individual overlaps for each overlapping physics body if it is a multi-body component. When false, this component will generate only one overlap, regardless of how many physics bodies it has and how many of them are overlapping another component/body. This flag has no influence on single body components.
---@field bCheckAsyncSceneOnMove number @If true, this component will look for collisions on both physic scenes during movement. Only required if the asynchronous physics scene is enabled and has geometry in it, and you wish to test for collisions with objects in that scene.
---@field bTraceComplexOnMove number @If true, component sweeps with this component should trace against complex collision during movement (for example, each triangle of a mesh). If false, collision will be resolved against simple collision bounds instead.
---@field bReturnMaterialOnMove number @If true, component sweeps will return the material in their hit result.
---@field bUseViewOwnerDepthPriorityGroup number @True if the primitive should be rendered using ViewOwnerDepthPriorityGroup if viewed by its owner.
---@field bAllowCullDistanceVolume number @Whether to accept cull distance volumes to modify cached cull distance.
---@field bHasMotionBlurVelocityMeshes number @true if the primitive has motion blur velocity meshes
---@field bVisibleInReflectionCaptures number @If true, this component will be visible in reflection captures.
---@field bRejectReflectionCapture number
---@field bRenderInMainPass number @If true, this component will be rendered in the main pass (z prepass, basepass, transparency)
---@field bForceRenderInShadowPass number @If true, this component will force be rendered in the shadow depth pass when bRenderInMainPass is false
---@field HiddenInMainPassLocks ULuaArrayHelper<string> @If Num() == 0, this component will be rendered in the main pass (z prepass, basepass, transparency)
---@field bRenderInMono number @If true, this component will be rendered in mono only if an HMD is connected and monoscopic far field rendering is activated.
---@field bReceivesDecals number @Whether the primitive receives decals.
---@field bOwnerNoSee number @If this is True, this component won't be visible when the view actor is the component's owner, directly or indirectly.
---@field bOnlyOwnerSee number @If this is True, this component will only be visible when the view actor is the component's owner, directly or indirectly.
---@field bTreatAsBackgroundForOcclusion number @Treat this primitive as part of the background for occlusion purposes. This can be used as an optimization to reduce the cost of rendering skyboxes, large ground planes that are part of the vista, etc.
---@field bDrawIdeaOutline number @Whether to render the primitive's outline
---@field bIdeaOutlineUseNormalInVertexColor number @Whether to use normal vector stored in vertex color
---@field bIdeaOutlineUseOutlineMesh number
---@field bIdeaOutlineNew number @Whether to use new outline pass.
---@field bIdeaOutlineOcclusionHighlight number @Whether to use occlusion highlight
---@field bDisableWriteDepthForOcclusionHighlight number @Whether to occlude other primitive's highlight. if this is already occlude highlight, it won't write depth and this flag make no use.
---@field bIdeaOutlineNewUseBackFace number @use backface for outline drawing in outline pass
---@field bIdeaOverrideOutlineAndOcclusion number @Override outline settings to enable both outline and occlusion
---@field bDrawIdeaOutlineInHighlightPass number @Move old draw outline to highlight pass, not work for outline for separate pass, maybe custom depth outline in the future
---@field IdeaOutlineOcclusionColor FLinearColor @Edit it when enable Use Both Outline And Occlusion, otherwise use IdeaOutlineColor
---@field bOverrideIdeaOutlineColor number @Whether to override the primitive's outline color
---@field bOverrideIdeaOutlineThickness number @Whether to override the primitive's outline color
---@field IdeaOutlineThickness number @the primitive's override outline color
---@field IdeaOutlineColor FLinearColor @the primitive's override outline color
---@field bDrawHighlight number @Whether to draw highlight for this primitive
---@field bHighlightCanBeOccluded number @Whether the highlight mesh of this primitive can be occluded
---@field bOverrideHighlightColor number @Whether to use HighlightColor for highlight rendering, if false, use the default color in HighlightMaterial
---@field HighlightColor FLinearColor @If bOverrideHighlightColor is true, use this color for highlight rendering
---@field DrawDyeingMode EDrawDyeingMode @Draw dyeing mode of primitive
---@field VisibleDyeingColor FLinearColor @Primitive's visible color when dyeing
---@field OccludedDyeingColor FLinearColor @Primitive's occlued color when dyeing
---@field bDrawDyeing number @Whether to dyeing the primitive
---@field bUseAsEarlyZ number @Whether to render the primitive in the early z pass for mobile platform.
---@field bRenderInTwoPass number @If the mesh is visibility grid's proxy
---@field bTwoPassTranslucent number
---@field bTranslucentDepthWrite number
---@field bTranslucentDepthWriteInTwoPass number
---@field bForceIBL number
---@field bForceDisableIBL number
---@field bForceDynamic number
---@field ActiveScopeStatus number
---@field ScopeLocalTranslation FVector
---@field ScopeLocalRotation FRotator
---@field ScopeRadius number
---@field bIsFppLayer number
---@field bIsTppLayer number @When enabled, the component will NOT cast a shadow on components with bIsFppLayer enabled. This requires bCastInsetShadow to be enabled.
---@field bUseAsOccluder number @Whether to render the primitive in the depth only pass. This should generally be true for all objects, and let the renderer make decisions about whether to render objects in the depth only pass.
---@field bOnlyAsOccluder number
---@field bSelectable number @If this is True, this component can be selected in the editor.
---@field bForceMipStreaming number @If true, forces mips for textures used by this component to be resident when this component's level is loaded.
---@field bHasPerInstanceHitProxies number @If true a hit-proxy will be generated for each instance of instanced static meshes
---@field bRecieveShadow number @Controls whether the primitive component should recieve a shadow or not.(by jinglei)
---@field CastShadow number @Controls whether the primitive component should cast a shadow or not. This flag is ignored (no shadows will be generated) if all materials on this component have an Unlit shading model.
---@field bAffectDynamicIndirectLighting number @Controls whether the primitive should inject light into the Light Propagation Volume.  This flag is only used if CastShadow is true. *
---@field bAffectDistanceFieldLighting number @Controls whether the primitive should affect dynamic distance field lighting methods.  This flag is only used if CastShadow is true. *
---@field bCastDynamicShadow number @Controls whether the primitive should cast shadows in the case of non precomputed shadowing.  This flag is only used if CastShadow is true. *
---@field bCastStaticShadow number @Whether the object should cast a static shadow from shadow casting lights.  This flag is only used if CastShadow is true.
---@field bCastVolumetricTranslucentShadow number @Whether the object should cast a volumetric translucent shadow. Volumetric translucent shadows are useful for primitives `with smoothly changing opacity like particles representing a volume, But have artifacts when used on highly opaque surfaces.
---@field bSelfShadowOnly number @When enabled, the component will only cast a shadow on itself and not other components in the world. This is especially useful for first person weapons, and forces bCastInsetShadow to be enabled.
---@field bCastFarShadow number @When enabled, the component will be rendering into the far shadow cascades (only for directional lights).
---@field bCastInDoorShadow number @When enabled, the component will be rendering shadow in door (only for directional lights).
---@field bCastInsetShadow number @Whether this component should create a per-object shadow that gives higher effective shadow resolution. Useful for cinematic character shadowing. Assumed to be enabled if bSelfShadowOnly is enabled.
---@field bCastTranslucentShadowAsMask number
---@field bCastPhotonShadow number @#if WITH_PHOTON_SHADOW Photon character shadow add by hezhengli #endif
---@field bCastPhotonPerObjectShadow number @#if WITH_PHOTON_PER_OBEJCT_SHADOW
---@field bNearCascade number @WITH_PHOTON_SHADOW Currently only support 2 cascades on mobile platform
---@field bCastCinematicShadow number @Whether this component should cast shadows from lights that have bCastShadowsFromCinematicObjectsOnly enabled. This is useful for characters in a cinematic with special cinematic lights, where the cost of shadowmap rendering of the environment is undesired.
---@field bCastHiddenShadow number @If true, the primitive will cast shadows even if bHidden is true. Controls whether the primitive should cast shadows when hidden. This flag is only used if CastShadow is true.
---@field bCastShadowAsTwoSided number @Whether this primitive should cast dynamic shadows as if it were a two sided material.
---@field bLightAsIfStatic_DEPRECATED number
---@field bLightAttachmentsAsGroup number @Whether to light this component and any attachments as a group.  This only has effect on the root component of an attachment tree. When enabled, attached component shadowing settings like bCastInsetShadow, bCastVolumetricTranslucentShadow, etc, will be ignored. This is useful for improving performance when multiple movable components are attached together.
---@field bReceiveCombinedCSMAndStaticShadowsFromStationaryLights number @Mobile only: If enabled this component can receive combined static and CSM shadows from a stationary light. (Enabling will increase shading cost.) If disabled this component will only receive static shadows from stationary lights.
---@field bReceiveLandscapeShadows number
---@field bSingleSampleShadowFromStationaryLights number @Whether the whole component should be shadowed as one from stationary lights, which makes shadow receiving much cheaper. When enabled shadowing data comes from the volume lighting samples precomputed by Lightmass, which are very sparse. This is currently only used on stationary directional lights.
---@field bIgnoreRadialImpulse number @Will ignore radial impulses applied to this component.
---@field bIgnoreRadialForce number @Will ignore radial forces applied to this component.
---@field bApplyImpulseOnDamage number @True for damage to this component to apply physics impulse, false to opt out of these impulses.
---@field bReplicatePhysicsToAutonomousProxy number @True if physics should be replicated to autonomous proxies. This should be true for server-authoritative simulations, and false for client authoritative simulations.
---@field bCorrectPXTrans number
---@field bCorrectPXTransUsingRemovePhysTargetFunction number
---@field AlwaysLoadOnClient number @If this is True, this component must always be loaded on clients, even if Hidden and CollisionEnabled is NoCollision.
---@field AlwaysLoadOnServer number @If this is True, this component must always be loaded on servers, even if Hidden and CollisionEnabled is NoCollision
---@field bUseEditorCompositing number @Composite the drawing of this component onto the scene after post processing (only applies to editor drawing)
---@field bRenderCustomDepth number @If true, this component will be rendered in the CustomDepth pass (usually used for outlines)
---@field bUpdateTransformUseTeleportPhysics number
---@field bUseAsyncCompilePSO number
---@field bIgnoreOtherCanBeOverlap number
---@field bMoveMultiPenetratingIgnoreFlag number
---@field bHasCustomNavigableGeometry EHasCustomNavigableGeometry @If true then DoCustomNavigableGeometryExport will be called to collect navigable geometry of this component.
---@field CanCharacterStepUpOn ECanBeCharacterBase @Determine whether a Character can step up onto this component. This controls whether they can try to step up on it when they bump in to it, not whether they can walk on it after landing on it.
---@field JumpOffVelocityFactor number @不能站的时候，角色随机移动的最大速度的比率 如果>0，表示使用本值，移动组件上的值无效；否则使用移动组件上的值
---@field LightingChannels FLightingChannels @Channels that this component should be in.  Lights with matching channels will affect the component. These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.
---@field IndoorOutdoorMask EIndoorOutdoorMask
---@field CustomDepthStencilWriteMask ERendererStencilMask @Mask used for stencil buffer writes.
---@field CustomDepthStencilValue number @Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Requires project setting or r.CustomDepth == 3)
---@field TranslucencySortPriority number @Translucent objects with a lower sort priority draw behind objects with a higher priority. Translucent objects with the same priority are rendered from back-to-front based on their bounds origin. Ignored if the object is not translucent.  The default priority is zero. Warning: This should never be set to a non-default value unless you know what you are doing, as it will prevent the renderer from sorting correctly. It is especially problematic on dynamic gameplay effects.
---@field VisibilityId number @Used for precomputed visibility
---@field PVSHandlerID number @Used for precomputed visibility
---@field NumInstanceVisibilityVolumes number @Used for precomputed visibility
---@field bForceSyncPSO number @Multiplier used to scale the Light Propagation Volume light injection bias, to reduce light bleeding. Set to 0 for no bias, 1 for default or higher for increased biasing (e.g. for thin geometry such as walls)
---@field OverrideCylinderMaxDrawHeight number
---@field bCanSeparateParticleRendering boolean
---@field bDisableDynamicInstancing boolean
---@field BoundsScale number @Scales the bounds of the object. This is useful when using World Position Offset to animate the vertices of the object outside of its bounds. Warning: Increasing the bounds of an object will reduce performance and shadow quality! Currently only used by StaticMeshComponent and SkeletalMeshComponent.
---@field OCBoundsScale number
---@field OCBoundsExtent number @ROC Extent the bounds a few pixels during depth test.
---@field LastSubmitTime number @Last time the component was submitted for rendering (called FScene::AddPrimitive).
---@field LastRenderTime number @The value of WorldSettings->TimeSeconds for the frame when this component was last rendered.  This is written from the render thread, which is up to a frame behind the game thread, so you should allow this time to be at least a frame behind the game thread's world time before you consider the actor non-visible.
---@field LastRenderTimeOnScreen number
---@field TouchAsBlockActors ULuaArrayHelper<AActor>
---@field MoveIgnoreComponents ULuaArrayHelper<UPrimitiveComponent> @Set of components to ignore during component sweeps in MoveComponent(). These components will be ignored when this component moves or updates overlaps. The other components may also need to be told to do the same when they move. Does not affect movement of this component when simulating physics.
---@field BodyInstance FBodyInstance @Physics scene information for this component, holds a single rigid body with multiple shapes.
---@field OnComponentHit FComponentHitSignature @Event called when a component hits (or is hit by) something solid. This could happen due to things like Character movement, using Set Location with 'sweep' enabled, or physics simulation. For events when objects overlap (e.g. walking into a trigger) see the 'Overlap' event. will be adjusted to indicate force from the other object against this object.
---@field OnComponentBeginOverlap FComponentBeginOverlapSignature @Event called when something starts to overlaps this component, for example a player walking into a trigger. For events when objects have a blocking collision, for example a player hitting a wall, see 'Hit' events. will be adjusted to indicate force from the other object against this object.
---@field OnComponentEndOverlap FComponentEndOverlapSignature @Event called when something stops overlapping this component
---@field OnComponentWake FComponentWakeSignature @Event called when the underlying physics objects is woken up
---@field OnComponentSleep FComponentSleepSignature @Event called when the underlying physics objects is put to sleep
---@field OnComponentCollisionSettingsChangedEvent FComponentCollisionSettingsChangedSignature @Event called when collision settings change for this component.
---@field OnBeginCursorOver FComponentBeginCursorOverSignature @Event called when the mouse cursor is moved over this component and mouse over events are enabled in the player controller
---@field OnEndCursorOver FComponentEndCursorOverSignature @Event called when the mouse cursor is moved off this component and mouse over events are enabled in the player controller
---@field OnClicked FComponentOnClickedSignature @Event called when the left mouse button is clicked while the mouse is over this component and click events are enabled in the player controller
---@field OnReleased FComponentOnReleasedSignature @Event called when the left mouse button is released while the mouse is over this component click events are enabled in the player controller
---@field OnInputTouchBegin FComponentOnInputTouchBeginSignature @Event called when a touch input is received over this component when touch events are enabled in the player controller
---@field OnInputTouchEnd FComponentOnInputTouchEndSignature @Event called when a touch input is released over this component when touch events are enabled in the player controller
---@field OnInputTouchEnter FComponentBeginTouchOverSignature @Event called when a finger is moved over this component when touch over events are enabled in the player controller
---@field OnInputTouchLeave FComponentEndTouchOverSignature @Event called when a finger is moved off this component when touch over events are enabled in the player controller
---@field PostPhysicsComponentTick any @Tick function for physics ticking *
local UPrimitiveComponent = {}

---@param bChannel0Open boolean
---@param bChannel1Open boolean
---@param bChannel2Open boolean
function UPrimitiveComponent:SetLightingChannels(bChannel0Open, bChannel1Open, bChannel2Open) end

---Tells this component whether to ignore collision with all components of a specific Actor when this component is moved. Components on the other Actor may also need to be told to do the same when they move. Does not affect movement of this component when simulating physics.
---@param Actor AActor
---@param bShouldIgnore boolean
function UPrimitiveComponent:IgnoreActorWhenMoving(Actor, bShouldIgnore) end

---Returns the list of actors we currently ignore when moving.
function UPrimitiveComponent:CopyArrayOfMoveIgnoreActors() end

---Clear the list of actors we ignore when moving.
function UPrimitiveComponent:ClearMoveIgnoreActors() end

---Tells this component whether to ignore collision with another component when this component is moved. The other components may also need to be told to do the same when they move. Does not affect movement of this component when simulating physics.
---@param Component UPrimitiveComponent
---@param bShouldIgnore boolean
function UPrimitiveComponent:IgnoreComponentWhenMoving(Component, bShouldIgnore) end

---Returns the list of actors we currently ignore when moving.
function UPrimitiveComponent:CopyArrayOfMoveIgnoreComponents() end

---Check whether this component is overlapping another component.
---@param OtherComp UPrimitiveComponent
---@return boolean
function UPrimitiveComponent:IsOverlappingComponent(OtherComp) end

---Check whether this component is overlapping any component of the given Actor.
---@param Other AActor
---@return boolean
function UPrimitiveComponent:IsOverlappingActor(Other) end

---Returns a list of actors that this component is overlapping.
---@param OverlappingActors ULuaArrayHelper<AActor>
---@param ClassFilter AActor
function UPrimitiveComponent:GetOverlappingActors(OverlappingActors, ClassFilter) end

---Returns list of components this component is overlapping.
---@param InOverlappingComponents ULuaArrayHelper<UPrimitiveComponent>
function UPrimitiveComponent:GetOverlappingComponents(InOverlappingComponents) end

---Scale the bounds of this object, used for frustum culling. Useful for features like WorldPositionOffset.
---@param NewBoundsScale number
function UPrimitiveComponent:SetBoundsScale(NewBoundsScale) end

---@return number
function UPrimitiveComponent:GetBoundsScale() end

---Changes the material applied to an element of the mesh.
---@param ElementIndex number
---@param Material UMaterialInterface
function UPrimitiveComponent:SetMaterial(ElementIndex, Material) end

---Changes the material applied to an element of the mesh.
---@param MaterialSlotName string
---@param Material UMaterialInterface
function UPrimitiveComponent:SetMaterialByName(MaterialSlotName, Material) end

---Sets a new slope override for this component instance.
---@param NewOverride FWalkableSlopeOverride
function UPrimitiveComponent:SetWalkableSlopeOverride(NewOverride) end

---Sets whether or not a single body should use physics simulation, or should be 'fixed' (kinematic). Note that if this component is currently attached to something, beginning simulation will detach it.
---@param bSimulate boolean
function UPrimitiveComponent:SetSimulatePhysics(bSimulate) end

---Sets the constraint mode of the component.
---@param LockedAxis EDOFMode
function UPrimitiveComponent:SetLockedAxis(LockedAxis) end

---Sets the constraint mode of the component.
---@param ConstraintMode EDOFMode
function UPrimitiveComponent:SetConstraintMode(ConstraintMode) end

---Add an impulse to a single rigid body. Good for one time instant burst.
---@param Impulse FVector
---@param BoneName string
---@param bVelChange boolean
function UPrimitiveComponent:AddImpulse(Impulse, BoneName, bVelChange) end

---Add an angular impulse to a single rigid body. Good for one time instant burst.
---@param Impulse FVector
---@param BoneName string
---@param bVelChange boolean
function UPrimitiveComponent:AddAngularImpulseInRadians(Impulse, BoneName, bVelChange) end

---Add an impulse to a single rigid body at a specific location.
---@param Impulse FVector
---@param Location FVector
---@param BoneName string
function UPrimitiveComponent:AddImpulseAtLocation(Impulse, Location, BoneName) end

---Add an impulse to all rigid bodies in this component, radiating out from the specified position.
---@param Origin FVector
---@param Radius number
---@param Strength number
---@param Falloff ERadialImpulseFalloff
---@param bVelChange boolean
function UPrimitiveComponent:AddRadialImpulse(Origin, Radius, Strength, Falloff, bVelChange) end

---Add a force to a single rigid body. This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
---@param Force FVector
---@param BoneName string
---@param bAccelChange boolean
function UPrimitiveComponent:AddForce(Force, BoneName, bAccelChange) end

---Add a force to a single rigid body. This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force. Notice: AssumesLocked   yufeiili 未加锁版本
---@param Force FVector
---@param BoneName string
---@param bAccelChange boolean
function UPrimitiveComponent:AddForce_AssumesLocked(Force, BoneName, bAccelChange) end

---Add a force to a single rigid body at a particular location in world space. This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
---@param Force FVector
---@param Location FVector
---@param BoneName string
function UPrimitiveComponent:AddForceAtLocation(Force, Location, BoneName) end

---Add a force to a single rigid body at a particular location in world space. This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force. Notice: AssumesLocked   yufeiili 未加锁版本
---@param Force FVector
---@param Location FVector
---@param BoneName string
function UPrimitiveComponent:AddForceAtLocation_AssumesLocked(Force, Location, BoneName) end

---Add a force to a single rigid body at a particular location. Both Force and Location should be in body space. This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
---@param Force FVector
---@param Location FVector
---@param BoneName string
function UPrimitiveComponent:AddForceAtLocationLocal(Force, Location, BoneName) end

---Add a force to all bodies in this component, originating from the supplied world-space location.
---@param Origin FVector
---@param Radius number
---@param Strength number
---@param Falloff ERadialImpulseFalloff
---@param bAccelChange boolean
function UPrimitiveComponent:AddRadialForce(Origin, Radius, Strength, Falloff, bAccelChange) end

---Add a torque to a single rigid body.
---@param Torque FVector
---@param BoneName string
---@param bAccelChange boolean
function UPrimitiveComponent:AddTorqueInRadians(Torque, BoneName, bAccelChange) end

---Add a torque to a single rigid body. assumesLocked yufeiii 未加锁版本
---@param Torque FVector
---@param BoneName string
---@param bAccelChange boolean
function UPrimitiveComponent:AddTorqueInRadians_AssumesLocked(Torque, BoneName, bAccelChange) end

---Set the linear velocity of a single body. This should be used cautiously - it may be better to use AddForce or AddImpulse.
---@param NewVel FVector
---@param bAddToCurrent boolean
---@param BoneName string
function UPrimitiveComponent:SetPhysicsLinearVelocity(NewVel, bAddToCurrent, BoneName) end

---Get the linear velocity of a single body.
---@param BoneName string
---@return FVector
function UPrimitiveComponent:GetPhysicsLinearVelocity(BoneName) end

---@param BoneName string
---@return FVector
function UPrimitiveComponent:GetPhysicsLinearVelocity_AssumesLocked(BoneName) end

---Get the linear velocity of a point on a single body.
---@param Point FVector
---@param BoneName string
---@return FVector
function UPrimitiveComponent:GetPhysicsLinearVelocityAtPoint(Point, BoneName) end

---Set the linear velocity of all bodies in this component.
---@param NewVel FVector
---@param bAddToCurrent boolean
function UPrimitiveComponent:SetAllPhysicsLinearVelocity(NewVel, bAddToCurrent) end

---Set the angular velocity of a single body. This should be used cautiously - it may be better to use AddTorque or AddImpulse.
---@param NewAngVel FVector
---@param bAddToCurrent boolean
---@param BoneName string
function UPrimitiveComponent:SetPhysicsAngularVelocityInRadians(NewAngVel, bAddToCurrent, BoneName) end

---Set the maximum angular velocity of a single body.
---@param NewMaxAngVel number
---@param bAddToCurrent boolean
---@param BoneName string
function UPrimitiveComponent:SetPhysicsMaxAngularVelocityInRadians(NewMaxAngVel, bAddToCurrent, BoneName) end

---Get the angular velocity of a single body, in radians per second.
---@param BoneName string
---@return FVector
function UPrimitiveComponent:GetPhysicsAngularVelocityInRadians(BoneName) end

---@param BoneName string
---@return FVector
function UPrimitiveComponent:GetPhysicsAngularVelocityInRadians_AssumesLocked(BoneName) end

---Get the center of mass of a single body. In the case of a welded body this will return the center of mass of the entire welded body (including its parent and children) Objects that are not simulated return (0,0,0) as they do not have COM
---@param BoneName string
---@return FVector
function UPrimitiveComponent:GetCenterOfMass(BoneName) end

---Set the center of mass of a single body. This will offset the physx-calculated center of mass. Note that in the case where multiple bodies are attached together, the center of mass will be set for the entire group.
---@param CenterOfMassOffset FVector
---@param BoneName string
function UPrimitiveComponent:SetCenterOfMass(CenterOfMassOffset, BoneName) end

---'Wake' physics simulation for a single body.
---@param BoneName string
function UPrimitiveComponent:WakeRigidBody(BoneName) end

---Force a single body back to sleep.
---@param BoneName string
function UPrimitiveComponent:PutRigidBodyToSleep(BoneName) end

---Changes the value of bNotifyRigidBodyCollision
---@param bNewNotifyRigidBodyCollision boolean
function UPrimitiveComponent:SetNotifyRigidBodyCollision(bNewNotifyRigidBodyCollision) end

---Changes the value of bOwnerNoSee.
---@param bNewOwnerNoSee boolean
function UPrimitiveComponent:SetOwnerNoSee(bNewOwnerNoSee) end

---Changes the value of bOnlyOwnerSee.
---@param bNewOnlyOwnerSee boolean
function UPrimitiveComponent:SetOnlyOwnerSee(bNewOnlyOwnerSee) end

---Changes the value of DrawOutline.
---@param bNewDrawOutline boolean
function UPrimitiveComponent:SetDrawIdeaOutline(bNewDrawOutline) end

---Changes whether use the new outline method which uses normal vectors in vertex colors
---@param bNewUseNormalInVertexColor boolean
function UPrimitiveComponent:SetIdeaOutlineUseNormalInVertexColor(bNewUseNormalInVertexColor) end

---Changes whether use the new outline pass.
---@param bNew boolean
function UPrimitiveComponent:SetIdeaOutlineNew(bNew) end

---@param bUseOutlineMesh boolean
function UPrimitiveComponent:SetIdeaOutlineUseOutlineMesh(bUseOutlineMesh) end

---Changes whether use the occlusion highlight
---@param bOcclusionHighlight boolean
function UPrimitiveComponent:SetIdeaOutlineOcclusionHighlight(bOcclusionHighlight) end

---Changes whether to occlude other primitives' highlight. if this is already occlude highlight, it won't write depth and this flag make no use.
---@param bDisable boolean
function UPrimitiveComponent:SetDisableWriteDepthForOcclusionHighlight(bDisable) end

---Override outline settings to enable both outline and occlusion
---@param bOutlineAndOcclusion boolean
function UPrimitiveComponent:SetIdeaOverrideOutlineAndOcclusion(bOutlineAndOcclusion) end

---@param bHighlight boolean
function UPrimitiveComponent:SetDrawIdeaOutlineInHighlightPass(bHighlight) end

---@param bUseBackFace boolean
function UPrimitiveComponent:SetIdeaOutlineNewUseBackFace(bUseBackFace) end

---@param bOverride boolean
---@param InOutlineColor FLinearColor
function UPrimitiveComponent:OverrideIdeaOutlineColor(bOverride, InOutlineColor) end

---@param bOverride boolean
---@param InThickness number
function UPrimitiveComponent:OverrideIdeaOutlineThickness(bOverride, InThickness) end

---@param InOcclusionColor FLinearColor
function UPrimitiveComponent:SetIdeaOutlineOcclusionColor(InOcclusionColor) end

---@param bDrawOutline boolean
function UPrimitiveComponent:SetIdeaOutline_UGC(bDrawOutline) end

---@param bOcclusionHighlight boolean
function UPrimitiveComponent:SetIdeaOutlineOcclusionHighlight_UGC(bOcclusionHighlight) end

---@param StaticMesh UStaticMesh
function UPrimitiveComponent:SetOutlineMesh(StaticMesh) end

---Turn on/off the highlight rendering for this primitive
---@param bNewDrawHighlight boolean
function UPrimitiveComponent:SetDrawHighlight(bNewDrawHighlight) end

---@param bInCanBeOccluded boolean
function UPrimitiveComponent:SetHighlightCanBeOccluded(bInCanBeOccluded) end

---Override the highlight color for this primitive
---@param bOverride boolean
---@param InHighlightColor FLinearColor
function UPrimitiveComponent:OverrideHighlightColor(bOverride, InHighlightColor) end

---Changes the value of DrawDyeing.
---@param bNewDrawOutline boolean
function UPrimitiveComponent:SetDrawDyeing(bNewDrawOutline) end

---Changes the value of DrawDyeingMode.
---@param InDrawDyeingMode EDrawDyeingMode
function UPrimitiveComponent:SetDrawDyeingMode(InDrawDyeingMode) end

---@param InColor FLinearColor
function UPrimitiveComponent:SetVisibleDyeingColor(InColor) end

---@param InColor FLinearColor
function UPrimitiveComponent:SetOccludedDyeingColor(InColor) end

---Changes the value of bReveiceShadow.(by jinglei)
---@param NewReveiceShadow boolean
function UPrimitiveComponent:SetReveiceShadow(NewReveiceShadow) end

---Changes the value of CastShadow.
---@param NewCastShadow boolean
function UPrimitiveComponent:SetCastShadow(NewCastShadow) end

---Changes the value of CastInsetShadow.
function UPrimitiveComponent:SetCastInsetShadow() end

---Changes the value of LightAttachmentsAsGroup.
function UPrimitiveComponent:SetLightAttachmentsAsGroup() end

---Set cast photon shadow.
---@param bNewCastPhotonShadow boolean
function UPrimitiveComponent:SetCastPhotonShadow(bNewCastPhotonShadow) end

---Changes the value of bSingleSampleShadowFromStationaryLights.
---@param bNewSingleSampleShadowFromStationaryLights boolean
function UPrimitiveComponent:SetSingleSampleShadowFromStationaryLights(bNewSingleSampleShadowFromStationaryLights) end

---Changes the value of TranslucentSortPriority.
---@param NewTranslucentSortPriority number
function UPrimitiveComponent:SetTranslucentSortPriority(NewTranslucentSortPriority) end

---Changes the value of bReceivesDecals.
---@param bNewReceivesDecals boolean
function UPrimitiveComponent:SetReceivesDecals(bNewReceivesDecals) end

---Controls what kind of collision is enabled for this body
---@param NewType ECollisionEnabled
function UPrimitiveComponent:SetCollisionEnabled(NewType) end

---Set Collision Profile Name This function is called by constructors when they set ProfileName This will change current CollisionProfileName to be this, and overwrite Collision Setting
---@param InCollisionProfileName string
function UPrimitiveComponent:SetCollisionProfileName(InCollisionProfileName) end

---Get the collision profile name
---@return string
function UPrimitiveComponent:GetCollisionProfileName() end

---Changes the collision channel that this object uses when it moves
---@param Channel ECollisionChannel
function UPrimitiveComponent:SetCollisionObjectType(Channel) end

---Perform a line trace against a single component
---@param TraceStart FVector
---@param TraceEnd FVector
---@param bTraceComplex boolean
---@param bShowTrace boolean
---@param HitLocation FVector
---@param HitNormal FVector
---@param BoneName string
---@param OutHit FHitResult
---@return boolean
function UPrimitiveComponent:K2_LineTraceComponent(TraceStart, TraceEnd, bTraceComplex, bShowTrace, HitLocation, HitNormal, BoneName, OutHit) end

---Sets the bRenderCustomDepth property and marks the render state dirty.
---@param bValue boolean
function UPrimitiveComponent:SetRenderCustomDepth(bValue) end

---Sets the CustomDepth stencil value (0 - 255) and marks the render state dirty.
---@param Value number
function UPrimitiveComponent:SetCustomDepthStencilValue(Value) end

---Sets the CustomDepth stencil write mask and marks the render state dirty.
---@param WriteMaskBit ERendererStencilMask
function UPrimitiveComponent:SetCustomDepthStencilWriteMask(WriteMaskBit) end

---Sets bRenderInMainPass property and marks the render state dirty.
---@param bValue boolean
---@param LockKey string
function UPrimitiveComponent:SetRenderInMainPass(bValue, LockKey) end

---Sets bRenderInMainPass property and marks the render state dirty.
---@return boolean
function UPrimitiveComponent:IsRenderInMainPass() end

---Sets bRenderInMono property and marks the render state dirty.
---@param bValue boolean
function UPrimitiveComponent:SetRenderInMono(bValue) end

---set bForceIBL
---@param InForceIBL boolean
function UPrimitiveComponent:SetForceIBL(InForceIBL) end

---@param InForceDisableIBL boolean
function UPrimitiveComponent:SetForceDisableIBL(InForceDisableIBL) end

---set bForceDynamic
---@param InForceDynamic boolean
function UPrimitiveComponent:SetForceDynamic(InForceDynamic) end

---@param InIsActiveScope boolean
function UPrimitiveComponent:SetActiveScope(InIsActiveScope) end

---@param InLocalTranslation FVector
---@param InLocalRotation FRotator
---@param InScopeRadius number
function UPrimitiveComponent:SetScopeInfoLocal(InLocalTranslation, InLocalRotation, InScopeRadius) end

---@param InIsFppLayer boolean
function UPrimitiveComponent:SetFppLayer(InIsFppLayer) end

---@param InIsTppLayer boolean
function UPrimitiveComponent:SetTppLayer(InIsTppLayer) end

---Changes the value of Two Pass Translucent.
---@param bNewTwoPassTranslucent boolean
function UPrimitiveComponent:SetTwoPassTranslucent(bNewTwoPassTranslucent) end

---Changes the value of Translucent Depth Write.
---@param bNewTranslucentDepthWrite boolean
function UPrimitiveComponent:SetTranslucentDepthWrite(bNewTranslucentDepthWrite) end

---Changes the value of Translucent Depth Write In Two Pass.
---@param bNewTranslucentDepthWriteInTwoPass boolean
function UPrimitiveComponent:SetTranslucentDepthWriteInTwoPass(bNewTranslucentDepthWriteInTwoPass) end

---@return number
function UPrimitiveComponent:GetNumMaterials() end

---Returns the distance and closest point to the collision surface. Component must have simple collision to be queried for closest point. If returns < 0.f, this primitive does not have collsion
---@param Point FVector
---@param OutPointOnBody FVector
---@param BoneName string
---@return number
function UPrimitiveComponent:GetClosestPointOnCollision(Point, OutPointOnBody, BoneName) end

---Returns the form of collision for this component
---@return ECollisionEnabled
function UPrimitiveComponent:GetCollisionEnabled() end

---Utility to see if there is any form of collision (query or physics) enabled on this component.
---@return boolean
function UPrimitiveComponent:K2_IsCollisionEnabled() end

---Utility to see if there is any query collision enabled on this component.
---@return boolean
function UPrimitiveComponent:K2_IsQueryCollisionEnabled() end

---Utility to see if there is any physics collision enabled on this component.
---@return boolean
function UPrimitiveComponent:K2_IsPhysicsCollisionEnabled() end

---Gets the response type given a specific channel
---@param Channel ECollisionChannel
---@return ECollisionResponse
function UPrimitiveComponent:GetCollisionResponseToChannel(Channel) end

---Gets the collision object type
---@return ECollisionChannel
function UPrimitiveComponent:GetCollisionObjectType() end

---Set the angular velocity of all bodies in this component.
---@param NewAngVel FVector
---@param bAddToCurrent boolean
function UPrimitiveComponent:SetAllPhysicsAngularVelocityInRadians(NewAngVel, bAddToCurrent) end

---Ensure simulation is running for all bodies in this component.
function UPrimitiveComponent:WakeAllRigidBodies() end

---Enables/disables whether this component is affected by gravity. This applies only to components with bSimulatePhysics set to true.
---@param bGravityEnabled boolean
function UPrimitiveComponent:SetEnableGravity(bGravityEnabled) end

---Returns whether this component is affected by gravity. Returns always false if the component is not simulated.
---@return boolean
function UPrimitiveComponent:IsGravityEnabled() end

---Sets the linear damping of this component.
---@param InDamping number
function UPrimitiveComponent:SetLinearDamping(InDamping) end

---Returns the linear damping of this component.
---@return number
function UPrimitiveComponent:GetLinearDamping() end

---Sets the angular damping of this component.
---@param InDamping number
function UPrimitiveComponent:SetAngularDamping(InDamping) end

---Returns the angular damping of this component.
---@return number
function UPrimitiveComponent:GetAngularDamping() end

---Change the mass scale used to calculate the mass of a single physics body
---@param BoneName string
---@param InMassScale number
function UPrimitiveComponent:SetMassScale(BoneName, InMassScale) end

---Returns the mass scale used to calculate the mass of a single physics body
---@param BoneName string
---@return number
function UPrimitiveComponent:GetMassScale(BoneName) end

---Change the mass scale used fo all bodies in this component
---@param InMassScale number
function UPrimitiveComponent:SetAllMassScale(InMassScale) end

---Override the mass (in Kg) of a single physics body. Note that in the case where multiple bodies are attached together, the override mass will be set for the entire group. Set the Override Mass to false if you want to reset the body's mass to the auto-calculated physx mass.
---@param BoneName string
---@param MassInKg number
---@param bOverrideMass boolean
function UPrimitiveComponent:SetMassOverrideInKg(BoneName, MassInKg, bOverrideMass) end

---Returns the mass of this component in kg.
---@return number
function UPrimitiveComponent:GetMass() end

---Returns the inertia tensor of this component in kg cm^2. The inertia tensor is in local component space.
---@param BoneName string
---@return FVector
function UPrimitiveComponent:GetInertiaTensor(BoneName) end

---Scales the given vector by the world space moment of inertia. Useful for computing the torque needed to rotate an object.
---@param InputVector FVector
---@param BoneName string
---@return FVector
function UPrimitiveComponent:ScaleByMomentOfInertia(InputVector, BoneName) end

---Returns if any body in this component is currently awake and simulating.
---@return boolean
function UPrimitiveComponent:IsAnyRigidBodyAwake() end

---Changes a member of the ResponseToChannels container for this PrimitiveComponent.
---@param Channel ECollisionChannel
---@param NewResponse ECollisionResponse
function UPrimitiveComponent:SetCollisionResponseToChannel(Channel, NewResponse) end

---Changes all ResponseToChannels container for this PrimitiveComponent. to be NewResponse
---@param NewResponse ECollisionResponse
function UPrimitiveComponent:SetCollisionResponseToAllChannels(NewResponse) end

---Changes the value of CullDistance.
---@param NewCullDistance number
---@param EnableIncrease boolean
function UPrimitiveComponent:SetCullDistance(NewCullDistance, EnableIncrease) end

---Return true if the given Pawn can step up onto this component. This controls whether they can try to step up on it when they bump in to it, not whether they can walk on it after landing on it.
---@param Pawn APawn
---@return boolean
function UPrimitiveComponent:CanCharacterStepUp(Pawn) end

---@return boolean
function UPrimitiveComponent:IsComponentRenderQualityEnough() end

---@return boolean
function UPrimitiveComponent:IsComponentDeviceQualityEnough() end
