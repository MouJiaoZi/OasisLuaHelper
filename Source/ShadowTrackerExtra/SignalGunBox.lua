---@meta

---@class FSignalGunBoxGenerator
---@field ResID number
---@field Count number
---@field Weight number
FSignalGunBoxGenerator = {}


---@class ASignalGunBox: AActor
---@field BoxName string
---@field RandGenList ULuaArrayHelper<FSignalGunBoxGenerator>
local ASignalGunBox = {}


---@class ASignalGunSmoke: AActor
---@field SmokeStartScaleDistance number
---@field SmokeEndScaleDistance number
---@field SmokeStartScaleValue number
---@field SmokeEndScaleValue number
---@field TrackBlockDistance number
local ASignalGunSmoke = {}

---@param scale number
function ASignalGunSmoke:DistanceScalerChangedEvent(scale) end
