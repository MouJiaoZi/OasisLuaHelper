---@meta

---@class EWeaponSightType
---@field NormalSight number
---@field AngleSight number
---@field WeaponSight number
EWeaponSightType = {}


---@class ESightScopeFunctionState
---@field None number
---@field BindPawn number
---@field SwitchWeapon number
---@field SetScope number
---@field SetSightScope number
---@field DoNodeEnter number
---@field DoNodeLeave number
---@field WeaponHandleChange number
ESightScopeFunctionState = {}


---@class FLoadMaterialInfo
---@field IsRestore boolean
---@field IsUseDefaultColor boolean
---@field IsUseCustomColor boolean
---@field AttachmentSocketType EWeaponAttachmentSocketType
---@field DefaultColorID number
---@field ScopeID number
---@field CustomSightMaterialTag string
---@field DestinKey string
---@field MaterialSocketName string
---@field MaterialPath FSoftObjectPath
---@field MaterialColor FLinearColor
---@field DestinWeapon ASTExtraShootWeapon
---@field DestinMesh UMeshComponent
FLoadMaterialInfo = {}


---@class FSightZoomParam
---@field Offset number
---@field Fov number
---@field MeshFov number
---@field Scale number
FSightZoomParam = {}


---@class FSightTypeCustomMaterialInfo
---@field MaterialNormal UMaterialInterface
---@field WeaponIDMaterialMap ULuaMapHelper<number, UMaterialInterface>
FSightTypeCustomMaterialInfo = {}


---@class FSightTypeCustomMaterial
---@field CurrentIndex number
---@field MaterialList ULuaArrayHelper<FSightTypeCustomMaterialInfo>
FSightTypeCustomMaterial = {}


---@class FDepthOfFieldSightConfig
---@field DepthOfFieldMethod EDepthOfFieldMethod
---@field bMobileHQGaussian number
---@field DepthOfFieldFocalDistance number
---@field DepthOfFieldNearTransitionRegion number
---@field DepthOfFieldFarTransitionRegion number
---@field DepthOfFieldScale number
---@field DepthOfFieldNearBlurSize number
---@field DepthOfFieldFarBlurSize number
---@field Priority number
FDepthOfFieldSightConfig = {}


---@class FOnScopeZoomChange : ULuaMulticastDelegate
FOnScopeZoomChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WeaponID: number, ScopeID: number, LastValue: number, NewValue: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnScopeZoomChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param WeaponID number
---@param ScopeID number
---@param LastValue number
---@param NewValue number
function FOnScopeZoomChange:Broadcast(WeaponID, ScopeID, LastValue, NewValue) end


---@class FOnAngleChange : ULuaMulticastDelegate
FOnAngleChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WeaponInstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAngleChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param WeaponInstanceID number
function FOnAngleChange:Broadcast(WeaponInstanceID) end


---@class FOnSwitchWeapoen : ULuaMulticastDelegate
FOnSwitchWeapoen = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WeaponSlot: ESurviveWeaponPropSlot) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSwitchWeapoen:Add(Callback, Obj) end

---触发 Lua 广播
---@param WeaponSlot ESurviveWeaponPropSlot
function FOnSwitchWeapoen:Broadcast(WeaponSlot) end


---@class FOnSightMeshChange : ULuaMulticastDelegate
FOnSightMeshChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InSlotID: number, IsEquipped: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSightMeshChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param InSlotID number
---@param IsEquipped boolean
function FOnSightMeshChange:Broadcast(InSlotID, IsEquipped) end


---@class FOnWeaponItemHandleChange : ULuaMulticastDelegate
FOnWeaponItemHandleChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AttachmentSocketType: EWeaponAttachmentSocketType, IsEquipped: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeaponItemHandleChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param AttachmentSocketType EWeaponAttachmentSocketType
---@param IsEquipped boolean
function FOnWeaponItemHandleChange:Broadcast(AttachmentSocketType, IsEquipped) end


---@class FOnSightScopeChange : ULuaMulticastDelegate
FOnSightScopeChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsIn: boolean, IsEnd: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSightScopeChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsIn boolean
---@param IsEnd boolean
function FOnSightScopeChange:Broadcast(IsIn, IsEnd) end


