---@meta

---@class EClearDroppedActorCategory
---@field None number @无
---@field PickupWrapper number @拾取物
---@field TombBox number @死亡盒子
---@field Projectile number @投掷物
EClearDroppedActorCategory = {}


---封装一些角色的静态操作方法
---@class UUAEClosure_WorldStaticFunction: UBlueprintFunctionLibrary
local UUAEClosure_WorldStaticFunction = {}

---@param TimeStamp string
---@return number
function UUAEClosure_WorldStaticFunction:GetEventTimeStampDiffTime(TimeStamp) end

---@param TimeStamp string
---@return FDateTime
function UUAEClosure_WorldStaticFunction:GetEventTimeStampDateTime(TimeStamp) end

---@param Actor AActor
---@param CompoentClass UActorComponent
function UUAEClosure_WorldStaticFunction:GetActorComponentsByClass(Actor, CompoentClass) end

---@param Actor AActor
function UUAEClosure_WorldStaticFunction:ActorUpdateOverlaps(Actor) end

---@param WorldContextObject UObject
---@param Transform FTransform
---@param Extent FVector
---@param IgnoreCategories ULuaArrayHelper<EClearDroppedActorCategory>
function UUAEClosure_WorldStaticFunction:ClearDroppedActorsWithinBoxOnServer(WorldContextObject, Transform, Extent, IgnoreCategories) end

---@param Comp UPrimitiveComponent
---@param InIgnoreActors ULuaArrayHelper<AActor>
---@param ObjectTypesCanBlockDamage ULuaArrayHelper<EObjectTypeQuery>
---@param Start FVector
---@param End FVector
---@param Rot FQuat
---@param BoxHalfExtent FVector
---@return boolean
function UUAEClosure_WorldStaticFunction:CheckSpaceCollision(Comp, InIgnoreActors, ObjectTypesCanBlockDamage, Start, End, Rot, BoxHalfExtent) end

---@param InBPDataTime FBPDataTime
---@param InDataTime FDateTime
---@return boolean
function UUAEClosure_WorldStaticFunction:CheckTimeValid(InBPDataTime, InDataTime) end

---@param UnixTime number
---@return FDateTime
function UUAEClosure_WorldStaticFunction:DateTimeFromUnixTimestamp(UnixTime) end

---@param OutObjects ULuaArrayHelper<UObject>
---@param WorldContextObject UObject
---@param ObjectLocation FVector
---@param RegionSize number
---@param bGetStatic boolean
function UUAEClosure_WorldStaticFunction:GetRegionObjectLists(OutObjects, WorldContextObject, ObjectLocation, RegionSize, bGetStatic) end

---@param BattleText string
---@param RemainTime number
---@return string
function UUAEClosure_WorldStaticFunction:FormatActivityCountdownText(BattleText, RemainTime) end
