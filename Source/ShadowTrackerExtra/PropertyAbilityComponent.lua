---@meta

---@class UPropertyAbilityComponent: UActorComponent, IPropertyAbilityInterface
---@field Health number
---@field HealthMax number
---@field SpeedScale number
---@field DamageScale number
---@field TakeDamageScale number
---@field AttrId number
---@field AIAttrInfoTableName string
---@field ListenAttrValueChanged ULuaArrayHelper<string>
local UPropertyAbilityComponent = {}

---@param InSpeedScale number
---@return number
function UPropertyAbilityComponent:SetSpeedScale(InSpeedScale) end

---@return number
function UPropertyAbilityComponent:GetSpeedScale() end

---@param InHealth number
---@return number
function UPropertyAbilityComponent:SetHealthSafety(InHealth) end

---@return number
function UPropertyAbilityComponent:GetHealthSafety() end

---@param AddHealth number
---@return number
function UPropertyAbilityComponent:AddHealthSafety(AddHealth) end

---@return boolean
function UPropertyAbilityComponent:IsAlive() end

---@param AttrName string
---@param CurValue number
function UPropertyAbilityComponent:InternalAddAttrValueChangedDelegate(AttrName, CurValue) end

---@param PrevHealthMax number
function UPropertyAbilityComponent:OnRep_HealthMax(PrevHealthMax) end

---@param PrevHealth number
function UPropertyAbilityComponent:OnRep_Health(PrevHealth) end