---@class FOnHandFoldChange : ULuaMulticastDelegate
FOnHandFoldChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsHandFold: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHandFoldChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsHandFold boolean
function FOnHandFoldChange:Broadcast(IsHandFold) end


---@class FOnScopeStateChange : ULuaMulticastDelegate
FOnScopeStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsScope: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnScopeStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsScope boolean
function FOnScopeStateChange:Broadcast(IsScope) end


---@class FOnScopeFadeStateChange : ULuaMulticastDelegate
FOnScopeFadeStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsFadeOut: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnScopeFadeStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsFadeOut boolean
function FOnScopeFadeStateChange:Broadcast(IsFadeOut) end


---@class FOnSightIDChange : ULuaSingleDelegate
FOnSightIDChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSightIDChange:Bind(Callback, Obj) end

---执行委托
function FOnSightIDChange:Execute() end


---@class FOnEntitySightTypeChange : ULuaSingleDelegate
FOnEntitySightTypeChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEntitySightTypeChange:Bind(Callback, Obj) end

---执行委托
function FOnEntitySightTypeChange:Execute() end


---@class FOnSightTypeChange : ULuaMulticastDelegate
FOnSightTypeChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TypeLast: ESightType, TypeNew: ESightType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSightTypeChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param TypeLast ESightType
---@param TypeNew ESightType
function FOnSightTypeChange:Broadcast(TypeLast, TypeNew) end


---@class FOnHiddenSightCrosshair : ULuaMulticastDelegate
FOnHiddenSightCrosshair = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsHidden: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHiddenSightCrosshair:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsHidden boolean
function FOnHiddenSightCrosshair:Broadcast(IsHidden) end


