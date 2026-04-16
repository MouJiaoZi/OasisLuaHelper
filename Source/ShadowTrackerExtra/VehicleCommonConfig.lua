---@meta

---@class FVehicleTypeConfig
---@field VehiclePCTipsUIType EVehiclePCTipsUIType
---@field VehicleBaseType ESTExtraVehicleBaseType
FVehicleTypeConfig = {}


---@class UVehicleCommonConfig: UDataAsset
---@field Sfx_EngineLoop_NearWaterSurface ULuaMapHelper<string, string>
---@field VehicleTypeConfigMap ULuaMapHelper<ESTExtraVehicleType, FVehicleTypeConfig>
---@field PCTipsUITypeMap ULuaMapHelper<ESTExtraVehicleType, EVehiclePCTipsUIType>
---@field NeedCheckEnterOrExitVehicleRequestIntervalTimeList ULuaArrayHelper<ESTExtraVehicleType>
---@field FailReasonToTipsID ULuaMapHelper<EVehicleFailReason, number>
---@field VehiclePerformanceConfigMap ULuaMapHelper<number, UVehiclePerformanceConfig>
---@field ForceEnableMovablePlatformAdapterGameModeIDs ULuaArrayHelper<string>
---@field GeneralVehicleScaleSkillHandle UVehicleScaleSkillHandle
local UVehicleCommonConfig = {}

---@param Vehicle ASTExtraVehicleBase
---@return FSoftObjectPath
function UVehicleCommonConfig:Get_Sfx_EngineLoop_NearWaterSurface(Vehicle) end
