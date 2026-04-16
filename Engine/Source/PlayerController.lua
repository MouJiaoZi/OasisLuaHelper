---@meta

---@class EDynamicForceFeedbackAction
---@field Start number
---@field Update number
---@field Stop number
EDynamicForceFeedbackAction = {}


---@class FLevelVisibilityInfo
---@field Visible boolean
---@field PackageName string
FLevelVisibilityInfo = {}


---@class FLevelIndexVisibilityInfo
---@field Visible boolean
---@field MappingIndex number
FLevelIndexVisibilityInfo = {}


---@class FActionCluster
---@field ClusterID number
---@field ClusterActionNames ULuaArrayHelper<string>
FActionCluster = {}


---Default delegate that provides an implementation for those that don't have special needs other than a toggle
---@class FCanUnpause : ULuaSingleDelegate
FCanUnpause = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCanUnpause:Bind(Callback, Obj) end

---执行委托
function FCanUnpause:Execute() end


---delegate used to override default viewport audio listener position calculated from camera
---@class FGetAudioListenerPos : ULuaSingleDelegate
FGetAudioListenerPos = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FVector, Param2: FVector, Param3: FVector) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetAudioListenerPos:Bind(Callback, Obj) end

---执行委托
---@param Param1 FVector
---@param Param2 FVector
---@param Param3 FVector
function FGetAudioListenerPos:Execute(Param1, Param2, Param3) end


---delegate used to broadcast which input action has been executed
---@class FExecutedInputActionNameNotifyDelegate : ULuaMulticastDelegate
FExecutedInputActionNameNotifyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FExecutedInputActionNameNotifyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 string
function FExecutedInputActionNameNotifyDelegate:Broadcast(Param1) end


