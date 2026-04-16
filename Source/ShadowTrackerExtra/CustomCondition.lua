---@meta

---@class UCustomCondition: UObject
---@field CndOwner UObject
local UCustomCondition = {}

---@return boolean
function UCustomCondition:IsOK() end

---@param Owner UObject
function UCustomCondition:SetCndOwner(Owner) end
