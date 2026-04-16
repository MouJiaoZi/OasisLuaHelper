---@meta

---@class ELockTargetState
---@field None number
---@field HitTarget number
---@field PreLock number
---@field Locking number
ELockTargetState = {}


---@class FTrackerSightBulletCollisionResponse
---@field TestChannel ECollisionChannel
---@field TestResponse ECollisionResponse
FTrackerSightBulletCollisionResponse = {}


---@class UTrackerSightWidget: UUAEUserWidget
---@field TargetPlayerKey number
---@field LockTargetState ELockTargetState
---@field BoltActionCurveName string
---@field ScopePanelSocket string
---@field UISideAnchorName string
---@field UseMeshBoundTagName string
---@field SecondCapsuleTagName string
---@field bOpenBulletDropPoint boolean
---@field bOpenLockRange boolean
---@field bForceUpdateUISize boolean
---@field bDropPointUseTargetPosIfLock boolean
---@field bRayTestIgnoreTeammate boolean
---@field bRayTestIgnoreVehicle boolean
---@field TriggerEventHitTargetTime number
---@field TriggerEventPreLockTime number
---@field TriggerEventCurrentTime number
---@field FixedEyeLen number
---@field FixedEyeLenOffset number
---@field bTraceActorIgnoreBox boolean
---@field bHandleWeaponScopeUseWeapon boolean
---@field bUIHiddenInBolt boolean
---@field bRayTestUseChannel boolean
---@field bRayTestUseChannelUseWeapon boolean
---@field RayTestChannel ECollisionChannel
---@field RayObjectTypes ULuaArrayHelper<ECollisionChannel>
---@field RayTraceDistance number
---@field PlayerMiniDistance number
---@field RectSizeRatioRange FVector2D
---@field RectRoomRatioRange FVector2D
---@field ScpoeZoomAlphaRange FVector2D
---@field ScpoeZoomRange FVector2D
---@field AutoScpoeZoomRange boolean
---@field LockRadiusRange FVector2D
---@field LockRadius number
---@field ScpoeZoom number
---@field CurLerpAlpha number
---@field CurRectRoomRatio number
---@field TestBoneList ULuaArrayHelper<string>
---@field OcclusionTraceInterval number
---@field OcclusionTraceLast number
---@field TraceHitResult boolean
---@field bIsScreenSpaceUI boolean
---@field DestinHitPoint FVector
---@field TraceHitPoint FVector
---@field TraceStartPoint FVector
---@field TraceEndPoint FVector
---@field CameraLocation FVector
---@field CameraTransform FTransform
---@field ShootQuat FQuat
---@field ShootDir FVector
---@field ScopeCameraPanelTransform FTransform
---@field ScopeRelativeTrans FTransform
---@field UIPanelRelativeTrans FTransform
---@field WidgetRelativeOffset FVector
---@field FPPScale number
---@field bIsUpdateShootInfo boolean
---@field bIsReplayGameInstance boolean
---@field LastLockTargetMetre number
---@field CurLockTargetDistance number
---@field CurPeekPicthValue number
---@field LastIsOutRange boolean
---@field IsAngleSight boolean
---@field ResetUIAnchorSize boolean
---@field UIAnchorSize number
---@field LastFOV number
---@field TrackerSightShapeConsiderTag string
---@field BulletCollisionResponse ULuaArrayHelper<FTrackerSightBulletCollisionResponse>
---@field TargetDistanceToCamera number
---@field bNeedResetUISize boolean
---@field CacheCapsuleList ULuaArrayHelper<UCapsuleComponent>
---@field bDebugDrawRay boolean
---@field DebugDrawRayShowTime number
local UTrackerSightWidget = {}

---@param OwnerActor AActor
---@param InWidgetComponent UWidgetComponent
function UTrackerSightWidget:InitCustomWidget(OwnerActor, InWidgetComponent) end

function UTrackerSightWidget:UnInitCustomWidget() end

---@param OwnerActor AActor
function UTrackerSightWidget:HandleWeaponGetOwner(OwnerActor) end

function UTrackerSightWidget:UpdateOnwerPlayer() end

function UTrackerSightWidget:BP_InitCustomWidget() end

function UTrackerSightWidget:BP_UnInitCustomWidget() end

function UTrackerSightWidget:BP_UpdateOnwerPlayer() end

---@param bIsBegin boolean
function UTrackerSightWidget:HandlePlayerScopeIn(bIsBegin) end

---@param bIsBegin boolean
function UTrackerSightWidget:HandlePlayerScopeOut(bIsBegin) end

function UTrackerSightWidget:HandleWeaponScopeIn() end

function UTrackerSightWidget:HandleWeaponScopeOut() end

---@param InHitActor AActor
---@param ImpactPosDistanceToWeapon number
---@param Player APawn
function UTrackerSightWidget:HandleWeaponHitTarget(InHitActor, ImpactPosDistanceToWeapon, Player) end

