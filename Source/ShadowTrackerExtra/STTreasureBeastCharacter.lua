---@meta

---@class EBeastKind
---@field ECT_Normal number @普通年兽
---@field ECT_ConsumablesBeast number @消耗品年兽
---@field ECT_WeaponBeast number @武器年兽
---@field ECT_EquipmentBeast number @装备年兽
EBeastKind = {}


---@class ASTTreasureBeastCharacter: ASTAnimalCharacter
---@field MonsterName string
---@field DropOnceHealth number
---@field DamageDropMaps ULuaMapHelper<number, number>
---@field ProduceID_Die number
---@field InvincibleTimePreDeath number
---@field bNeedUpdateMapIcon boolean
---@field IconID number
---@field TickInterval number
---@field ShowIconDistanceSquared number
---@field HideIconDistanceSquared number
---@field BeastKind EBeastKind
---@field PickupRangeSquared number
---@field WeakParticleSysAttachedName string
---@field WeakParticleSysTransform FTransform
---@field bTakeCirclePoisonDamage boolean
---@field CirclePoisonDamage number
---@field CirclePoisonDamageInterval number
---@field bIsInvincible number
---@field SpawnTriggerLocation FVector
local ASTTreasureBeastCharacter = {}

---@param SpawnTriggerLoc FVector
function ASTTreasureBeastCharacter:SetSpawnTriggerLocation(SpawnTriggerLoc) end