---PlayerControllers are used by human players to control Pawns. ControlRotation (accessed via GetControlRotation()), determines the aiming orientation of the controlled Pawn. In networked games, PlayerControllers exist on the server for every player-controlled pawn, and also on the controlling client's machine. They do NOT exist on a client's machine for pawns controlled by remote players elsewhere on the network.
---@class APlayerController: AController
---@field PlayerCameraManagerClass APlayerCameraManager @PlayerCamera class should be set for each game, otherwise Engine.PlayerCameraManager is used
---@field bAutoManageActiveCameraTarget boolean @True to allow this player controller to manage the camera target for you, typically by using the possessed pawn as the camera target. Set to false if you want to manually control the camera target.
---@field SmoothTargetViewRotationSpeed number @Interp speed for blending remote view rotation for smoother client updates
---@field HiddenActors ULuaArrayHelper<AActor> @The actors which the camera shouldn't see - e.g. used to hide actors which the camera penetrates
---@field HiddenPrimitiveComponents ULuaArrayHelper<UPrimitiveComponent> @Explicit components the camera shouldn't see (helpful for external systems to hide a component from a single player)
---@field LastSpectatorStateSynchTime number @Used to make sure the client is kept synchronized when in a spectator state
---@field LastSpectatorSyncLocation FVector @Last location synced on the server for a spectator.
---@field LastSpectatorSyncRotation FRotator @Last rotation synced on the server for a spectator.
---@field ClientCap number @Cap set by server on bandwidth from client to server in bytes/sec (only has impact if >=2600)
---@field CheatClass UCheatManager @Class of my CheatManager.  The Cheat Manager is not created in shipping builds
---@field CheatManagerExtras ULuaArrayHelper<UCheatManager> @Object that manages "cheat" commands.  Not instantiated in shipping builds.
---@field CheatClassExtras ULuaArrayHelper<UCheatManager> @Class of my CheatManager.  The Cheat Manager is not created in shipping builds
---@field ActiveForceFeedbackEffects ULuaArrayHelper<FActiveForceFeedbackEffect>
---@field bPlayerIsWaiting number @True if PlayerController is currently waiting for the match to start or to respawn. Only valid in Spectating state.
---@field NetPlayerIndex number @index identifying players using the same base connection (splitscreen clients) Used by netcode to match replicated PlayerControllers to the correct splitscreen viewport and child connection replicated via special internal code, not through normal variable replication
---@field RotationInput FRotator
---@field InputYawScale number @Yaw input speed scaling
---@field InputPitchScale number @Pitch input speed scaling
---@field InputRollScale number @Roll input speed scaling
---@field bShowMouseCursor number @Whether the mouse cursor should be displayed.
---@field bEnableClickEvents number @Whether actor/component click events should be generated.
---@field bEnableTouchEvents number @Whether actor/component touch events should be generated.
---@field bEnableMouseOverEvents number @Whether actor/component mouse over events should be generated.
---@field bEnableTouchOverEvents number @Whether actor/component touch over events should be generated.
---@field bForceFeedbackEnabled number
---@field ForceFeedbackScale number @Scale applied to force feedback values
---@field ClickEventKeys ULuaArrayHelper<FKey>
---@field DefaultMouseCursor EMouseCursor
---@field CurrentMouseCursor EMouseCursor
---@field DefaultClickTraceChannel ECollisionChannel @Default trace channel used for determining what world object was clicked on.
---@field CurrentClickTraceChannel ECollisionChannel @Trace channel currently being used for determining what world object was clicked on.
---@field HitResultTraceDistance number
---@field bPauseUpdateStreamingState number
---@field bActiveReplayViewer number @true means this controller is active now as a replay viewer
---@field bEnableReplayRecord number @true means this controller is enable to record for replay
---@field IsBlockingInput boolean
---@field InputWhiteListWhenBlocked ULuaSetHelper<string>
---@field InputBlackList ULuaSetHelper<string>
---@field PriorityActionSet ULuaSetHelper<string>
---@field PriorityActionClusters ULuaArrayHelper<FActionCluster>
---@field ActionExecuteState number
---@field bShouldPerformFullTickWhenPaused number @Whether we fully tick when the game is paused, if our tick function is allowed to do so. If false, we do a minimal update during the tick.
---@field SpawnLocation FVector @The location used internally when there is no pawn or spectator, to know where to spawn the spectator or focus the camera on death.
---@field bIsActorChannelOpen boolean
---@field bIsDemoViewController boolean
---@field bIsLocalPlayerController boolean @Set during SpawnActor once and never again to indicate the intent of this controller instance (SERVER ONLY)
---@field SeamlessTravelCount number @Counter for this players seamless travels (used along with the below value, to restrict ServerNotifyLoadedWorld)
---@field LastCompletedSeamlessTravelCount number @The value of SeamlessTravelCount, upon the last call to GameModeBase::HandleSeamlessTravelPlayer; used to detect seamless travel
---@field bNeedResetCameraOnPossess boolean @Restart Player by plane do not reset camera!  Engine Modification by czcheng, 2021.6.8
---@field bNeedResetControlRotator boolean
---@field LevelVisibilityInfoList ULuaArrayHelper<FLevelVisibilityInfo>
---@field bClientRetryClientRestartFailedProcess boolean
local APlayerController = {}

---Indicate that the Spectator is waiting to join/respawn.
---@param bWaiting boolean
function APlayerController:ServerSetSpectatorWaiting(bWaiting) end

---Indicate that the Spectator is waiting to join/respawn.
---@param bWaiting boolean
function APlayerController:ClientSetSpectatorWaiting(bWaiting) end

---Enables cheats within the game
function APlayerController:EnableCheats() end

---Set the field of view to NewFOV
---@param NewFOV number
function APlayerController:FOV(NewFOV) end

---Restarts the current level
function APlayerController:RestartLevel() end

---Causes the client to travel to the given URL
---@param URL string
function APlayerController:LocalTravel(URL) end

---Return the client to the main menu gracefully
---@param ReturnReason string
function APlayerController:ClientReturnToMainMenu(ReturnReason) end

---Development RPC for testing object reference replication
---@param Object UObject
function APlayerController:ClientRepObjRef(Object) end

---Command to try to pause the game.
function APlayerController:Pause() end

---@param bPaused boolean
function APlayerController:SetPauseByBlueprint(bPaused) end

---Trys to set the player's name to the given name.
---@param S string
function APlayerController:SetName(S) end

---SwitchLevel to the given MapURL.
---@param URL string
function APlayerController:SwitchLevel(URL) end

