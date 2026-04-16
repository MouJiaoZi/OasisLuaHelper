---@meta

---@class UAutoTestInterface: UActorComponent
---@field FixedRandomStream FRandomStream
local UAutoTestInterface = {}

function UAutoTestInterface:StarJumpPlane() end

---@param x number
---@param y number
---@param z number
---@param MilliSec number
function UAutoTestInterface:StartFire(x, y, z, MilliSec) end

---@return number
function UAutoTestInterface:FRand() end