---@class USTextraSightScopeMgr: USightScopeMgr
---@field bAllMeshChangeBroadcast boolean
---@field CurCameraSocketNameSSC string
---@field ScopeAimCameraSocketNameSSC string
---@field FirstPersonCameraSocketName string
---@field CameraStartSocketNameSSC string
---@field SightModifyAttrName string
---@field IsInPawnRecycled boolean
---@field IsScopingSwitchWeapon boolean
---@field IsCheckScopeEnable boolean
---@field IsRecycledScopeOut boolean
---@field AngleDoNotScaleSpringArm boolean
---@field UseAngleSightDefaultScopeID boolean
---@field AngleSightDefaultScopeID number
---@field LoadMaterialAsync boolean
---@field DefaultMaterialSocketName string
---@field MaterialParamColorName string
---@field MaterialParamColorIntensityName string
---@field CustomColorIndex number
---@field CustomColorIntensityMap ULuaMapHelper<number, number>
---@field DefaultSightMaterialCrossHairDistance number
---@field MaterialCrossHairDistanceName string
---@field MaterialDirShiftScaleName string
---@field MaterialDirShiftScaleTableKey string
---@field SightCircleCenterName string
---@field bIfCircleCenterNotUseCameraName boolean
---@field DefaultSightCircleRadius number
---@field CurrentSightMaterialCrossHairDistance number
---@field CurrentSightMaterialCrossHairPoint FVector
---@field CurrentSightMaterialCameraSocketPoint FVector4
---@field SightMaterialCrossHairMesh UMeshComponent
---@field SightCrossHairMesh UMeshComponent
---@field SightCircleMesh UMeshComponent
---@field SightMeshTranslucencySortPriority UMeshComponent
---@field DefaultTranslucencySortPriority number
---@field TranslucencySortPrioritySightTypeList ULuaArrayHelper<ESightType>
---@field CustomSightMaterialTag string
---@field SightTypeCustomMaterialMap ULuaMapHelper<ESightType, FSightTypeCustomMaterial>
---@field SightTypeCustomMaterialIgnoreWeaponList ULuaArrayHelper<number>
---@field bUseTableDefaultSightFOV boolean
---@field DefaultFOV number
---@field DefaultZoomValue number
---@field CustomSightDefaultZoomValueMap ULuaMapHelper<number, number>
---@field AngledSightID number
---@field SwitchWeaponCheckAngle boolean
---@field NearClipCameraAimMode number
---@field ScopeNearClipCameraAimModeSightIDMap ULuaMapHelper<number, number>
---@field CurrentBindEventWeapon ASTExtraShootWeapon
---@field ScopeZoomFovCurveMap ULuaMapHelper<number, UCurveFloat>
---@field IsAngleBackup boolean
---@field WeaponSightTypeBackup EWeaponSightType
---@field ScopeIDBackup number
---@field OnScopeZoomChangeDelegate FOnScopeZoomChange
---@field OnAngleChangeDelegate FOnAngleChange
---@field OnSightMeshChange FOnSightMeshChange
---@field OnSwitchWeapoen FOnSwitchWeapoen
---@field OnWeaponItemHandleChange FOnWeaponItemHandleChange
---@field OnSightScopeChange FOnSightScopeChange
---@field OnHandFoldChangeDelegate FOnHandFoldChange
---@field OnScopeStateChange FOnScopeStateChange
---@field OnPreScopeStateChange FOnScopeStateChange
---@field OnScopeFadeStateChange FOnScopeFadeStateChange
---@field OnSightIDChange FOnSightIDChange
---@field OnSightTypeChange FOnSightTypeChange
---@field OnEntitySightTypeChange FOnEntitySightTypeChange
---@field OnHiddenSightCrosshair FOnHiddenSightCrosshair
---@field DefaultColorMap ULuaMapHelper<number, FLinearColor>
---@field LoadAngleMatInfo FLoadMaterialInfo
---@field LoadMatInfo FLoadMaterialInfo
---@field WeaponSightZoomMap ULuaMapHelper<string, number>
---@field SpectatorOrReplayingSightZoomValue number
---@field ScopeImmediateLastTime number
---@field CanScopeImmediateLastTime number
---@field bActiveScopeImmediateLastTime boolean
---@field LastLoadMeshTime number
---@field ReportHistoryMap ULuaMapHelper<string, string>
---@field ScopeOpenSightType ESightType
---@field bHiddenSightCrosshair boolean
---@field HistoryWeaponHandleMap ULuaMapHelper<EWeaponAttachmentSocketType, UItemHandleBase>
---@field SwitchHandleDelayScopeTimerHandle FTimerHandle
---@field WeaponAttachIDListLast ULuaArrayHelper<number>
---@field bEnableScopeInAutoAim boolean
---@field bHideReticleSection boolean
---@field bIsForceFirstViewScope boolean
---@field bIsCheckFPPFirstViewScope boolean
---@field bIsCanAIFPPFirstViewScope boolean
---@field bCacheEnableFirstViewScopeNode boolean
---@field bCacheEnableFirstViewScopeWeapon boolean
---@field bCacheIsTPPToFirstViewScopeWeapon boolean
---@field bIsUseMeshFOV boolean
---@field bIsTPPToFirstScope boolean
---@field bIsSprintToFirstScope boolean
---@field Location_AnimOffsetScale number
---@field Rotation_AnimOffsetScale number
---@field bIsCachedZoomParam boolean
---@field FirstViewCacheZoomParam FSightZoomParam
---@field FirstViewCurrentZoomParam FSightZoomParam
---@field FirstViewAngleRotationAlphaSpeed number
---@field FirstViewAngleRotationAlpha number
---@field FirstViewAngleRotation number
---@field FirstViewAngleRotationDestin number
---@field FirstViewAngleAlpha number
---@field FirstViewLastAngleAlpha number
---@field FirstViewAngleAlphaDestin number
---@field FirstViewLastAngleRotation number
---@field IsTickAngleRotation boolean
---@field IsToAngle boolean
---@field TickAngleRotationTime number
---@field TickAngleRotationSpeed number
---@field TickAngleRotationCurrentTime number
---@field TickAngleDestinRotation FRotator
---@field IsInOutAngleCurve boolean
---@field UseDefaultDepthOfFieldConfig boolean
---@field EnableScopeDepthOfField boolean
---@field SightDepthOfFieldConfigMap ULuaMapHelper<number, FDepthOfFieldSightConfig>
---@field DefaultDepthOfFieldConfig FDepthOfFieldSightConfig
---@field DepthOfFieldName string
---@field DisableNewFPPFlag string
---@field bNeedScopeUpdateLastRenderTime boolean
---@field NewFPPMeshDisableRenderMainPassList ULuaArrayHelper<ESightType>
---@field CanNotFadeOutDynamicStateList ULuaArrayHelper<FGameplayTag>
---@field bEnableReloadCanSightAimOn boolean
---@field bEnableBoltCanSightAimOn boolean
local USTextraSightScopeMgr = {}

