---@meta

---@class ATaserArcTrap: AActor
---@field CharacterAttachSockets ULuaArrayHelper<string>
---@field CharacterBuffName string
---@field DamageTypeClass UDamageType
---@field DamageItemChannels ULuaArrayHelper<ECollisionChannel>
---@field OverlappedItemClass ULuaArrayHelper<UClass>
---@field OverlappedCharacters ULuaSetHelper<ASTExtraCharacter>
---@field OverlappedVehicleAndItems ULuaSetHelper<AActor>
---@field CheckOverlappedActorsTimeInterval number
---@field DamageTimeInterval number
---@field DamagePerTimes number
---@field TrapLifeSpan number
---@field TrapTag string
---@field ArcConductionRadius number
---@field MaxArcConductionLayers number
---@field MaxArcConductionPlayers number
---@field bEnableArcConduction boolean
---@field bInitOverlappedItemClassFromWeapon boolean
---@field ReportEventID number
local ATaserArcTrap = {}

---@param OwnerActor AActor
function ATaserArcTrap:OnOwnerDestroyed(OwnerActor) end

---@param Hit FHitResult
---@param ShootWeapon AActor
function ATaserArcTrap:PostSpawnedByHitEffectAction(Hit, ShootWeapon) end

---@param Classes ULuaArrayHelper<UClass>
function ATaserArcTrap:InitOverlappedItemClass(Classes) end
