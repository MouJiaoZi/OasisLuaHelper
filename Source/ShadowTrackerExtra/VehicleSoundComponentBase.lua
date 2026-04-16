---@meta

---@class UVehicleSoundComponentBase: UActorComponent
---@field OnGassLowPrecent number
---@field bIsHaveSendLowGassEvent boolean
---@field bIsHaveSendPassagerGetOn boolean
---@field bIsHaveSendDirverGetOn boolean
local UVehicleSoundComponentBase = {}

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleSoundComponentBase:OnSeatAttached(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleSoundComponentBase:OnSeatDetached(Character, SeatType, IsSucc) end

---@param Fuel number
---@param FuelMax number
function UVehicleSoundComponentBase:OnFuelChange(Fuel, FuelMax) end

---@param MapMark FVector
function UVehicleSoundComponentBase:OnPassageMapMarkChange(MapMark) end
