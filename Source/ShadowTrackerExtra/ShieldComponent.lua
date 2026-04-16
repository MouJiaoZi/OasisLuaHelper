---@meta

---@class UShieldComponent: UActorComponent
---@field ShieldValue number
---@field ShieldMax number
---@field OnShieldValueChange FShieldValueChange
---@field OnShieldMaxChange FShieldValueChange
local UShieldComponent = {}

---@param Value number
function UShieldComponent:ChangeShield(Value) end

---@param Value number
function UShieldComponent:ChangeShieldMax(Value) end

---@return string
function UShieldComponent:GetShieldAttributeName() end

---@return string
function UShieldComponent:GetShieldMaxAttributeName() end

---@param PrevValue number
function UShieldComponent:OnRep_ShieldValue(PrevValue) end

---@param PrevValue number
function UShieldComponent:OnRep_ShieldMax(PrevValue) end

---@param PrevValue number
function UShieldComponent:OnAttr_ShieldValue(PrevValue) end

---@param PrevValue number
function UShieldComponent:OnAttr_ShieldMax(PrevValue) end