---@param TraceChannel ECollisionChannel
---@param bTraceComplex boolean
---@param HitResult FHitResult
---@return boolean
function APlayerController:GetHitResultUnderCursor(TraceChannel, bTraceComplex, HitResult) end

---@param TraceChannel ETraceTypeQuery
---@param bTraceComplex boolean
---@param HitResult FHitResult
---@return boolean
function APlayerController:GetHitResultUnderCursorByChannel(TraceChannel, bTraceComplex, HitResult) end

---@param ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@param bTraceComplex boolean
---@param HitResult FHitResult
---@return boolean
function APlayerController:GetHitResultUnderCursorForObjects(ObjectTypes, bTraceComplex, HitResult) end

---@param FingerIndex ETouchIndex
---@param TraceChannel ECollisionChannel
---@param bTraceComplex boolean
---@param HitResult FHitResult
---@return boolean
function APlayerController:GetHitResultUnderFinger(FingerIndex, TraceChannel, bTraceComplex, HitResult) end

---@param FingerIndex ETouchIndex
---@param TraceChannel ETraceTypeQuery
---@param bTraceComplex boolean
---@param HitResult FHitResult
---@return boolean
function APlayerController:GetHitResultUnderFingerByChannel(FingerIndex, TraceChannel, bTraceComplex, HitResult) end

---@param FingerIndex ETouchIndex
---@param ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@param bTraceComplex boolean
---@param HitResult FHitResult
---@return boolean
function APlayerController:GetHitResultUnderFingerForObjects(FingerIndex, ObjectTypes, bTraceComplex, HitResult) end

---Convert current mouse 2D position to World Space 3D position and direction. Returns false if unable to determine value. *
---@param WorldLocation FVector
---@param WorldDirection FVector
---@return boolean
function APlayerController:DeprojectMousePositionToWorld(WorldLocation, WorldDirection) end

---Convert 2D screen position to World Space 3D position and direction. Returns false if unable to determine value. *
---@param ScreenX number
---@param ScreenY number
---@param WorldLocation FVector
---@param WorldDirection FVector
---@return boolean
function APlayerController:DeprojectScreenPositionToWorld(ScreenX, ScreenY, WorldLocation, WorldDirection) end

---Convert a World Space 3D position into a 2D Screen Space position.
---@param WorldLocation FVector
---@param ScreenLocation FVector2D
---@param bPlayerViewportRelative boolean
---@return boolean
function APlayerController:ProjectWorldLocationToScreen(WorldLocation, ScreenLocation, bPlayerViewportRelative) end

---Positions the mouse cursor in screen space, in pixels.
---@param X number
---@param Y number
function APlayerController:SetMouseLocation(X, Y) end

---Fire the player's currently selected weapon with the optional fire mode.
---@param FireModeNum number
function APlayerController:StartFire(FireModeNum) end

---Tell the client to enable or disable voice chat (not muting)
---@param bEnable boolean
function APlayerController:ClientEnableNetworkVoice(bEnable) end

---Toggle voice chat on and off
---@param bInSpeaking boolean
function APlayerController:ToggleSpeaking(bInSpeaking) end

---Tells the client that the server has all the information it needs and that it is ok to start sending voice packets. The server will already send voice packets when this function is called, since it is set server side and then forwarded NOTE: This is done as an RPC instead of variable replication because ordering matters
function APlayerController:ClientVoiceHandshakeComplete() end

---Tell the server to mute a player for this controller
---@param PlayerId FUniqueNetIdRepl
function APlayerController:ServerMutePlayer(PlayerId) end

---Tell the server to unmute a player for this controller
---@param PlayerId FUniqueNetIdRepl
function APlayerController:ServerUnmutePlayer(PlayerId) end

---Tell the client to mute a player for this controller
---@param PlayerId FUniqueNetIdRepl
function APlayerController:ClientMutePlayer(PlayerId) end

---Tell the client to unmute a player for this controller
---@param PlayerId FUniqueNetIdRepl
function APlayerController:ClientUnmutePlayer(PlayerId) end

---Console control commands, useful when remote debugging so you can't touch the console the normal way
---@param Key FKey
function APlayerController:ConsoleKey(Key) end

---Sends a command to the console to execute if not shipping version
---@param Command string
function APlayerController:SendToConsole(Command) end

