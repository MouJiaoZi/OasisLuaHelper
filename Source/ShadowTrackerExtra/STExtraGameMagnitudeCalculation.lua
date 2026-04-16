---@meta

---伤害公式
---@class USTExtraGameMagnitudeCalculation: UGameMagnitudeCalculationBase, ILocalCalculationVariableSupportInterface
---@field DamageModifyMethodMask number
---@field bConsiderAIPlayer boolean
---@field LocalCalculationVariableOpCaches ULuaArrayHelper<FLocalCalculationVariableOpCache>
local USTExtraGameMagnitudeCalculation = {}

---@param AttrTarget AActor
---@param AttrName string
---@return number
function USTExtraGameMagnitudeCalculation:GetAttrValueSafety(AttrTarget, AttrName) end

---@param AttrTarget AActor
---@param AttrContainer FGameAttributeContainer
---@return number
function USTExtraGameMagnitudeCalculation:GetAttrValueSafetyByContainer(AttrTarget, AttrContainer) end

---@param AttrTarget AActor
---@param AttrContainer FGameAttributeContainer
---@return number
function USTExtraGameMagnitudeCalculation:GetAttrValueRawByContainerRef(AttrTarget, AttrContainer) end

---@param Context FGameMagnitudeContext
---@param OutDamageTypeData FRestrictedDamageTypeData
---@param OutSrcDamage number
function USTExtraGameMagnitudeCalculation:GetDamageTypeData(Context, OutDamageTypeData, OutSrcDamage) end

---@param Context FGameMagnitudeContext
---@return number
function USTExtraGameMagnitudeCalculation:GetSourceDamageMagnitude(Context) end

---@param Context FGameMagnitudeContext
---@return EAvatarDamagePosition
function USTExtraGameMagnitudeCalculation:GetDamagePositionType(Context) end

---获取是否是爆头伤害
---@param Context FGameMagnitudeContext @公式的上下文对象
---@return boolean @是否是爆头伤害
function USTExtraGameMagnitudeCalculation:IsHeadDamage(Context) end
