---@meta

---@class UGlobalSettingsComponent: UGameModeBaseComponent
local UGlobalSettingsComponent = {}

function UGlobalSettingsComponent:ApplyWorldOverrideSettings() end

---@param NewGravity number
function UGlobalSettingsComponent:SetWorldOverrideGravity(NewGravity) end

---@return number
function UGlobalSettingsComponent:GetFallingDamageModifier() end

---@param NewModifier number
function UGlobalSettingsComponent:SetFallingDamageModifier(NewModifier) end

---@return boolean
function UGlobalSettingsComponent:ShouldSkipNearDeath() end

---@param NewValue boolean
function UGlobalSettingsComponent:SetSkipNearDeath(NewValue) end
