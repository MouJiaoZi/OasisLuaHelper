---@meta

---考虑客户端模拟和UI接口部分 备注
---@class AAcrobaticsRacingTrack: ARacingTrack
---@field FactorK number
---@field MultiDVMax number
---@field FactorA number
---@field FactorB number
---@field FactorJ number
---@field FactorC number
---@field BonusPow number
local AAcrobaticsRacingTrack = {}

---@param InPlayerKey number
---@param InVehicleStatComponent UVehicleStatComponent
---@param bIsInterrupt boolean
function AAcrobaticsRacingTrack:ReceiveVehicleLanded(InPlayerKey, InVehicleStatComponent, bIsInterrupt) end

---@param InPlayerKey number
---@param InVehicleStatComponent UVehicleStatComponent
function AAcrobaticsRacingTrack:ReceiveVehicleOnAir(InPlayerKey, InVehicleStatComponent) end