function USTextraSightScopeMgr:InitNodeMgr() end

function USTextraSightScopeMgr:UninitNodeMgr() end

---@param IsIn boolean
---@param ImmediateOut boolean
function USTextraSightScopeMgr:SetSightScope(IsIn, ImmediateOut) end

---@param CleanAllNode boolean
---@param InForceNotSetScope boolean
---@param InForceUseDefault boolean
function USTextraSightScopeMgr:UpdateWeaponSightNodeContainer(CleanAllNode, InForceNotSetScope, InForceUseDefault) end

---@param IsIn boolean
function USTextraSightScopeMgr:PreScope(IsIn) end

---@param IsIn boolean
function USTextraSightScopeMgr:PostScope(IsIn) end

function USTextraSightScopeMgr:OnWeaponReload() end

---@param NewPawn ASTExtraBaseCharacter
function USTextraSightScopeMgr:BindPawn(NewPawn) end

---@param RepCharacter ASTExtraBaseCharacter
function USTextraSightScopeMgr:OnHandleRepCharacter(RepCharacter) end

function USTextraSightScopeMgr:OnHandleViewTargetChange() end

function USTextraSightScopeMgr:OnHandleReplayResetViewTarget() end

function USTextraSightScopeMgr:OnHandleReplayFinishLoading() end

---@param InIsSpectating boolean
function USTextraSightScopeMgr:OnHandleRepIsSpectating(InIsSpectating) end

---@param InRecycledActor AActor
function USTextraSightScopeMgr:OnHandlePlayerRecycled(InRecycledActor) end

---@param InRecycledActor AActor
---@param bPersistentPool boolean
function USTextraSightScopeMgr:OnPlayerRecycled(InRecycledActor, bPersistentPool) end

function USTextraSightScopeMgr:UpdateSpectatorOrReplayingSightZoomCurPawn() end

---@param InZoomValue number
function USTextraSightScopeMgr:UpdateSpectatorOrReplayingSightZoom(InZoomValue) end

---@param InWeaponID number
---@param InScopeID number
---@param InZoomValue number
---@param ConsiderSpectatorAndReplaying boolean
function USTextraSightScopeMgr:UpdateSightZoom(InWeaponID, InScopeID, InZoomValue, ConsiderSpectatorAndReplaying) end

---@param IsAngle boolean
---@param InZoomValue number
function USTextraSightScopeMgr:UpdateCurrentWeaponSightZoom(IsAngle, InZoomValue) end

---@param InWeaponID number
---@param InScopeID number
---@param ConsiderSpectatorAndReplaying boolean
---@return number
function USTextraSightScopeMgr:GetSightZoom(InWeaponID, InScopeID, ConsiderSpectatorAndReplaying) end

---@param IsAngle boolean
---@return number
function USTextraSightScopeMgr:GetCurrentWeaponSightZoom(IsAngle) end

---@param InWeaponID number
---@param InScopeID number
---@param InZoomValue number
---@return number
function USTextraSightScopeMgr:GetSightDestinFOV(InWeaponID, InScopeID, InZoomValue) end

---@param IsAngle boolean
---@return number
function USTextraSightScopeMgr:GetCurrentWeaponDestinFOV(IsAngle) end

---@return FSightZoomParam
function USTextraSightScopeMgr:GetRealSightZoomParam() end

---@param InCurFOV number
---@param InBaseFov number
---@return FSightZoomParam
function USTextraSightScopeMgr:GetSightZoomParamWithFOV(InCurFOV, InBaseFov) end

