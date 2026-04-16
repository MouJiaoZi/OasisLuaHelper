---@meta

---@class FOnSprintArmLengthTooShortToHidden : ULuaMulticastDelegate
FOnSprintArmLengthTooShortToHidden = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsNewHidden: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSprintArmLengthTooShortToHidden:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsNewHidden boolean
function FOnSprintArmLengthTooShortToHidden:Broadcast(bIsNewHidden) end


---@class UCustomSpringArmComponent: USTExtraSpringArmComponent
---@field SprintArmLengthTooShortToHiddenDelegate FOnSprintArmLengthTooShortToHidden
---@field SpringArmLengthModifier1 number
---@field bDrawDebugLineAndShap boolean
---@field PerspectiveMode EPerspectiveMode
---@field PerspectiveModeSpringArmParamMaps ULuaMapHelper<EPerspectiveMode, FSpringArmParams>
---@field ModifierTPPTemplate USpringArmModifier
---@field ModifierFPPTemplate USpringArmModifier
---@field FreeCameraTemplate USpringArmFreeCamera
---@field FreeCamRotationReturnRate number
---@field bIsShoulderMode boolean
---@field ShoulderCameraData FCameraOffsetData
---@field bViewAtActor boolean @固定看的是非人物角色，比如乘坐龙舟鼓位时,始终看的是鼓
---@field CameraRelativeActorRot FRotator
---@field CameraRelativeActorLoc FVector
---@field SocketOffsetPitchHipMapIn FVector2D
---@field SocketOffsetPitchHipMapOut FVector2D
---@field SocketOffsetZRatioLengthMapIn FVector2D
---@field SocketOffsetZRatioLengthMapOut FVector2D
---@field DefaultSocketOffset FVector
---@field SpringArmRestoreInterpSpeed number
---@field NeedTraceHeadCollision boolean
---@field RefreshLagInUpdate boolean
---@field LandingHeavyCameraOffsetDurationTime number
---@field LandingHeavyCameraOffsetPlaySpeed number
---@field ResultActor AActor
---@field bNeedAddTargetOffset boolean
---@field bIsPlayingCurveAnim boolean
---@field OffsetCountTime number
---@field OffSetDurTime number
---@field RevertMoveSpeed number
---@field PrevRelativeTrans FTransform
---@field PrevRelativeSocketLocation FVector
---@field PrevRelativeSocketRotation FQuat
---@field PrevCameraUseControlRotation boolean
---@field bBlocked boolean
---@field HiddenSelfSpringArmLenthThreshold number
---@field bIsLastTickHidden boolean
---@field PreviewPerspectiveMode EPerspectiveMode
---@field PreviewDataType ECameraDataType
---@field PreviewNames ULuaArrayHelper<string>
---@field ActiveCurveModifier FCameraOffsetCurveDataModifier
---@field bTPPUseViewTranslated boolean
local UCustomSpringArmComponent = {}

---@param DeltaTime number
function UCustomSpringArmComponent:UpdateSocketOffset(DeltaTime) end

---@param bEnabled boolean
---@param Time number
function UCustomSpringArmComponent:DelayRotationLagEnabled(bEnabled, Time) end

---@param CameraDataType ECameraDataType
---@param IsEnable boolean
function UCustomSpringArmComponent:SetCameraDataEnable(CameraDataType, IsEnable) end

---@param CameraDataType EFPPCameraDataType
---@param IsEnable boolean
function UCustomSpringArmComponent:SetFPPCameraDataEnable(CameraDataType, IsEnable) end

---@param CameraDataName string
---@param IsEnable boolean
function UCustomSpringArmComponent:SetCameraDataEnableByName(CameraDataName, IsEnable) end

---@param CustomCameraData FCameraOffsetData
---@param IsEnable boolean
function UCustomSpringArmComponent:SetCustomCameraDataEnable(CustomCameraData, IsEnable) end

---@param CustomCameraData FCameraOffsetData
---@param IsEnable boolean
function UCustomSpringArmComponent:SetCustomCameraDataValueEnable(CustomCameraData, IsEnable) end

---@param CameraDataType ECameraDataType
---@return boolean
function UCustomSpringArmComponent:IsCameraDataEnable(CameraDataType) end

---@param bShoulder boolean
function UCustomSpringArmComponent:SetShoulderCameraMode(bShoulder) end

function UCustomSpringArmComponent:DelayRotationLagEnabledEnd() end

---重构freecamera防止小眼睛状态下镜头闪动
---@param DeltaTime number
function UCustomSpringArmComponent:UpdateFreeCamera(DeltaTime) end

---@param deltaRot FRotator
---@param IsShouldAdditiveDeltaRot boolean
---@return FRotator
function UCustomSpringArmComponent:SetFreeCameraInput(deltaRot, IsShouldAdditiveDeltaRot) end

---@param bEnabled boolean
function UCustomSpringArmComponent:SetFreeCameraAutoReturn(bEnabled) end

function UCustomSpringArmComponent:ResetFreeCamera() end

---@param min number
---@param max number
function UCustomSpringArmComponent:SetFreeCameraPitchLimit(min, max) end

---@return FRotator
function UCustomSpringArmComponent:GetLookRotation() end

---@return boolean
function UCustomSpringArmComponent:GetUsePawnControlRotation() end

---@param LastFrameVelocity FVector
function UCustomSpringArmComponent:EnterLandingHeavy(LastFrameVelocity) end

---@param Mode EPerspectiveMode
function UCustomSpringArmComponent:SwitchPerspectiveMode(Mode) end

---@param IsEnable boolean
function UCustomSpringArmComponent:EnableCameraCurveModify(IsEnable) end

---@param Name string
---@return boolean
function UCustomSpringArmComponent:IsCameraCurveModifyEnabled(Name) end

function UCustomSpringArmComponent:CheckCameraModifyPoseData() end

---@param InUse boolean
function UCustomSpringArmComponent:SetTPPUseViewTranslated(InUse) end
