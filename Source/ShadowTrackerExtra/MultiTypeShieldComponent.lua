---@meta

---@class FShieldTypeData
---@field MaxValue number
---@field CurrentValue number
FShieldTypeData = {}


---@class UMultiTypeShieldComponent: UActorComponent
---@field ShieldAttrDefine FGameAttributeContainer
---@field Type2ShieldData ULuaMapHelper<string, FShieldTypeData>
---@field CacheShieldAttrName string
local UMultiTypeShieldComponent = {}

---@param ShieldType string
---@param InitialValue number
---@param MaxValue number
function UMultiTypeShieldComponent:InitShieldByType(ShieldType, InitialValue, MaxValue) end

---@param ShieldType string
function UMultiTypeShieldComponent:RemoveShieldByType(ShieldType) end

---@param ShieldType string
---@return number
function UMultiTypeShieldComponent:GetShieldValueByType(ShieldType) end

---@param ShieldType string
---@return boolean
function UMultiTypeShieldComponent:IsShieldTypeExist(ShieldType) end

---@param ShieldType string
---@param ChangeValue number
---@return number
function UMultiTypeShieldComponent:ChangeShieldValueByType(ShieldType, ChangeValue) end

---@return number
function UMultiTypeShieldComponent:GetTotalShieldValue() end

---@param ConsumeValue number
function UMultiTypeShieldComponent:ConsumeShieldValueWithPercent(ConsumeValue) end
