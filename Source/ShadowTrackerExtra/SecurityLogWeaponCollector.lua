---@meta

---@class USecurityLogWeaponCollector: UActorComponent
local USecurityLogWeaponCollector = {}

---@param TargetChangeSlot ESurviveWeaponPropSlot
function USecurityLogWeaponCollector:OnCharacterUsingWeaponChanged(TargetChangeSlot) end

---@param DamageDetail FShootWeaponDamageEvent
---@param HitData FBulletHitInfoUploadData
---@param LocalHitData FLocalShootHitData
function USecurityLogWeaponCollector:OnCharacterWeaponShootHit(DamageDetail, HitData, LocalHitData) end

---@param DamageDetail FShootWeaponDamageEvent
---@param HitData FBulletHitInfoUploadData
---@param LocalHitData FLocalShootHitData
function USecurityLogWeaponCollector:OnShootAsianTarget(DamageDetail, HitData, LocalHitData) end

---@param InHitActor AActor
---@param TargetInfo FSecurityLogHitTargetInfo
function USecurityLogWeaponCollector:OnCharacterShootTarget(InHitActor, TargetInfo) end

---@param Mode EPlayerCameraMode
function USecurityLogWeaponCollector:OnCharacterAimModeChanged(Mode) end

function USecurityLogWeaponCollector:OnCharacterWeaponStartFire() end
