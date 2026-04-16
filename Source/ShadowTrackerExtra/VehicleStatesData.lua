---@meta

---@class ESTExtraVehicleStates
---@field EVS_NONE number
---@field EVS_SPEED number
---@field EVS_ELECTRONIC_FAILURE number
---@field EVS_INVINCIBLE number
---@field EVS_MAX number
ESTExtraVehicleStates = {}


---@class FVehicleStatesData
---@field id number
---@field time number
---@field always boolean
FVehicleStatesData = {}


---@class FVehicleStatesDataRecord
---@field id number
---@field time number
---@field always boolean
---@field param1 number
---@field param2 number
FVehicleStatesDataRecord = {}


---@class UVehicleStatesDataTable: UDataAsset
---@field arr ULuaArrayHelper<FVehicleStatesDataRecord> @Tire friction scales for specific physical materials.
local UVehicleStatesDataTable = {}
