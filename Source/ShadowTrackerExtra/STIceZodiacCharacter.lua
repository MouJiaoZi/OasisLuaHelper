---@meta

---@class ASTIceZodiacCharacter: ASTAnimalCharacter
---@field CreateCatchEffect boolean
---@field bIsShowAttackTip boolean
---@field AttackTipID number
---@field AttackTipTime number
---@field OnDestroyTipID number
---@field MaxEndurance number
---@field CurEndurance number
---@field bIsWarm boolean
---@field bWarmOverAutoDestory boolean
---@field WarmStartTime number
---@field bIsSpawned boolean
---@field CanWarmTime number
---@field CurWarmTime number
---@field DeadAnimTime number
---@field CatchAnimTime number
---@field bIsWeak boolean
---@field bIsFlee boolean
---@field bIsBirthIsland boolean
local ASTIceZodiacCharacter = {}

---@param OwnerActor ASTExtraBaseCharacter
function ASTIceZodiacCharacter:OnUseZodiac(OwnerActor) end

function ASTIceZodiacCharacter:OnSpawnZodiac() end

function ASTIceZodiacCharacter:OnRep_CreateCatchEffect() end

---@param CatcheCharacter ASTExtraCharacter
function ASTIceZodiacCharacter:OnCatcheZodiac(CatcheCharacter) end

function ASTIceZodiacCharacter:OnDestroyZodiac() end

function ASTIceZodiacCharacter:BeforeDestroyZodiac() end

function ASTIceZodiacCharacter:StartDestroyZodiac() end

function ASTIceZodiacCharacter:PlayWaekPS() end

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param DamageType number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function ASTIceZodiacCharacter:HandlePlayerDeadth(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, DamageType, DamageTypeClass, IsHeadShotDamage, Context) end

---@param Player ASTExtraBaseCharacter
function ASTIceZodiacCharacter:SetOwnerCharacter(Player) end

---@param PromptID number
function ASTIceZodiacCharacter:ShowPrompt(PromptID) end

function ASTIceZodiacCharacter:ClearWarmUpState() end

function ASTIceZodiacCharacter:OnRep_IsSpawned() end

function ASTIceZodiacCharacter:OnRep_CurWarmTime() end

function ASTIceZodiacCharacter:OnDeadAnimOver() end

function ASTIceZodiacCharacter:OnCatchOver() end

---@param ReportCharacter ASTExtraCharacter
---@param Op number
function ASTIceZodiacCharacter:ReportIceZodiac(ReportCharacter, Op) end

---@param state number
function ASTIceZodiacCharacter:OnEnterState(state) end

---@param state number
function ASTIceZodiacCharacter:OnLeaveState(state) end

function ASTIceZodiacCharacter:BP_OnFlee() end
