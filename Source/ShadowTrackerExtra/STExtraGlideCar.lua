---@meta

---@class ESTExtraGlideCarGlideState
---@field Land number
---@field Acceleration number
---@field Glide number
ESTExtraGlideCarGlideState = {}


---@class FSTExtraGlideCarState
---@field State ESTExtraGlideCarGlideState
---@field StateTimer number
FSTExtraGlideCarState = {}


---龙腾战车-长城主题滑翔载具
---@class ASTExtraGlideCar: ASTExtraVehicleBase
---@field AccelerationExpected number @加速阶段的期望的加速度（km/h/s）
---@field AccelerationTime number @加速阶段的时间
---@field AccelerationMaxSpeed number @加速阶段的最大速度（km/h）
---@field AccelerateCDTime number @滑翔的CD（s）
---@field AccelerateCDReturnTime number @滑翔如果在多少秒内被终止了，那么返还一半的CD
---@field GlideTime number @滑翔阶段的时间
---@field MaxGlideTakeOffTime number @最大的起飞时间（单位s）（超过这个时间还没有起飞算作起飞失败）
---@field AccelerationFuelConsumeFactor number @加速后油耗系数
---@field CanAccelerateInAir boolean @是否允许在空中进行腾飞
---@field AccelerationFuelConsumeTime number @使用加速后油耗系数的时间（滑翔状态超过这个时间则回归正常油耗）
---@field GlideSmartCameraRotation FRotator @滑翔阶段使用的智能相机角度
---@field GlideSmartCameraBlendTime number @滑翔阶段智能相机角度的过渡时间
---@field LandSmartCameraRotation FRotator @陆地阶段使用的智能相机角度
---@field LandSmartCameraBlendTime number @陆地阶段智能相机角度的过渡时间
---@field ServerAuthorizeSpeed_Land number @陆地状态速度超过多少之后切换至服务器主控(km/h)
---@field ServerAuthorizeSpeed_Glide number @滑翔状态速度超过多少之后切换至服务器主控(km/h)
---@field ServerAuthorizeHeight_Land number @陆地状态超过多少离地高度之后设置服务器主控(cm)
---@field ServerAuthorizeHeight_Glide number @滑翔状态超过多少离地高度之后设置服务器主控(m)
---@field StartDropTime_Glide number @滑翔状态多少秒后预计开始下降
---@field CurrentState FSTExtraGlideCarState
---@field CurrentStateTimer number
---@field BeSuccesGlide boolean
---@field LastVehicleZ number
---@field CurVehicleZ number
---@field AccelerateCDTimer number
local ASTExtraGlideCar = {}

---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraGlideCar:HandleOnMeshHit(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end

---@return boolean
function ASTExtraGlideCar:IsMotorglider() end

---@return FVector
function ASTExtraGlideCar:GetRotationInputDir() end

function ASTExtraGlideCar:RefreshGlideTimer() end

---@param InState ESTExtraGlideCarGlideState
function ASTExtraGlideCar:ReqChangeState(InState) end

---@param InState ESTExtraGlideCarGlideState
function ASTExtraGlideCar:SetCurrentState(InState) end

---@return number
function ASTExtraGlideCar:GetCurrentStateTimer() end

function ASTExtraGlideCar:OnRep_CurrentState() end

function ASTExtraGlideCar:BPOnRep_CurrentState() end

---@param InCDTimer number
function ASTExtraGlideCar:SetAccelerateCDTimer(InCDTimer) end

---@param DeltaTime number
---@return boolean
function ASTExtraGlideCar:BPCheckCanGlide(DeltaTime) end

---@param DeltaTime number
---@return boolean
function ASTExtraGlideCar:BPCheckShouldLand(DeltaTime) end

---@param State ESTExtraGlideCarGlideState
---@return boolean
function ASTExtraGlideCar:BPCheckCanEnterState(State) end