---@param IsAngled boolean
---@param InFov number
---@return FSightZoomParam
function USTextraSightScopeMgr:GetScopeZoomParamWithFOV(IsAngled, InFov) end

---@param InIsAngle boolean
---@param InUseHandle boolean
---@return ESightType
function USTextraSightScopeMgr:GetSightType(InIsAngle, InUseHandle) end

---@param InIsAngle boolean
---@param InUseHandle boolean
---@return number
function USTextraSightScopeMgr:GetSightID(InIsAngle, InUseHandle) end

---@param InIsAngle boolean
---@param InHandleID number
---@return number
function USTextraSightScopeMgr:HandleSightIDToSightID(InIsAngle, InHandleID) end

---@param WeaponID number
---@param ScopeID number
---@return string
function USTextraSightScopeMgr:GetScopeZoomKey(WeaponID, ScopeID) end

---@param Param FSightZoomParam
---@param InNeedCache boolean
function USTextraSightScopeMgr:ApplyDollyZoomParam(Param, InNeedCache) end

---@return string
function USTextraSightScopeMgr:GetScopeAimCameraSocketName() end

function USTextraSightScopeMgr:UpdateScopeAimCameraSocketName() end

---@param type EScopeMeshAnimType
---@param forceUpdate boolean
---@param InIsWeaponSight boolean
function USTextraSightScopeMgr:SwitchScopeMeshAnim(type, forceUpdate, InIsWeaponSight) end

---@return EWeaponSightType
function USTextraSightScopeMgr:GetWeaponSightType() end

---@return boolean
function USTextraSightScopeMgr:IsAngledSight() end

---@return boolean
function USTextraSightScopeMgr:IsAngledSightFast() end

---@return boolean
function USTextraSightScopeMgr:IsNormalSight() end

---@return boolean
function USTextraSightScopeMgr:IsUseWeaponSight() end

---@param InWeapon ASTExtraShootWeapon
---@return boolean
function USTextraSightScopeMgr:IsWeaponAngleState(InWeapon) end

---@param InWeapon ASTExtraShootWeapon
---@return boolean
function USTextraSightScopeMgr:IsWeaponNormalState(InWeapon) end

---@param InWeapon ASTExtraShootWeapon
---@return boolean
function USTextraSightScopeMgr:IsRecordWeaponSightAngleState(InWeapon) end

---@param ConsiderWeaponSight boolean
---@return boolean
function USTextraSightScopeMgr:HaveAngledSight(ConsiderWeaponSight) end

---@param isAngle boolean
---@param ConsiderWeaponSight boolean
---@return boolean
function USTextraSightScopeMgr:HaveSight(isAngle, ConsiderWeaponSight) end

---@return boolean
function USTextraSightScopeMgr:HaveUseWeaponSight() end

---@param InScopeID number
---@return boolean
function USTextraSightScopeMgr:IsZoomScope(InScopeID) end

---@param InSightID number
---@param InIsAngle boolean
---@return boolean
function USTextraSightScopeMgr:IsSightID(InSightID, InIsAngle) end

---@param InSightType ESightType
---@return boolean
function USTextraSightScopeMgr:IsSightType(InSightType) end

---@param InWeapon ASTExtraShootWeapon
---@param InIsAngle boolean
---@return number
function USTextraSightScopeMgr:GetSightIDConsiderParent(InWeapon, InIsAngle) end

---@param InID number
---@return number
function USTextraSightScopeMgr:GetParentID(InID) end

---@param InValue boolean
function USTextraSightScopeMgr:ScopingChange(InValue) end

---@param RateX number
---@param RateY number
function USTextraSightScopeMgr:ScopeInSpeedChange(RateX, RateY) end

---@param RateX number
---@param RateY number
function USTextraSightScopeMgr:ScopeOutSpeedChange(RateX, RateY) end

---@param mode EPlayerCameraMode
---@param IsUseLerpFPP boolean
---@param InForce boolean
function USTextraSightScopeMgr:SwitchCameraMode(mode, IsUseLerpFPP, InForce) end