---Adds a location to the texture streaming system for the specified duration.
---@param InLoc FVector
---@param Duration number
---@param bOverrideLocation boolean
function APlayerController:ClientAddTextureStreamingLoc(InLoc, Duration, bOverrideLocation) end

---Tells client to cancel any pending map change.
function APlayerController:ClientCancelPendingMapChange() end

---Set CurrentNetSpeed to the lower of its current value and Cap.
---@param Cap number
function APlayerController:ClientCapBandwidth(Cap) end

---Actually performs the level transition prepared by PrepareMapChange().
function APlayerController:ClientCommitMapChange() end

---Tells the client to block until all pending level streaming actions are complete happens at the end of the tick primarily used to force update the client ASAP at join time
function APlayerController:ClientFlushLevelStreaming() end

---Forces GC at the end of the tick on the client
function APlayerController:ClientForceGarbageCollection() end

---Replicated function called by GameHasEnded().
---@param EndGameFocus AActor
---@param bIsWinner boolean
function APlayerController:ClientGameEnded(EndGameFocus, bIsWinner) end

---Server uses this to force client into NewState .
---@param NewState string
function APlayerController:ClientGotoState(NewState) end

---calls IgnoreLookInput on client
---@param bIgnore boolean
function APlayerController:ClientIgnoreLookInput(bIgnore) end

---calls IgnoreMoveInput on client
---@param bIgnore boolean
function APlayerController:ClientIgnoreMoveInput(bIgnore) end

---Outputs a message to HUD
---@param S string
---@param Type string
---@param MsgLifeTime number
function APlayerController:ClientMessage(S, Type, MsgLifeTime) end

---Play the indicated CameraAnim on this camera.
---@param AnimToPlay UCameraAnim
---@param Scale number
---@param Rate number
---@param BlendInTime number
---@param BlendOutTime number
---@param bLoop boolean
---@param bRandomStartTime boolean
---@param Space ECameraAnimPlaySpace
---@param CustomPlaySpace FRotator
function APlayerController:ClientPlayCameraAnim(AnimToPlay, Scale, Rate, BlendInTime, BlendOutTime, bLoop, bRandomStartTime, Space, CustomPlaySpace) end

---Play Camera Shake
---@param Shake UCameraShake
---@param Scale number
---@param PlaySpace ECameraAnimPlaySpace
---@param UserPlaySpaceRot FRotator
function APlayerController:ClientPlayCameraShake(Shake, Scale, PlaySpace, UserPlaySpaceRot) end

---@param Shake UCameraShake
---@param WorldLocation FVector
---@param Scale number
---@param PlaySpace ECameraAnimPlaySpace
---@param UserPlaySpaceRot FRotator
function APlayerController:ClientPlayCameraShakeWithWorldLocation(Shake, WorldLocation, Scale, PlaySpace, UserPlaySpaceRot) end

---Play sound client-side (so only the client will hear it)
---@param Sound USoundBase
---@param VolumeMultiplier number
---@param PitchMultiplier number
function APlayerController:ClientPlaySound(Sound, VolumeMultiplier, PitchMultiplier) end

---Play sound client-side at the specified location
---@param Sound USoundBase
---@param Location FVector
---@param VolumeMultiplier number
---@param PitchMultiplier number
function APlayerController:ClientPlaySoundAtLocation(Sound, Location, VolumeMultiplier, PitchMultiplier) end

---Asynchronously loads the given level in preparation for a streaming map transition. the server sends one function per level name since dynamic arrays can't be replicated
---@param LevelName string
---@param bFirst boolean
---@param bLast boolean
function APlayerController:ClientPrepareMapChange(LevelName, bFirst, bLast) end

---Forces the streaming system to disregard the normal logic for the specified duration and instead always load all mip-levels for all textures used by the specified actor.
---@param ForcedActor AActor
---@param ForceDuration number
---@param bEnableStreaming boolean
---@param CinematicTextureGroups number
function APlayerController:ClientPrestreamTextures(ForcedActor, ForceDuration, bEnableStreaming, CinematicTextureGroups) end

---Tell client to reset the PlayerController
function APlayerController:ClientReset() end

---Tell client to restart the level
---@param NewPawn APawn
function APlayerController:ClientRestart(NewPawn) end

