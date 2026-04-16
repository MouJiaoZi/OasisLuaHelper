---@meta

---@class FOccupationSkillConfig
---@field SkillClass AUTSkill
---@field SkillUIHandle number
---@field SkillActiveLevel number
---@field SkillGroupIndex number
FOccupationSkillConfig = {}


---职业组件
---@class UOccupationManagerComponent: UActorComponent
---@field WeakSkillManagerPtr UUAESkillManagerComponent
---@field OccupationLevel number
---@field OldOccupationLevel number
---@field OccupationID number
---@field OccupationSkillsConfig ULuaArrayHelper<FOccupationSkillConfig>
---@field TipTimeInterval number
local UOccupationManagerComponent = {}

---@param DiffValue number
function UOccupationManagerComponent:ModifyOccupationLevel(DiffValue) end

---@param OldOccupationLevelValue number
function UOccupationManagerComponent:OnRep_OccupationLevel(OldOccupationLevelValue) end

function UOccupationManagerComponent:OnRep_WeakSkillManagerPtr() end

---@param Index number
---@param bActive boolean
function UOccupationManagerComponent:OnSkillActive(Index, bActive) end

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param DamageType number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function UOccupationManagerComponent:OnCharacterDead(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, DamageType, DamageTypeClass, IsHeadShotDamage, Context) end

function UOccupationManagerComponent:RecordSavePersonAddHealthData() end

function UOccupationManagerComponent:RecordSavePersonAccelateData() end

function UOccupationManagerComponent:RecordReduceMedicalCastTime() end