---@param EnableNearClip boolean
function USTextraSightScopeMgr:SetNearClipPlane(EnableNearClip) end

---@return boolean
function USTextraSightScopeMgr:IsCurWeaponAttachedAngledSight() end

---@return boolean
function USTextraSightScopeMgr:IsNotAngledSightSwitchType() end

---@return boolean
function USTextraSightScopeMgr:IsRPGScopeIn() end

---@return number
function USTextraSightScopeMgr:GetLerpRate() end

---@param IsLinearAlpha boolean
---@param InCheckSightOn boolean
---@return number
function USTextraSightScopeMgr:GetSightLerpAlpha(IsLinearAlpha, InCheckSightOn) end

---@param Weapon ASTExtraShootWeapon
---@param SocketType EWeaponAttachmentSocketType
---@param OutIsUseDefaultColor boolean
---@param OutDefaultColorID number
---@param OutUseCostomColor boolean
---@param OutCustomColor FLinearColor
---@return string
function USTextraSightScopeMgr:GetScopeMatTableKey(Weapon, SocketType, OutIsUseDefaultColor, OutDefaultColorID, OutUseCostomColor, OutCustomColor) end

---@param isAngle boolean
---@param ignoreScopping boolean
function USTextraSightScopeMgr:SetSightToConfigMaterial(isAngle, ignoreScopping) end

---@param isAngle boolean
function USTextraSightScopeMgr:ResetSightToDefault(isAngle) end

---@param InMatInfo FLoadMaterialInfo
function USTextraSightScopeMgr:LoadOrSetMaterial(InMatInfo) end

---@param InMatInfo FLoadMaterialInfo
function USTextraSightScopeMgr:OnLoadSightMaterial(InMatInfo) end

---@param InType number
---@param IsOnlyTurn boolean
---@param InstanceID number
function USTextraSightScopeMgr:OnAngleChange(InType, IsOnlyTurn, InstanceID) end

---@param TargetChangeSlot ESurviveWeaponPropSlot
function USTextraSightScopeMgr:OnSwitchWeapon(TargetChangeSlot) end

---@param InActor AActor
---@param EndPlayReason EEndPlayReason
function USTextraSightScopeMgr:OnHandleWeaponDestroy(InActor, EndPlayReason) end

---@param InNewWeapon ASTExtraShootWeapon
---@param InForceNotSetScope boolean
function USTextraSightScopeMgr:SwitchCurrentWeapon(InNewWeapon, InForceNotSetScope) end

---@param InWeapon ASTExtraWeapon
---@param SocketType EWeaponAttachmentSocketType
---@param IsEquipped boolean
function USTextraSightScopeMgr:OnWeaponHandleChange(InWeapon, SocketType, IsEquipped) end

---@param IDListAdd ULuaArrayHelper<number>
---@param IDListRemove ULuaArrayHelper<number>
function USTextraSightScopeMgr:OnHandleAttachmentIDChange(IDListAdd, IDListRemove) end

function USTextraSightScopeMgr:OnHandleEntitySightTypeChange() end

---@param WeaponSlotID number
---@param IsEquipped boolean
function USTextraSightScopeMgr:HandleScopeMeshLoaded(WeaponSlotID, IsEquipped) end

---@param InHandleResult boolean
function USTextraSightScopeMgr:OnPlayerHandFolded(InHandleResult) end

---@param InIsWeapon boolean
---@return EScopeMeshAnimType
function USTextraSightScopeMgr:GetCurrentPlayAnimIndex(InIsWeapon) end

---@return boolean
function USTextraSightScopeMgr:GetUseScopeImmediateLastTime() end

---@param InLastTime number
function USTextraSightScopeMgr:SetScopeImmediateLastTime(InLastTime) end

---@return number
function USTextraSightScopeMgr:GetScopeImmediateLastTime() end

---@param InActive boolean
function USTextraSightScopeMgr:SetActiveScopeImmediateLastTime(InActive) end

---@return boolean
function USTextraSightScopeMgr:GetActiveScopeImmediateLastTime() end

