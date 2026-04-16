---@meta

---@class UBattleItemValidator: UBaseItemReporter, ILuaInterface
---@field ReportTimes number
---@field ErrorType string
---@field IllegalModeSpecificItems ULuaSetHelper<number>
---@field IllegalValuableItems ULuaSetHelper<number>
local UBattleItemValidator = {}

---@return string
function UBattleItemValidator:GetLuaModule() end

---@param ItemID number
---@return boolean
function UBattleItemValidator:IsIllegalModeSpecificItem(ItemID) end

---@param ItemID number
---@return boolean
function UBattleItemValidator:IsIllegalValuableItem(ItemID) end

---@param ItemID number
function UBattleItemValidator:AddLegalValuableItem(ItemID) end