---Tells the client to block until all pending level streaming actions are complete. Happens at the end of the tick primarily used to force update the client ASAP at join time.
function APlayerController:ClientSetBlockOnAsyncLoading() end

---Tell client to fade camera
---@param bEnableFading boolean
---@param FadeColor FColor
---@param FadeAlpha FVector2D
---@param FadeTime number
---@param bFadeAudio boolean
function APlayerController:ClientSetCameraFade(bEnableFading, FadeColor, FadeAlpha, FadeTime, bFadeAudio) end

---Replicated function to set camera style on client
---@param NewCamMode string
function APlayerController:ClientSetCameraMode(NewCamMode) end

---Called by the server to synchronize cinematic transitions with the client
---@param bInCinematicMode boolean
---@param bAffectsMovement boolean
---@param bAffectsTurning boolean
---@param bAffectsHUD boolean
function APlayerController:ClientSetCinematicMode(bInCinematicMode, bAffectsMovement, bAffectsTurning, bAffectsHUD) end

---Forces the streaming system to disregard the normal logic for the specified duration and instead always load all mip-levels for all textures used by the specified material.
---@param Material UMaterialInterface
---@param ForceDuration number
---@param CinematicTextureGroups number
function APlayerController:ClientSetForceMipLevelsToBeResident(Material, ForceDuration, CinematicTextureGroups) end

---Set the client's class of HUD and spawns a new instance of it. If there was already a HUD active, it is destroyed.
---@param NewHUDClass AHUD
function APlayerController:ClientSetHUD(NewHUDClass) end

---Helper to get the size of the HUD canvas for this player controller.  Returns 0 if there is no HUD
---@param SizeX number
---@param SizeY number
function APlayerController:GetViewportSize(SizeX, SizeY) end

---Sets the Widget for the Mouse Cursor to display
---@param Cursor EMouseCursor
---@param CursorWidget UUserWidget
function APlayerController:SetMouseCursorWidget(Cursor, CursorWidget) end

---Set the view target
---@param A AActor
---@param TransitionParams FViewTargetTransitionParams
function APlayerController:ClientSetViewTarget(A, TransitionParams) end

---Spawn a camera lens effect (e.g. blood).
---@param LensEffectEmitterClass AEmitterCameraLensEffectBase
function APlayerController:ClientSpawnCameraLensEffect(LensEffectEmitterClass) end

---Removes all Camera Lens Effects.
function APlayerController:ClientClearCameraLensEffects() end

---Stop camera animation on client.
---@param AnimToStop UCameraAnim
function APlayerController:ClientStopCameraAnim(AnimToStop) end

---Stop camera shake on client.
---@param Shake UCameraShake
---@param bImmediately boolean
function APlayerController:ClientStopCameraShake(Shake, bImmediately) end

---Play a force feedback pattern on the player's controller
---@param ForceFeedbackEffect UForceFeedbackEffect
---@param bLooping boolean
---@param bIgnoreTimeDilation boolean
---@param Tag string
function APlayerController:ClientPlayForceFeedback(ForceFeedbackEffect, bLooping, bIgnoreTimeDilation, Tag) end

---Stops a playing force feedback pattern
---@param ForceFeedbackEffect UForceFeedbackEffect
---@param Tag string
function APlayerController:ClientStopForceFeedback(ForceFeedbackEffect, Tag) end

---Latent action that controls the playing of force feedback Begins playing when Start is called.  Calling Update or Stop if the feedback is not active will have no effect. Completed will execute when Stop is called or the duration ends. When Update is called the Intensity, Duration, and affect values will be updated with the current inputs
---@param Intensity number
---@param Duration number
---@param bAffectsLeftLarge boolean
---@param bAffectsLeftSmall boolean
---@param bAffectsRightLarge boolean
---@param bAffectsRightSmall boolean
---@param Action EDynamicForceFeedbackAction
---@param LatentInfo FLatentActionInfo
function APlayerController:PlayDynamicForceFeedback(Intensity, Duration, bAffectsLeftLarge, bAffectsLeftSmall, bAffectsRightLarge, bAffectsRightSmall, Action, LatentInfo) end

