---@meta

---@class UMobaHealthManagerComponent: UActorComponent
---@field DoAutoHealthRecoveryInterval number
---@field LogCategory string
---@field HealthMaxRelatedAttrList ULuaArrayHelper<FGameAttributeContainer>
---@field NotZeroRefreshHealthMaxAttrNameList ULuaArrayHelper<string>
---@field HealthAutoRecoverTags ULuaArrayHelper<FGameplayTag>
---@field HealthStealRecoverTags ULuaArrayHelper<FGameplayTag>
---@field LowHealthScreenAppearanceCheckRate number
---@field LowHealthScreenAppearancePercent number
---@field LowHealthScreenAppearanceName string
local UMobaHealthManagerComponent = {}

---@param OldCharacter ASTExtraCharacter
---@param NewCharacter ASTExtraCharacter
function UMobaHealthManagerComponent:OnPocessCharacterChanged(OldCharacter, NewCharacter) end

---@param ChangedAttrName string
---@param ChangedAttrValue number
function UMobaHealthManagerComponent:OnEvent_HealthMaxRelatedAttrValueChange(ChangedAttrName, ChangedAttrValue) end

---@param OldHealth number
---@param OldHealthMax number
function UMobaHealthManagerComponent:DeferredRefreshHealthAfterRelatedAttrChanged(OldHealth, OldHealthMax) end

---@param DeltaSeconds number
---@param Level number
---@param BaseRecoveryValue number
---@param RecoveryUpgrade number
---@param RecoveryAddition number
---@param FinalRecovery number
function UMobaHealthManagerComponent:LogAutoHealthRecoveryInfo(DeltaSeconds, Level, BaseRecoveryValue, RecoveryUpgrade, RecoveryAddition, FinalRecovery) end

---@param Damage number
---@param IsAD boolean
---@param HealthStealFactor number
---@param HealthStealValue number
function UMobaHealthManagerComponent:LogStealHealthRecoveryInfo(Damage, IsAD, HealthStealFactor, HealthStealValue) end

---@param bPause boolean
function UMobaHealthManagerComponent:GM_PauseRecovery(bPause) end

function UMobaHealthManagerComponent:CheckLowHealthScreenAppearance() end
