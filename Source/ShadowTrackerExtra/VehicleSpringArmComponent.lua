---@meta

---@class UVehicleSpringArmComponent: USTExtraVehicleSpringArmComponent
---@field MinForwardSpeedToRotationKMH number
---@field ForwardSpeedToRotSpeed number
---@field StayTimeBeforeReturning number
---@field bNeverAutoReturnSmartCamera boolean
---@field bForceAutoReturnSmartCamera boolean
---@field bHaveSmartCameraInput boolean
---@field ResetSmartCameraInputThreshold number
---@field bNeverAutoReturnSmartCameraConfig boolean
---@field ArmOriginProbeSize number
---@field RelativeToOwnerRotator FRotator
---@field SmartCamRotationExtra FRotator
---@field SmartCamRotationExtraPC FRotator
---@field CustomRotationExtra FRotator
---@field bOnlyUsePitchSmartCamRotationExtra boolean
---@field bSmartCamAutoReturnEnabled boolean
---@field SmartCameraStayTimer number
---@field bDrawDebugLineAndShap boolean
---@field ShouldInputExtraRotClampPitch boolean
---@field MinPitch number
---@field MaxPitch number
---@field bFollowWhenFreeCamera boolean
---@field bDontFollowParent boolean
---@field bDontFollowParentUesRotationLag boolean
---@field RevoerTimefromFreeTime number
---@field nowLeaveRecoverTime number
---@field DesiredCameraRotationLagPercent number
---@field PreviousComponentRotation FRotator
---@field FreeCamRotationExtra FRotator @重构freecamera防止小眼睛状态下镜头闪动
---@field bFreeCamAutoReturnEnabled boolean
---@field bLockFreeCamInPC boolean
---@field ResultMinPitch number
---@field ResultMaxPitch number
---@field bLimitYaw boolean
---@field MinYaw number
---@field MaxYaw number
---@field ArmOriginOffset FVector @相对于中心点的偏移
---@field bJetCamera boolean
---@field bNeedReturnWhenAbsoluteUp boolean
---@field bUsePlaneUpInterpolation boolean
---@field PlaneUpZThreshold number
---@field bEnablePlaneUpFollowWhileRotateBack boolean
---@field PlaneUpFollowIncreaseSpeed number
---@field PlaneUpFollowDecreaseSpeed number
---@field JetCameraLookAtSmooth number
---@field bUsingWorldSocketOffset boolean
---@field bResetSmartCameraToDefault boolean
---@field bKeepCameraLookAtVehicle boolean
---@field bMeshRootVehicle boolean
---@field bNotMeshRootVehicleUseRotLag boolean
---@field bUseCOMPosition boolean
---@field bNotBlendLocationWhenCameraHit boolean
---@field bForceUseHitLoc boolean
---@field FreeCamRotationReturnRate number
---@field SmartCameraDefaultRotation FRotator @Vehicle Smart Camera 功能 1. 允许玩家通过触摸调整相机视角 2. 根据载具移动速度自动回到尾随视角
---@field bAlwaysUsePawnYaw boolean
---@field bIgnoreInheritPitch boolean
---@field bForceUseJetCamera boolean
---@field UseSteerCamera boolean
---@field UseSteerCameraPitch boolean
---@field SteerCameraStartYaw number
---@field SteerCameraStartPitch number
---@field bIgnoreYawInput boolean
---@field bIgnorePitchInput boolean
---@field SteerCameraYaw number
---@field SteerCameraPitch number
---@field UpdateSkipped boolean
---@field ForcePitchZero boolean
---@field ForceYawZero boolean
---@field bForceUseCameraLag boolean
---@field bUpdateControllerView boolean
---@field bCameraRotationLagSpeedByAxis boolean
---@field CameraRotationLagSpeed_Roll number
---@field CameraRotationLagSpeed_Pitch number
---@field CameraRotationLagSpeed_Yaw number
---@field bUseCameraRotationLag_StableYaw boolean
---@field StableYaw_VehicleYawAngVelThreshold number
---@field StableYaw_RightInputThreshold number
---@field bUseCameraRotationLag_StablePitch boolean
---@field StablePitch_VehiclePitchAngVelThreshold number
---@field StablePitch_UpInputThreshold number
---@field LastFrameFinalDeltaRot FRotator
---@field CurrentYawChangeDirection number
---@field ChangeDirectionAccumulatedFrameCount number
---@field bCameraLocationLagSpeedByAxis boolean
---@field CameraLocationLagSpeed_X number
---@field CameraLocationLagSpeed_Y number
---@field CameraLocationLagSpeed_Z number
---@field bPC_WinClient_MouseMoveInput boolean
---@field PC_WinClient_MouseMoveInputInterval number
---@field CurDesiredRot FRotator
---@field CurPlaneUpFollowValue number
---@field bUseLagOnSpectator boolean
---@field bOnVehicleSpringArmComponentOpt_33 boolean
---@field bOnGetLookRotationAddSmartPC boolean
---@field bSteerYawDontOveride boolean
local UVehicleSpringArmComponent = {}