---Play a haptic feedback curve on the player's controller
---@param HapticEffect UHapticFeedbackEffect_Base
---@param Hand EControllerHand
---@param Scale number
---@param bLoop boolean
function APlayerController:PlayHapticEffect(HapticEffect, Hand, Scale, bLoop) end

---Stops a playing haptic feedback curve
---@param Hand EControllerHand
function APlayerController:StopHapticEffect(Hand) end

---Sets the value of the haptics for the specified hand directly, using frequency and amplitude.  NOTE:  If a curve is already playing for this hand, it will be cancelled in favour of the specified values.
---@param Frequency number
---@param Amplitude number
---@param Hand EControllerHand
function APlayerController:SetHapticsByValue(Frequency, Amplitude, Hand) end

---Sets the light color of the player's controller
---@param Color FColor
function APlayerController:SetControllerLightColor(Color) end

---Travel to a different map or IP address. Calls the PreClientTravel event before doing anything. NOTE: This is implemented as a locally executed wrapper for ClientTravelInternal, to avoid API compatability breakage for the bSeamlesss parameter, this value must be TRAVEL_Relative. so it is only needed for clients
---@param URL string
---@param TravelType ETravelType
---@param bSeamless boolean
---@param MapPackageGuid FGuid
function APlayerController:ClientTravel(URL, TravelType, bSeamless, MapPackageGuid) end

---Internal clientside implementation of ClientTravel - use ClientTravel to call this for the bSeamlesss parameter, this value must be TRAVEL_Relative. so it is only needed for clients
---@param URL string
---@param TravelType ETravelType
---@param bSeamless boolean
---@param MapPackageGuid FGuid
function APlayerController:ClientTravelInternal(URL, TravelType, bSeamless, MapPackageGuid) end

---Replicated Update streaming status
---@param PackageName string
---@param bNewShouldBeLoaded boolean
---@param bNewShouldBeVisible boolean
---@param bNewShouldBlockOnLoad boolean
---@param LODIndex number
function APlayerController:ClientUpdateLevelStreamingStatus(PackageName, bNewShouldBeLoaded, bNewShouldBeVisible, bNewShouldBlockOnLoad, LODIndex) end

---Notify client they were kicked from the server
---@param KickReason string
function APlayerController:ClientWasKicked(KickReason) end

---Notify client that the session is starting
function APlayerController:ClientStartOnlineSession() end

---Notify client that the session is about to start
function APlayerController:ClientEndOnlineSession() end

---Assign Pawn to player, but avoid calling ClientRestart if we have already accepted this pawn
---@param NewPawn APawn
function APlayerController:ClientRetryClientRestart(NewPawn) end

---send client localized message id
---@param Message ULocalMessage
---@param Switch number
---@param RelatedPlayerState_1 APlayerState
---@param RelatedPlayerState_2 APlayerState
---@param OptionalObject UObject
function APlayerController:ClientReceiveLocalizedMessage(Message, Switch, RelatedPlayerState_1, RelatedPlayerState_2, OptionalObject) end

---acknowledge possession of pawn
---@param P APawn
function APlayerController:ServerAcknowledgePossession(P) end

---change mode of camera
---@param NewMode string
function APlayerController:ServerCamera(NewMode) end

---Change name of server
---@param S string
function APlayerController:ServerChangeName(S) end

---Called to notify the server when the client has loaded a new world via seamless traveling
---@param WorldPackageName string
function APlayerController:ServerNotifyLoadedWorld(WorldPackageName) end

---@param InFactor number
function APlayerController:ServerNotifyStreamLevelDisFactor(InFactor) end

---Replicate pause request to the server
function APlayerController:ServerPause() end

---Attempts to restart this player, generally called from the client upon respawn request.
function APlayerController:ServerRestartPlayer() end

---When spectating, updates spectator location/rotation and pings the server to make sure spectating should continue.
---@param NewLoc FVector
---@param NewRot FRotator
function APlayerController:ServerSetSpectatorLocation(NewLoc, NewRot) end

---Tells the server to make sure the possessed pawn is in sync with the client.
function APlayerController:ServerCheckClientPossession() end

---Reliable version of ServerCheckClientPossession to be used when there is no likely danger of spamming the network.
function APlayerController:ServerCheckClientPossessionReliable() end

