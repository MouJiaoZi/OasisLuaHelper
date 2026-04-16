---@meta

---@class UWeaponSpecificHandler: UWeaponLogicBaseComponent
---@field ItemDefineID FItemDefineID
---@field LogicSocket string
---@field AttachSocket string
---@field SurviveWeaponPropSlot ESurviveWeaponPropSlot
---@field AIMinAttackDist number
---@field AIMaxAttackDist number
---@field AIAttackDist number
local UWeaponSpecificHandler = {}

---@return number
function UWeaponSpecificHandler:GetAvailableBulletsNumInBackpack() end
