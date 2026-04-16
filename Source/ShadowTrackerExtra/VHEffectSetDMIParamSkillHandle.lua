---@meta

---@class EVehicleEffectParamType
---@field EVEPT_Default number @默认
---@field EVEPT_LinearVelocity number @线速度向量(世界坐标系)
---@field EVEPT_LinearSpeed number @线速度大小(cm/s)
---@field EVEPT_LinearSpeedKMH number @线速度大小(km/h)
---@field EVEPT_AngularVelocity number @角速度(degree/s)(世界坐标系)
---@field EVEPT_LocalAngularVelocity number @角速度(degree/s)(载具坐标系)
---@field EVEPT_YawAngularVelocity number @Yaw方向角速度(degree/s)(世界坐标系)
---@field EVEPT_RollAngularVelocity number @Roll方向角速度(degree/s)(世界坐标系)
---@field EVEPT_PitchAngularVelocity number @Pitch方向角速度(degree/s)(世界坐标系)
---@field EVEPT_LocalYawAngularVelocity number @Yaw方向角速度(degree/s)(载具坐标系)
---@field EVEPT_LocalRollAngularVelocity number @Roll方向角速度(degree/s)(载具坐标系)
---@field EVEPT_LocalPitchAngularVelocity number @Pitch方向角速度(degree/s)(载具坐标系)
EVehicleEffectParamType = {}


---@class FVehicleEffectParamConfig
---@field EffectMaterialParamName string
---@field EffectParamType EVehicleEffectParamType
FVehicleEffectParamConfig = {}


---@class FVehicleEffectParamArray
---@field EffectParamConfigs ULuaArrayHelper<FVehicleEffectParamConfig>
FVehicleEffectParamArray = {}


---@class FVehicleEffectSetDMIParamConfig
---@field EffectName string
---@field EffectParamMap ULuaMapHelper<number, FVehicleEffectParamArray>
FVehicleEffectSetDMIParamConfig = {}


---载具特效通用设置参数技能 Tick更新指定特效的指定Param的数值
---@class UVHEffectSetDMIParamSkillHandle: UVehicleSkillBaseHandle
---@field EffectsList ULuaArrayHelper<FVehicleEffectSetDMIParamConfig>
---@field UpdateParamInterval number
---@field BlendSpeed number
---@field UpdateParamTimer number
local UVHEffectSetDMIParamSkillHandle = {}

---@param DeltaTime number
function UVHEffectSetDMIParamSkillHandle:TickUpdateEffect(DeltaTime) end

---@param Vehicle ASTExtraVehicleBase
---@param ParamType EVehicleEffectParamType
---@param OutResult FVector
---@return number
function UVHEffectSetDMIParamSkillHandle:GetValueByType(Vehicle, ParamType, OutResult) end