---@param InType string
---@param InMsg string
function USTextraSightScopeMgr:ReportErrorMsg(InType, InMsg) end

---@param InType string
---@return boolean
function USTextraSightScopeMgr:HasExistReportType(InType) end

---@return boolean
function USTextraSightScopeMgr:CanReportErrorLoadMeshTime() end

function USTextraSightScopeMgr:UpdateLoadMeshTime() end

---@param InSrcID number
---@return number
function USTextraSightScopeMgr:GetGameStateReloadID(InSrcID) end

---@param InHidden boolean
function USTextraSightScopeMgr:SetHiddenSightCrosshair(InHidden) end

function USTextraSightScopeMgr:OnHandleSwitchHandleDelayScope() end

---@return boolean
function USTextraSightScopeMgr:IsFirstViewScope() end

---@return boolean
function USTextraSightScopeMgr:GetIsFirstViewScopingCache() end

---@return boolean
function USTextraSightScopeMgr:GetIsFirstViewScopingAuto() end

---@return boolean
function USTextraSightScopeMgr:GetIsTPPToFirstScope() end

---@return boolean
function USTextraSightScopeMgr:GetIsSprintToFirstScope() end

---@param InSet boolean
function USTextraSightScopeMgr:SetForceFirstViewScope(InSet) end

function USTextraSightScopeMgr:UpdateCacheEnableFirstViewScopeNode() end

function USTextraSightScopeMgr:UpdateCacheIsFirstViewScopeWeapon() end

---@param InSocketName string
---@param InChild USceneComponent
---@param InParent USceneComponent
---@param InToSpace FTransform
---@return FTransform
function USTextraSightScopeMgr:GetTwoComponentRelativeTransform(InSocketName, InChild, InParent, InToSpace) end

---@param InSocketName string
---@param InComponent USceneComponent
---@return FTransform
function USTextraSightScopeMgr:GetComponentSocketRelativeTransform(InSocketName, InComponent) end

---@param InGetCache boolean
---@return boolean
function USTextraSightScopeMgr:GetIsUseMeshFOV(InGetCache) end

function USTextraSightScopeMgr:UpdateSightCrossHairMeshAndCrossHairDistance() end

---@param InIsAngle boolean
---@return number
function USTextraSightScopeMgr:GetSightMaterialCrossHairDistance(InIsAngle) end

---@param InRestore boolean
---@param InAngle boolean
function USTextraSightScopeMgr:UpdateSightMaterialCrossHairDistance(InRestore, InAngle) end

---@param OutLocation FVector
---@return boolean
function USTextraSightScopeMgr:GetSightMaterialCrossHairWorldLocation(OutLocation) end

---@param OutLocation FVector
---@return boolean
function USTextraSightScopeMgr:GetSightMaterialCameraSocketWorldLocation(OutLocation) end

---@param InIsAngle boolean
---@param InOpen boolean
---@param InAlpha number
function USTextraSightScopeMgr:UpdateSightCircleInfo(InIsAngle, InOpen, InAlpha) end

---@param InAngle boolean
---@param InImmediate boolean
function USTextraSightScopeMgr:SetFirstViewAngleRotationMotion(InAngle, InImmediate) end

---@param InImmediate boolean
function USTextraSightScopeMgr:UpdateFirstViewAngleRotationMotion(InImmediate) end

---@param InDeltaTime number
function USTextraSightScopeMgr:UpdateAngleRotation(InDeltaTime) end

---@param InEnable boolean
---@param InAlpha number
function USTextraSightScopeMgr:UpdateDepthOfFieldEnable(InEnable, InAlpha) end

---@param InAlpha number
---@param InCurve UCurveFloat
---@return number
function USTextraSightScopeMgr:GetADSDeviationFactor(InAlpha, InCurve) end

function USTextraSightScopeMgr:UpdateMeshLastRenderTime() end

function USTextraSightScopeMgr:UpdateWeaponDestinAngle() end

---@param InSightType ESightType
---@param InMaterialIndex number
function USTextraSightScopeMgr:UpdateSightTypeCustomMaterial(InSightType, InMaterialIndex) end

