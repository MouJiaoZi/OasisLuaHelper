---@meta

---@class FHelicopterTorqueCurveFloat
---@field CurveTime number
FHelicopterTorqueCurveFloat = {}


---@class ASTExtraHelicopterVehicle: ASTExtraVehicleBase
---@field ForWardTorqueCurveList ULuaArrayHelper<FHelicopterTorqueCurveFloat>
---@field RightTorqueCurveList ULuaArrayHelper<FHelicopterTorqueCurveFloat>
---@field IdleForwardCountTime number
---@field IdleRightCountTime number
---@field bShowDamagedEffect boolean
---@field FireAfterExplodeEffectName string
---@field bDisableSkeletonMeshUpdateWhenUsingWingsEffect boolean
---@field TopWingsEffectName string
---@field BackWingsEffectName string
---@field DustEffectName string
---@field WaterDustEffectName string
---@field SandDustEffectName string
---@field GrassDustEffectName string
---@field SnowDustEffectName string
---@field WaterPlaneEffectName string
---@field TopWingsBoneName string
---@field BackWingsBoneName string
---@field OnLandHeight number
---@field IdleSpeed number
---@field WingAccelerateMaxTime number
---@field showWaterPlaneffectHeight number
---@field WaterPlaneffectHeigh number
---@field LeftRightMinInput number
---@field bCanShowLandDustEffectOnLand boolean
---@field LandDustEffectHeight number
---@field HelicopterDestoryMeshAssetRef USkeletalMesh
---@field bUseBrokenMeshInSkin boolean
---@field TopWinsfxLoop FSTExtraVehicleSfxLoop
---@field TopWinsEnginefxLoop FSTExtraVehicleSfxLoop
---@field helicoterBurningfxLoop FSTExtraVehicleSfxLoop
---@field bUseFreeCameraModeSwitch boolean
---@field bUseFreeCameraMode boolean
---@field bEnableUpdateHelicopterTorqueSimulation boolean
---@field bEnableForceExitOnNoFuel boolean
---@field bForceActorForwardDontFollowControllerView boolean
---@field DefaultExpiredFuelConsumeFactor number
---@field ActivateWingsEffectWithTimerDelayTime number
local ASTExtraHelicopterVehicle = {}

---@return number
function ASTExtraHelicopterVehicle:GetHelicopeterForwardSpeed() end

---@return FVector
function ASTExtraHelicopterVehicle:GetRotationInputDir() end

---@return number
function ASTExtraHelicopterVehicle:GetDisToLand() end

---@param isStart boolean
function ASTExtraHelicopterVehicle:HelicopterEngineUpdate(isStart) end

---@param isStart boolean
function ASTExtraHelicopterVehicle:UpdateEngineStateByFuel(isStart) end

---@param isShow boolean
function ASTExtraHelicopterVehicle:UpdateWingsEffect(isShow) end

---@param isShow boolean
function ASTExtraHelicopterVehicle:UpdateDustEffect(isShow) end

---@param isShow boolean
---@param isNowSurfaceType boolean
---@param nowDustEffectName string
---@return boolean
function ASTExtraHelicopterVehicle:UpdateOneDustEffect(isShow, isNowSurfaceType, nowDustEffectName) end

---@param isFreeMode boolean
function ASTExtraHelicopterVehicle:SendToServerChangeCameraMode(isFreeMode) end

---@param isFreeMode boolean
function ASTExtraHelicopterVehicle:SendToAllChangeCameraMode(isFreeMode) end

function ASTExtraHelicopterVehicle:OnRep_UseFreeCameraMode() end

---@param NewValue boolean
function ASTExtraHelicopterVehicle:SetUseFreeCameraMode(NewValue) end

---@param isFreeMode boolean
function ASTExtraHelicopterVehicle:SetCameraMode(isFreeMode) end

---@return boolean
function ASTExtraHelicopterVehicle:ServerAuthorizeStateNativeEvent() end

---设置Timer更新直升机的旋翼特效，防止因动画蓝图没有触发Notify导致旋翼特效无法激活 --bug=124456629 【可后续热更】【疑难1等复现】【大战场】【载具】部署到直升机上看螺旋桨不转 当玩家A从司机位挪到乘客位置，玩家B在极短时间内通过Server端上司机位置，导致动画蓝图保持在loop状态 而因为玩家A从司机位挪到乘客位置会导致立即显示骨骼并且关闭特效，从而当玩家B上司机位置时并没有触发 HelicopterWingStartFinish的Notify，导致旋翼特效无法激活 因此需要一个定时器来检查，如果满足播放特效的条件，但是特效并未播放，则由定时器来播放
function ASTExtraHelicopterVehicle:ActivateWingsEffectWithTimer() end
