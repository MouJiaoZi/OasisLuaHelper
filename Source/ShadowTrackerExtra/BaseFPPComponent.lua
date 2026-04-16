---@meta

---@class FSwitchVehicleWeaponDelegate : ULuaMulticastDelegate
FSwitchVehicleWeaponDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ThirdPersonSpringArm: UCustomSpringArmComponent, OldVehWeapon: ASTExtraShootWeapon, NewVehWeapon: ASTExtraShootWeapon) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSwitchVehicleWeaponDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ThirdPersonSpringArm UCustomSpringArmComponent
---@param OldVehWeapon ASTExtraShootWeapon
---@param NewVehWeapon ASTExtraShootWeapon
function FSwitchVehicleWeaponDelegate:Broadcast(ThirdPersonSpringArm, OldVehWeapon, NewVehWeapon) end


---@class UBaseFPPComponent: UActorComponent, IObjectPoolInterface
---@field bIsBoltAction boolean
---@field SwitchVehicleWeaponDelegate FSwitchVehicleWeaponDelegate
---@field TempScopeType ESTEScopeType
---@field FirstPersonCameraSocketName string
---@field ScopeAimCameraSocketName string
---@field FPPSocketName string
---@field BoltActionCurveName string
---@field AimProcessList ULuaArrayHelper<UAimProcess>
---@field AimProcessClassList ULuaArrayHelper<UClass>
---@field ScopeZoomSpringArmLength number
---@field ScopeZoomAlpha number
---@field ScopeZoomSpeed number
---@field ScopeMaterials ULuaMapHelper<string, UMaterialInterface>
---@field CurrentPlayAnimIndex number
---@field bUseScopeZoomValue boolean
---@field ScopeZoomValueUpdateInterval number
---@field ZoomScopeParam FDollyZoomParam
---@field ScopeZoomFovCurveMap ULuaMapHelper<number, UCurveFloat>
---@field WeaponAngledSightState ULuaMapHelper<number, number>
---@field NearClipCameraAimMode number
---@field WeaponSightState ULuaMapHelper<number, number>
---@field InScopeInProcess boolean
---@field FreeFallSpringArmParam FSpringArmParams
---@field OpeningSpringArmParam FSpringArmParams
---@field TPPSpringArmParam FSpringArmParams
---@field FPPSpringArmParam FSpringArmParams
---@field ShoulderSpringArmParam FSpringArmParams
---@field AIMSpringArmParam FSpringArmParams
---@field SourceScopeAimCameraSocketName string
---@field TargetScopeAimCameraSocketName string
---@field ADSModify FCameraModifyData
---@field VehWeaponADSModify FCameraModifyData
---@field MaterialID number
---@field bShow boolean
---@field LODIndex number
---@field DeviceQualityLevel number
---@field X8ScopeID number
---@field X8ScopeIDTracker number
---@field CompoundBowAddtiveFOVSpeed number
---@field CompoundBowAddtiveFOV number
---@field CompoundBowAddtiveFOVCur number
---@field CurTimeLineUpdateAlpha number
---@field CurTimeAddtive number
---@field SourceAddtiveFOV number
---@field AddtiveDelayTime number
---@field CurRealParam FDollyZoomParam
---@field CompoundBowAddtiveParam FDollyZoomParam
---@field bAwayUseCachedBoneLocation boolean
---@field bDisableScopeBoltInFallState boolean
---@field bDisableScopeBoltToProne boolean
---@field bNeedResetCameraLocation boolean
---@field BoltUseCachedBoneName string
---@field BoltCurveValue number
---@field bUseCameraSpringArmOffset boolean
---@field CameraSpringArmOffset FVector
---@field PrintTimeDefault number
---@field PrintTime number
---@field AngledSightID number
---@field CacheScopeSightType ESightType
---@field bNeedReportFOV boolean
local UBaseFPPComponent = {}

function UBaseFPPComponent:PreLoadAimProcess() end

function UBaseFPPComponent:LoadAimProcess() end

---@param InController ASTExtraPlayerController
function UBaseFPPComponent:OnControllerIsLoad(InController) end

---@param InCharacter ASTExtraBaseCharacter
function UBaseFPPComponent:OnLoadCharacter(InCharacter) end

function UBaseFPPComponent:OnLoadAimProcess() end

---@param NewType ESTEScopeType
---@return boolean
function UBaseFPPComponent:ScopeIn(NewType) end