---Notifies the server that the client has ticked gameplay code, and should no longer get the extended "still loading" timeout grace period
function APlayerController:ServerShortTimeout() end

---If PlayerCamera.bUseClientSideCameraUpdates is set, client will replicate camera positions to the server.
---@param CamLoc FVector_NetQuantize
---@param CamPitchAndYaw number
function APlayerController:ServerUpdateCamera(CamLoc, CamPitchAndYaw) end

---@param CamLoc FVector_NetQuantize
function APlayerController:ServerUpdateCameraLocation(CamLoc) end

---Called when the client adds/removes a streamed level the server will only replicate references to Actors in visible levels so that it's impossible to send references to Actors the client has not initialized
---@param PackageName string
---@param bIsVisible boolean
function APlayerController:ServerUpdateLevelVisibility(PackageName, bIsVisible) end

---@param PackageNames ULuaArrayHelper<string>
---@param bIsVisible boolean
function APlayerController:ServerUpdateLevelListVisibility(PackageNames, bIsVisible) end

---@param PackageInfo ULuaArrayHelper<FLevelVisibilityInfo>
function APlayerController:ServerUpdateLevelListPackageVisibility(PackageInfo) end

---@param PackageInfo ULuaArrayHelper<FLevelIndexVisibilityInfo>
function APlayerController:ServerUpdateLevelIndexListPackageVisibility(PackageInfo) end

---Used by client to request server to confirm current viewtarget (server will respond with ClientSetViewTarget() ).
function APlayerController:ServerVerifyViewTarget() end

---Move camera to next player on round ended or spectating
function APlayerController:ServerViewNextPlayer() end

---Move camera to previous player on round ended or spectating
function APlayerController:ServerViewPrevPlayer() end

---Move camera to current user
---@param TransitionParams FViewTargetTransitionParams
function APlayerController:ServerViewSelf(TransitionParams) end

---@param SenderPlayerState APlayerState
---@param S string
---@param Type string
---@param MsgLifeTime number
function APlayerController:ClientTeamMessage(SenderPlayerState, S, Type, MsgLifeTime) end

---Used by UGameplayDebuggingControllerComponent to replicate messages for AI debugging in network games.
function APlayerController:ServerToggleAILogging() end

---Add Pitch (look up) input. This value is multiplied by InputPitchScale.
---@param Val number
function APlayerController:AddPitchInput(Val) end

---Add Yaw (turn) input. This value is multiplied by InputYawScale.
---@param Val number
function APlayerController:AddYawInput(Val) end

---Add Roll input. This value is multiplied by InputRollScale.
---@param Val number
function APlayerController:AddRollInput(Val) end

---Returns true if the given key/button is pressed on the input of the controller (if present)
---@param Key FKey
---@return boolean
function APlayerController:IsInputKeyDown(Key) end

---Returns true if the given key/button was up last frame and down this frame.
---@param Key FKey
---@return boolean
function APlayerController:WasInputKeyJustPressed(Key) end

---Returns true if the given key/button was down last frame and up this frame.
---@param Key FKey
---@return boolean
function APlayerController:WasInputKeyJustReleased(Key) end

---Returns the analog value for the given key/button.  If analog isn't supported, returns 1 for down and 0 for up.
---@param Key FKey
---@return number
function APlayerController:GetInputAnalogKeyState(Key) end

---Returns the vector value for the given key/button.
---@param Key FKey
---@return FVector
function APlayerController:GetInputVectorKeyState(Key) end

---Retrieves the X and Y screen coordinates of the specified touch key. Returns false if the touch index is not down
---@param FingerIndex ETouchIndex
---@param LocationX number
---@param LocationY number
---@param bIsCurrentlyPressed boolean
function APlayerController:GetInputTouchState(FingerIndex, LocationX, LocationY, bIsCurrentlyPressed) end

---Retrieves the current motion state of the player's input device
---@param Tilt FVector
---@param RotationRate FVector
---@param Gravity FVector
---@param Acceleration FVector
function APlayerController:GetInputMotionState(Tilt, RotationRate, Gravity, Acceleration) end

---Retrieves the X and Y screen coordinates of the mouse cursor. Returns false if there is no associated mouse device
---@param LocationX number
---@param LocationY number
---@return boolean
function APlayerController:GetMousePosition(LocationX, LocationY) end

