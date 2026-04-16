---@meta

---@class ILimitationInterface
ILimitationInterface = {}

---@return number
function ILimitationInterface:GetPriority() end

---@param Tolerance number
---@return boolean
function ILimitationInterface:IsRendering(Tolerance) end

---@param IsShow boolean
function ILimitationInterface:SetEffectShow(IsShow) end

---@return FGameplayTagContainer
function ILimitationInterface:GetGameplayTags() end