---@param NewType ESTEScopeType
function UBaseFPPComponent:ScopeOut(NewType) end

---@param NewType ESTEScopeType
function UBaseFPPComponent:Scoping(NewType) end

function UBaseFPPComponent:ScopeInAfterTimeline() end

---@return boolean
function UBaseFPPComponent:IsRPGScopeIn() end

function UBaseFPPComponent:ScopeInContinue() end

---@param ExceptionType string
---@param StackStr string
---@param DetailStr string
function UBaseFPPComponent:ErrorReport(ExceptionType, StackStr, DetailStr) end

---@param NewType ESTEScopeType
---@param ForceInterrupt boolean
function UBaseFPPComponent:ScopeInterrupt(NewType, ForceInterrupt) end

---@param alpha number
---@return boolean
function UBaseFPPComponent:ScopeTimelineUpdate(alpha) end

function UBaseFPPComponent:ScopeHandFold() end

function UBaseFPPComponent:ScopeNotHandFold() end

---@return string
function UBaseFPPComponent:GetScopeAimCameraSocketName() end

---@param ThirdPersonSpringArm UCustomSpringArmComponent
---@param OldVehWeapon ASTExtraShootWeapon
---@param NewVehWeapon ASTExtraShootWeapon
function UBaseFPPComponent:SwitchVehicleShootWeapon(ThirdPersonSpringArm, OldVehWeapon, NewVehWeapon) end

---@return boolean
function UBaseFPPComponent:IsAngledSight() end

---@param Slot ESurviveWeaponPropSlot
---@return boolean
function UBaseFPPComponent:IsAngledSightBySlot(Slot) end

---@param weapon ASTExtraShootWeapon
---@param state boolean
function UBaseFPPComponent:SetWeaponAngledSightState(weapon, state) end

---@return number
function UBaseFPPComponent:SwitchSightConfigMaterial() end

---@param forceADSState boolean
---@return number
function UBaseFPPComponent:ShowReflectorSightTPPMaterial(forceADSState) end

---@param forceSwitch boolean
---@return number
function UBaseFPPComponent:SwitchAngledSightConfigMaterial(forceSwitch) end

---@param forceADSState boolean
---@return number
function UBaseFPPComponent:ShowAngledSightTPPMaterial(forceADSState) end

---@param EnableNearClip boolean
function UBaseFPPComponent:SetNearClipPlane(EnableNearClip) end

---@return boolean
function UBaseFPPComponent:ScopeInLogic() end

---@return boolean
function UBaseFPPComponent:IsEnableCameraPossess() end

function UBaseFPPComponent:ADSVehicleWeapon() end

function UBaseFPPComponent:ADSProcessAgainstWall() end

function UBaseFPPComponent:ADSAgainstWall() end

function UBaseFPPComponent:ADSLeaveWall() end

function UBaseFPPComponent:ADSProne() end

function UBaseFPPComponent:ADSNormal() end

function UBaseFPPComponent:ADSRPG() end

function UBaseFPPComponent:ADSUseCameraPossess() end

function UBaseFPPComponent:ScopeInEnd() end

function UBaseFPPComponent:ScopeOutLogic() end

function UBaseFPPComponent:ScopeOutEnd() end

function UBaseFPPComponent:ActiveComponentTickable() end

---@param IsUse boolean
function UBaseFPPComponent:SetTagCulling(IsUse) end

---@param InValue boolean
function UBaseFPPComponent:ScopingChange(InValue) end

function UBaseFPPComponent:AttachToSight() end

function UBaseFPPComponent:AttachToSightKeepTransform() end

---@param controller ASTExtraPlayerController
---@param entity UShootWeaponEntity
function UBaseFPPComponent:ScopeInSpeedChange(controller, entity) end

---@param controller ASTExtraPlayerController
---@param entity UShootWeaponEntity
function UBaseFPPComponent:ScopeOutSpeedChange(controller, entity) end

---@param mode EPlayerCameraMode
---@param IsUseLerpFPP boolean
function UBaseFPPComponent:SwitchCameraMode(mode, IsUseLerpFPP) end

---@param deltaSeconds number
function UBaseFPPComponent:BoltAction(deltaSeconds) end

function UBaseFPPComponent:GetSightType() end

---@param DeltaTime number
function UBaseFPPComponent:ScopeZoomTick(DeltaTime) end

function UBaseFPPComponent:PlayScopeInTimeline() end