---Returns how long the given key/button has been down.  Returns 0 if it's up or it just went down this frame.
---@param Key FKey
---@return number
function APlayerController:GetInputKeyTimeDown(Key) end

---Retrieves how far the mouse moved this frame.
---@param DeltaX number
---@param DeltaY number
function APlayerController:GetInputMouseDelta(DeltaX, DeltaY) end

---Retrieves the X and Y displacement of the given analog stick.
---@param WhichStick EControllerAnalogStick
---@param StickX number
---@param StickY number
function APlayerController:GetInputAnalogStickState(WhichStick, StickX, StickY) end

---Activates a new touch interface for this player controller
---@param NewTouchInterface UTouchInterface
function APlayerController:ActivateTouchInterface(NewTouchInterface) end

---Set the virtual joystick visibility.
---@param bVisible boolean
function APlayerController:SetVirtualJoystickVisibility(bVisible) end

---Fade in the virtual joystick.
---@param FadeDuration number
function APlayerController:FadeInVirtualJoystick(FadeDuration) end

---Fade out the virtual joystick.
---@param FadeDuration number
function APlayerController:FadeOutVirtualJoystick(FadeDuration) end

---Set the virtual joystick visibility.
function APlayerController:InitVirtualJoystickBySetting() end

---获取Viewport的缓存几何缩放
---@return number
function APlayerController:GetViewportCacheGeometryScale() end

---Change Camera mode
---@param NewMode string
function APlayerController:Camera(NewMode) end

---Set the view target blending with variable control
---@param NewViewTarget AActor
---@param BlendTime number
---@param BlendFunc EViewTargetBlendFunction
---@param BlendExp number
---@param bLockOutgoing boolean
function APlayerController:SetViewTargetWithBlend(NewViewTarget, BlendTime, BlendFunc, BlendExp, bLockOutgoing) end

function APlayerController:FlushPressedKeys() end

function APlayerController:FlushPressedKeysImmediate() end

function APlayerController:FlushPressedMouseKeys() end

---Used to override the default positioning of the audio listener
---@param AttachToComponent USceneComponent
---@param Location FVector
---@param Rotation FRotator
function APlayerController:SetAudioListenerOverride(AttachToComponent, Location, Rotation) end

---Clear any overrides that have been applied to audio listener
function APlayerController:ClearAudioListenerOverride() end

function APlayerController:ConsumeResidualNonAxisInput() end

---Server/SP only function for changing whether the player is in cinematic mode.  Updates values of various state variables, then replicates the call to the client to sync the current cinematic mode.
---@param bInCinematicMode boolean
---@param bHidePlayer boolean
---@param bAffectsHUD boolean
---@param bAffectsMovement boolean
---@param bAffectsTurning boolean
function APlayerController:SetCinematicMode(bInCinematicMode, bHidePlayer, bAffectsHUD, bAffectsMovement, bAffectsTurning) end

---Notify from server that Visual Logger is recording, to show that information on client about possible performance issues
---@param bIsLogging boolean
function APlayerController:OnServerStartedVisualLogger(bIsLogging) end

---Returns the location the PlayerController is focused on. If there is a possessed Pawn, returns the Pawn's location. If there is a spectator Pawn, returns that Pawn's location. Otherwise, returns the PlayerController's spawn location (usually the last known Pawn location after it has died).
---@return FVector
function APlayerController:GetFocalLocation() end

---开始记录Touch事件，将信息保存在TouchEventRecordData中，给定一个文件名存盘
---@param RecordFileName string
---@return boolean
function APlayerController:StartTouchEventRecord(RecordFileName) end

---停止记录Touch事件，将TouchEventRecordData中的数据保存到文件
---@return boolean
function APlayerController:StopTouchEventRecord() end

---从文件中加载Touch事件，并进行重放
---@param RecordFileName string
---@return boolean
function APlayerController:ReplayTouchEventRecord(RecordFileName) end

---获取Touch记录中保存的起始和终止旋转角
---@param StartRotation FRotator
---@param EndRotation FRotator
function APlayerController:GetTouchRecordStartAndEndRotation(StartRotation, EndRotation) end
