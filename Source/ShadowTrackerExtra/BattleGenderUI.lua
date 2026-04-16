---@meta

---@class UBattleGenderUI: UWidget, ILuaInterface
---@field BoyBrush FSlateBrush
---@field GirlBrush FSlateBrush
local UBattleGenderUI = {}

---@param Gender number
function UBattleGenderUI:SetRealGender(Gender) end

---@param Sex number
---@param UID string
function UBattleGenderUI:SetGender(Sex, UID) end

---@return string
function UBattleGenderUI:GetLuaModule() end
