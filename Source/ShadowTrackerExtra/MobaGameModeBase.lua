---@meta

---@class AMobaGameModeBase: ASTExtraGameFramework
local AMobaGameModeBase = {}

---@param RecoverValue number
---@param CauserInstigator AController
---@param TargetController AController
---@param RecoveryCauser AActor
---@param TargetActor AActor
---@param ExtraRecoverTags ULuaArrayHelper<FGameplayTag>
---@param ExtraResult FExtraDamageCalculationResult
---@return number
function AMobaGameModeBase:ModifyFinalRecoverHealth(RecoverValue, CauserInstigator, TargetController, RecoveryCauser, TargetActor, ExtraRecoverTags, ExtraResult) end

---@param PlayerKey number
function AMobaGameModeBase:NotifyNewAIPlayerEnter(PlayerKey) end

---@param FinalRecoverValue number
---@param CauserInstigator AController
---@param TargetController AController
---@param RecoveryCauser AActor
---@param TargetActor AActor
function AMobaGameModeBase:OnDirectRecoveryHealth_Moba(FinalRecoverValue, CauserInstigator, TargetController, RecoveryCauser, TargetActor) end

---@param PlayerKey string
function AMobaGameModeBase:LuaPreCreatePlayerController(PlayerKey) end
