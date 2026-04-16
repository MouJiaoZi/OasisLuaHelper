---@meta

---@class UProjectileFunctionLibrary: UBlueprintFunctionLibrary
local UProjectileFunctionLibrary = {}

---@param TargetActors ULuaArrayHelper<AActor>
---@param HitResult FHitResult
---@param Origin FVector
---@param EndPoint FVector
---@param HitPartType EAvatarDamagePosition
---@return FPESkillTargetData
function UProjectileFunctionLibrary:MakePESkillTargetData(TargetActors, HitResult, Origin, EndPoint, HitPartType) end

---@param TargetData FPESkillTargetData
---@param TargetActors ULuaArrayHelper<AActor>
---@param HitResult FHitResult
---@param Origin FVector
---@param EndPoint FVector
---@param HitPartType EAvatarDamagePosition
function UProjectileFunctionLibrary:BreakPeSkillTargetData(TargetData, TargetActors, HitResult, Origin, EndPoint, HitPartType) end

---@param WorldContextObject UObject
---@param ConePos FVector
---@param Direction FVector
---@param ConeRadius number
---@param ConeAngle number
---@param ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@param ActorClassFilter UClass
---@param ActorsToIgnore ULuaArrayHelper<AActor>
---@param OutActors ULuaArrayHelper<AActor>
---@return boolean
function UProjectileFunctionLibrary:ConeOverlapActors(WorldContextObject, ConePos, Direction, ConeRadius, ConeAngle, ObjectTypes, ActorClassFilter, ActorsToIgnore, OutActors) end

---@param WorldContextObject UObject
---@param ConePos FVector
---@param Direction FVector
---@param ConeRadius number
---@param ConeAngle number
---@param ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@param ComponentClassFilter UClass
---@param ActorsToIgnore ULuaArrayHelper<AActor>
---@param OutComponents ULuaArrayHelper<UPrimitiveComponent>
---@return boolean
function UProjectileFunctionLibrary:ConeOverlapComponents(WorldContextObject, ConePos, Direction, ConeRadius, ConeAngle, ObjectTypes, ComponentClassFilter, ActorsToIgnore, OutComponents) end

---@param Target AActor
---@param SocketSelector FMeshSocketSelector
---@return FVector
function UProjectileFunctionLibrary:GetWorldPositionByTargetSocketSelector(Target, SocketSelector) end

---@param Owner ASTExtraBaseCharacter
function UProjectileFunctionLibrary:RefreshWeaponOwnerCollision(Owner) end

---@param ProjectileTemplate AUniversalProjectileCore
---@param Owner AActor
---@param InTransform FTransform
---@param ProjectileNum number
---@param Radius number
function UProjectileFunctionLibrary:SpawnRingProjectiles(ProjectileTemplate, Owner, InTransform, ProjectileNum, Radius) end

---@param ProjectileTemplate AUniversalProjectileCore
---@param Owner AActor
---@param InTransform FTransform
---@param ProjectileNum number
---@param FanAngle number
function UProjectileFunctionLibrary:SpawnFanProjectiles(ProjectileTemplate, Owner, InTransform, ProjectileNum, FanAngle) end

---@param ProjectileTemplate AUniversalProjectileCore
---@param Owner AActor
---@param InTransform FTransform
---@param ProjectileNum number
---@param ConeAngle number
function UProjectileFunctionLibrary:SpawnConeProjectiles(ProjectileTemplate, Owner, InTransform, ProjectileNum, ConeAngle) end

---@param Projectile APESkillProjectileBase
---@param GroupKey string
---@return FProjectileGroupData
function UProjectileFunctionLibrary:RegisterProjectileGroup(Projectile, GroupKey) end

---@param TargetActor AActor
---@param GroupKey string
---@return FProjectileGroupData
function UProjectileFunctionLibrary:GetProjectileGroup(TargetActor, GroupKey) end

---@param TargetActor AActor
---@param GroupKey string
function UProjectileFunctionLibrary:GetProjectileListByGroupKey(TargetActor, GroupKey) end