---@param InSightType ESightType
function USTextraSightScopeMgr:SetSightTypeCustomMaterialToNext(InSightType) end

---@param InSightType ESightType
function USTextraSightScopeMgr:SetSightTypeCustomMaterialToForward(InSightType) end

---@param InSightType ESightType
---@return number
function USTextraSightScopeMgr:GetSightTypeCustomMaterialIndex(InSightType) end

---@param InSightType ESightType
---@return number
function USTextraSightScopeMgr:GetNextSightTypeCustomMaterialIndex(InSightType) end

---@param InSightType ESightType
---@return number
function USTextraSightScopeMgr:GetForwardSightTypeCustomMaterialIndex(InSightType) end

---@return boolean
function USTextraSightScopeMgr:GetEnableCustomMaterial() end

---@param InSightType ESightType
---@return boolean
function USTextraSightScopeMgr:GetIsValidCustomMaterialSightType(InSightType) end

---@param InWeapon ASTExtraShootWeapon
---@return boolean
function USTextraSightScopeMgr:GetIsIgnoreCustomMaterialWeapon(InWeapon) end

---@param InIsAngle boolean
function USTextraSightScopeMgr:UpdateSightMaterialToNewFPPParam(InIsAngle) end

---@param InAble boolean
---@param InForce boolean
function USTextraSightScopeMgr:UpdateNewFPPMeshRenderMainPassEnable(InAble, InForce) end

---@param InFOV number
---@param InCameraMode EPlayerCameraMode
function USTextraSightScopeMgr:SetSizeCullingFactorAndSendToServer(InFOV, InCameraMode) end

---@param InState ESightScopeFunctionState
---@return boolean
function USTextraSightScopeMgr:GetIsSightScopeFunctionState(InState) end

---@param InRestore boolean
---@param InValue number
function USTextraSightScopeMgr:SetSightMeshTranslucencySortPriority(InRestore, InValue) end

---@param InScopeID number
---@param InValue number
---@param InAdd boolean
function USTextraSightScopeMgr:UpdateCustomSightDefaultZoomValue(InScopeID, InValue, InAdd) end

---@param InEnable boolean
function USTextraSightScopeMgr:SetEnableScopeDepthOfField(InEnable) end

---@return boolean
function USTextraSightScopeMgr:GetNewFPPBoltCanSightAimOn() end

---@return boolean
function USTextraSightScopeMgr:GetNewFPPReloadCanSightAimOn() end

---@param InEnable boolean
function USTextraSightScopeMgr:SetBoltCanSightAimOn(InEnable) end

---@param InEnable boolean
function USTextraSightScopeMgr:SetReloadCanSightAimOn(InEnable) end

---@return boolean
function USTextraSightScopeMgr:GetEnableScopeInAutoAim() end

---@param InEnable boolean
function USTextraSightScopeMgr:SetEnableScopeInAutoAim(InEnable) end

---@param InAnimList UUAECharacterAnimListComponent
---@param InAnimType ECharacterNewFPPAnimType
---@return boolean
function USTextraSightScopeMgr:IsSetNewFPPAnimAsset(InAnimList, InAnimType) end

---@param InHidden boolean
function USTextraSightScopeMgr:SetHideReticleSection(InHidden) end

---@return boolean
function USTextraSightScopeMgr:GetHideReticleSection() end

function USTextraSightScopeMgr:BP_InitNodeMgr() end

function USTextraSightScopeMgr:BP_UninitNodeMgr() end

---@param InOldWeapon ASTExtraShootWeapon
---@param InNewWeapon ASTExtraShootWeapon
function USTextraSightScopeMgr:BP_OnSwitchWeapon(InOldWeapon, InNewWeapon) end

---@param InWeapon ASTExtraWeapon
---@param SocketType EWeaponAttachmentSocketType
---@param IsEquipped boolean
function USTextraSightScopeMgr:BP_OnWeaponHandleChange(InWeapon, SocketType, IsEquipped) end

---@param InType number
---@param IsOnlyTurn boolean
---@param InstanceID number
function USTextraSightScopeMgr:BP_OnAngleChange(InType, IsOnlyTurn, InstanceID) end
