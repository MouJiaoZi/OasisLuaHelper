---@meta

---@class EUGCHPBarShowMode
---@field Always number @实时显示
---@field TakeDamage number @受击显示
---@field BeAimAt number @瞄准显示
---@field LockPlayer number @锁定玩家时显示
EUGCHPBarShowMode = {}


---@class EShowHPBarDamageType
---@field OnlyFromInstigator number @仅伤害来源显示
---@field BothInstigatorAndCamp number @伤害来源同阵营均显示
EShowHPBarDamageType = {}


---怪物血条
---@class UUGCGenericCharacterPositionWidget: UObjectPositionWidget
---@field bBindHPChange boolean
---@field bBindNameChange boolean
---@field LocOffset FVector
---@field bDeadHide boolean
---@field DeadLocOffset FVector
---@field bUseHelmetSocket boolean
---@field HelmetSocketName string
---@field HelmetSocketOffset FVector
---@field OnHPChangeDelegate FOnAttrValueChangedDynamicDelegate
---@field bShowWhenOcclusionHide boolean
---@field MaxAlwaysShowDistance number
---@field ShowDuration number
---@field bShowWhenTakeDamage boolean
---@field bShowWhenLockPlayer boolean
---@field bShowWhenBeAimAt boolean
---@field BeAimAtMaxShowDistanceOffect number
---@field MaxShowDistance number
---@field CampFilter number
---@field DamageFilter EShowHPBarDamageType
---@field bPassDamageFilter boolean
local UUGCGenericCharacterPositionWidget = {}

---@param AttrName string
---@param InHPCurrent number
function UUGCGenericCharacterPositionWidget:OnCharacterHPChange(AttrName, InHPCurrent) end

---@param Name string
function UUGCGenericCharacterPositionWidget:OnCharacterNameChange(Name) end

---@param InHPCurrent number
---@param InHPMax number
function UUGCGenericCharacterPositionWidget:BP_CharacterHPChange(InHPCurrent, InHPMax) end

---@param Name string
function UUGCGenericCharacterPositionWidget:BP_CharacterNameChange(Name) end

function UUGCGenericCharacterPositionWidget:BP_InitPreview() end

---@param DamageInstigatorPawn AActor
function UUGCGenericCharacterPositionWidget:OnTakeDamageLogicInClient(DamageInstigatorPawn) end
