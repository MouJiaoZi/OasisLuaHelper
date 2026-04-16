---@meta

---@class FEngineData
---@field TorqueCurve ULuaArrayHelper<number>
FEngineData = {}


---@class UVehicleVarComponent: UVehicleComponent
local UVehicleVarComponent = {}

---@param Index number
function UVehicleVarComponent:Client_GetEngineDataReq(Index) end

---@param Index number
---@param ClientEngineData FEngineData
function UVehicleVarComponent:Server_GetEngineDataRsp(Index, ClientEngineData) end

---@param Index number
---@param ServerEngineData FEngineData
function UVehicleVarComponent:Client_SetEngineDataReq(Index, ServerEngineData) end