---@param bEnabled boolean
---@param Time number
---@param _RelativeRotator FRotator
function UVehicleSpringArmComponent:DelayRotationLagEnabled(bEnabled, Time, _RelativeRotator) end

---@param bDoTrace boolean
---@param bDoLocationLag boolean
---@param bDoRotationLag boolean
---@param DeltaTime number
function UVehicleSpringArmComponent:ForceUpdateDesiredArmLocation(bDoTrace, bDoLocationLag, bDoRotationLag, DeltaTime) end

---@param OwnerVehicle ASTExtraVehicleBase
---@return FRotator
function UVehicleSpringArmComponent:GetPawnViewRotationWithoutController(OwnerVehicle) end

---@param NewDesiredRot FRotator
function UVehicleSpringArmComponent:SetPreviousDesiredRot(NewDesiredRot) end

---@param LagScale number
---@param LagScaleTime number
function UVehicleSpringArmComponent:EnableCustomLagRotationFor(LagScale, LagScaleTime) end

---@param bEnbaleYawLimit boolean
---@param NewYawLimitMin number
---@param NewYawLimitMax number
function UVehicleSpringArmComponent:SetCameraLimitYaw(bEnbaleYawLimit, NewYawLimitMin, NewYawLimitMax) end

---@return boolean
function UVehicleSpringArmComponent:GetCameraLimitYaw() end

---@param OutMin number
---@param OutMax number
function UVehicleSpringArmComponent:GetCameraLimitYawAngle(OutMin, OutMax) end

function UVehicleSpringArmComponent:DelayRotationLagEnabledEnd() end

---@return boolean
function UVehicleSpringArmComponent:CanEnterFreeCamera() end

---重构freecamera防止小眼睛状态下镜头闪动
function UVehicleSpringArmComponent:StartFreeCamera() end

function UVehicleSpringArmComponent:ExitFreeCamera() end

---@param DeltaTime number
function UVehicleSpringArmComponent:UpdateFreeCamera(DeltaTime) end

---@param deltaRot FRotator
---@param IsShouldAdditiveDeltaRot boolean
---@return FRotator
function UVehicleSpringArmComponent:SetFreeCameraInput(deltaRot, IsShouldAdditiveDeltaRot) end

---@param bEnabled boolean
function UVehicleSpringArmComponent:SetFreeCameraAutoReturn(bEnabled) end

function UVehicleSpringArmComponent:ResetFreeCamera() end

---@param min number
---@param max number
function UVehicleSpringArmComponent:SetFreeCameraPitchLimit(min, max) end

---@return FRotator
function UVehicleSpringArmComponent:GetLookRotation() end

---@param DeltaTime number
function UVehicleSpringArmComponent:UpdateSmartCamera(DeltaTime) end

---@param Yaw number
---@param Pitch number
function UVehicleSpringArmComponent:AddSmartCameraInput(Yaw, Pitch) end

---@param bEnabled boolean
function UVehicleSpringArmComponent:SetSmartCameraAutoReturn(bEnabled) end

function UVehicleSpringArmComponent:ResetSmartCamera() end

---@param CameraDataType EVehCameraDataType
---@param IsEnable boolean
function UVehicleSpringArmComponent:SetCameraDataEnable(CameraDataType, IsEnable) end

---@param Current FRotator
---@param Target FRotator
---@param DeltaTime number
---@param Scale number
---@return FRotator
function UVehicleSpringArmComponent:RInterpRotationLagByAxis(Current, Target, DeltaTime, Scale) end

---@param Current FVector
---@param Target FVector
---@param DeltaTime number
---@param Scale number
---@return FVector
function UVehicleSpringArmComponent:RInterpLocationLagByAxis(Current, Target, DeltaTime, Scale) end

---@param bEnable boolean
function UVehicleSpringArmComponent:Set_PC_WinClient_MouseMoveInput(bEnable) end