---@param InDeltaTime number
function UTrackerSightWidget:NativeHUDTickEvent(InDeltaTime) end

---@param InLockState ELockTargetState
---@return boolean
function UTrackerSightWidget:ChangeLockState(InLockState) end

---@param InLockState ELockTargetState
---@return boolean
function UTrackerSightWidget:EnterLockState(InLockState) end

---@param InLockState ELockTargetState
---@return boolean
function UTrackerSightWidget:LeaveLockState(InLockState) end

function UTrackerSightWidget:UpdateShootInfo() end

---@param InLockState ELockTargetState
---@param InDeltaTime number
function UTrackerSightWidget:UpdateLockState(InLockState, InDeltaTime) end

function UTrackerSightWidget:UpdateBulletDropPoint() end

function UTrackerSightWidget:UpdatePreviewPoint() end

---@param OutHitResult FHitResult
---@param InStart FVector
---@param InEnd FVector
---@return boolean
function UTrackerSightWidget:LineTraceActor(OutHitResult, InStart, InEnd) end

---@return boolean
function UTrackerSightWidget:CheckBaseCharacterAlive() end

function UTrackerSightWidget:UpdateLockRange() end

---@param InRadius number
function UTrackerSightWidget:OnUpdateLockRange(InRadius) end

---@param InNeedCheckRange boolean
---@param InForceCheckOcclusion boolean
---@return boolean
function UTrackerSightWidget:CheckRange(InNeedCheckRange, InForceCheckOcclusion) end

---@param PreWidgetSpacePoint FVector
---@return boolean
function UTrackerSightWidget:OnCheckBoneInRange(PreWidgetSpacePoint) end

---@param PreWidgetSpacePoint FVector
function UTrackerSightWidget:OnUpdateBulletDropPoint(PreWidgetSpacePoint) end

---@param WidgetSpaceH number
---@param WidgetSpaceW number
---@param PreWidgetSpacePointStart FVector
---@param PreWidgetSpacePointEnd FVector
function UTrackerSightWidget:OnUpdatePreviewPoint(WidgetSpaceH, WidgetSpaceW, PreWidgetSpacePointStart, PreWidgetSpacePointEnd) end

---@param InIsViewSpace boolean
---@param InCameraPoint FVector
---@param InHitPoint FVector
---@param InDestinPoint FVector
---@param OutComSpacePoint FVector
---@param OutLinearRatio number
---@return boolean
function UTrackerSightWidget:CalculateComponentSpacePoint(InIsViewSpace, InCameraPoint, InHitPoint, InDestinPoint, OutComSpacePoint, OutLinearRatio) end

---@param InCameraPoint FVector
---@param InHitPoint FVector
---@param InDestinPoint FVector
---@param OutComSpacePoint FVector
---@param OutLinearRatio number
---@return boolean
function UTrackerSightWidget:CalculateComponentSpacePointPlane(InCameraPoint, InHitPoint, InDestinPoint, OutComSpacePoint, OutLinearRatio) end

---@param InCameraPoint FVector
---@param InDestinPoint FVector
---@param OutComSpacePoint FVector
---@param OutDiatanceToCamera number
---@param NeedOutDiatance boolean
---@return boolean
function UTrackerSightWidget:CalculateUISpacePoint(InCameraPoint, InDestinPoint, OutComSpacePoint, OutDiatanceToCamera, NeedOutDiatance) end

---@param InViewSpace FVector
---@param OutComSpacePoint FVector
---@return boolean
function UTrackerSightWidget:ViewSpaceToProjection(InViewSpace, OutComSpacePoint) end

---@param InWidgetBlendMode EWidgetBlendMode
function UTrackerSightWidget:SetWidgetComponentBlendMode(InWidgetBlendMode) end

---@param InServerState number
---@param InServerCharacter ASTExtraCharacter
function UTrackerSightWidget:ReplaySetState(InServerState, InServerCharacter) end

function UTrackerSightWidget:HandleLockSightDataChange() end

---@param Dir FVector2D
---@param OutDirLen number
---@param OutDirAngle number
function UTrackerSightWidget:GetDirectInfo(Dir, OutDirLen, OutDirAngle) end

---@param InDistance number
function UTrackerSightWidget:OnUpdateLockTargetDistance(InDistance) end

function UTrackerSightWidget:OnPeekPicthValueChange() end

function UTrackerSightWidget:OnAngleSightChange() end

function UTrackerSightWidget:UpdateUIWidgetPos() end

---@param InForceUpdate boolean
function UTrackerSightWidget:UpdateAngleSight(InForceUpdate) end

function UTrackerSightWidget:UpdateUIAnchorSize() end

---@param InTarget ASTExtraCharacter
function UTrackerSightWidget:SetTargetCharacter(InTarget) end

function UTrackerSightWidget:UpdateUIVisibleInBolt() end