---@return boolean
function UBaseFPPComponent:IsScopeInTimelinePlaying() end

function UBaseFPPComponent:StopScopeIn() end

---@param MinFov number
---@param CurFov number
---@param InScopeZoomAlpha number
function UBaseFPPComponent:GetCurrentScopeZoomFov(MinFov, CurFov, InScopeZoomAlpha) end

---@param SpringOffset number
---@param MinFov number
---@param CurFov number
---@param Param FDollyZoomParam
function UBaseFPPComponent:CalculateDollyZoomParam(SpringOffset, MinFov, CurFov, Param) end

---@param NewZoomValue number
function UBaseFPPComponent:ScopeZoomUpdate(NewZoomValue) end

---@param shootWeapon ASTExtraShootWeapon
---@param bIsAngled boolean
---@return number
function UBaseFPPComponent:GetScopeFov(shootWeapon, bIsAngled) end

---@param Param FDollyZoomParam
---@param bSyncToPawn boolean
function UBaseFPPComponent:ApplyDollyZoomParam(Param, bSyncToPawn) end

---@param Param FDollyZoomParam
---@param IsAngledSight boolean
---@param Alpha number
function UBaseFPPComponent:UpdateScopeCameraOffsets(Param, IsAngledSight, Alpha) end

---@param type EScopeMeshAnimType
function UBaseFPPComponent:SwitchScopeMeshAnim(type) end

---@param WeaponID number
---@param ScopeID number
function UBaseFPPComponent:InitScopeZoom(WeaponID, ScopeID) end

---@param WeaponID number
---@param ScopeID number
---@return string
function UBaseFPPComponent:GetScopeZoomKey(WeaponID, ScopeID) end

---@param WeaponID number
---@param ScopeID number
---@return number
function UBaseFPPComponent:GetScopeZoomValue(WeaponID, ScopeID) end

---@return boolean
function UBaseFPPComponent:IsUseZoomScope() end

---@return boolean
function UBaseFPPComponent:IsCurWeaponAttachedAngledSight() end

---@return boolean
function UBaseFPPComponent:HaveAngledSight() end

---@param Slot ESurviveWeaponPropSlot
---@return boolean
function UBaseFPPComponent:HaveAngledSightBySlot(Slot) end

---@param Param FDollyZoomParam
---@param SourceLoc FVector
---@param TargetLoc FVector
---@param alpha number
---@param WeaponMesh UMeshComponent
---@param bSyncToPawn boolean
function UBaseFPPComponent:AngledSightMove(Param, SourceLoc, TargetLoc, alpha, WeaponMesh, bSyncToPawn) end

---@param type EWeaponAttachmentSocketType
function UBaseFPPComponent:HandleScopeMeshLoaded(type) end

---@return boolean
function UBaseFPPComponent:HaveWeaponSight() end

---@return boolean
function UBaseFPPComponent:IsWeaponSight() end

---@param weapon ASTExtraShootWeapon
---@param state boolean
function UBaseFPPComponent:SetWeaponSightState(weapon, state) end

---@param weapon ASTExtraShootWeapon
---@return boolean
function UBaseFPPComponent:IsWeaponSightByWeapon(weapon) end

---@return boolean
function UBaseFPPComponent:CheckPawnIsAutonomousOrObTarget() end

---@return number
function UBaseFPPComponent:IsUseCameraProcess() end

---@param alpha number
function UBaseFPPComponent:SwitchRearSightTimelineUpdate(alpha) end

---@param TargetRearSightSocketIndex number
function UBaseFPPComponent:SwitchRearSightTimelineFinish(TargetRearSightSocketIndex) end

---@param InDestinFOV number
---@param InSpeed number
---@param InDelayTime number
---@param AFOVCurve UCurveFloat
function UBaseFPPComponent:SetCompoundBowSecondFOV(InDestinFOV, InSpeed, InDelayTime, AFOVCurve) end

---@param InDeltaTime number
function UBaseFPPComponent:TickCompoundBowSecondFOV(InDeltaTime) end

function UBaseFPPComponent:ResetCompoundBowSecondFOV() end

---@param InDeltaTime number
function UBaseFPPComponent:TickBoltCameraTransform(InDeltaTime) end

function UBaseFPPComponent:HandleCompleteParallelAnimationEvaluationEnd() end

function UBaseFPPComponent:ScopeSightTypeInScoping() end

function UBaseFPPComponent:EventReportFOV() end
