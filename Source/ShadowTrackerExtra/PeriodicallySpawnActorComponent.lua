---@meta

---@class UPeriodicallySpawnActorComponent: UGameModeBaseComponent
---@field PositionMax FVector
---@field PositionMin FVector
---@field ActorLength number
---@field ActorWidth number
---@field ActorHeight number
---@field ActorNum number
---@field HalfForbiddenAreaLength FVector
---@field ZPositionList ULuaArrayHelper<number>
---@field ActorList ULuaArrayHelper<AActor>
---@field ActorsToIgnore ULuaArrayHelper<AActor>
---@field ActorsToFind ULuaArrayHelper<AActor>
---@field bIsAttachedToGround boolean
---@field GroundHeight number
---@field bIsActorWithoutOverlap boolean
---@field Stream FRandomStream
local UPeriodicallySpawnActorComponent = {}

---@param ActorClass UClass
---@param Num number
function UPeriodicallySpawnActorComponent:RandomPositionSpawnActor(ActorClass, Num) end

---@param ActorClass UClass
---@param Num number
function UPeriodicallySpawnActorComponent:RandomPositionSpawnActorWithSpecificHeight(ActorClass, Num) end

---@param ActorClass UClass
---@param OriginPoint FVector
---@param Radius number
---@param Num number
---@param bZAtOrigin boolean
function UPeriodicallySpawnActorComponent:RandomSpawnActorInCicle(ActorClass, OriginPoint, Radius, Num, bZAtOrigin) end

function UPeriodicallySpawnActorComponent:DestroyAllActor() end

---@param InSpawnActorClass UClass
---@param InPositionMax FVector
---@param InPositionMin FVector
---@param InActorLength number
---@param InActorWidth number
---@param InActorHeight number
function UPeriodicallySpawnActorComponent:ComponentParamInit(InSpawnActorClass, InPositionMax, InPositionMin, InActorLength, InActorWidth, InActorHeight) end

---@param Actor AActor
---@param Transform FTransform
function UPeriodicallySpawnActorComponent:ActorParamInit(Actor, Transform) end

---@param Transform FTransform
---@return boolean
function UPeriodicallySpawnActorComponent:SetTransform(Transform) end

---@param Transform FTransform
---@return FVector
function UPeriodicallySpawnActorComponent:GetGroundLocation(Transform) end

---@param Transform FTransform
---@return FVector
function UPeriodicallySpawnActorComponent:GetTransformLocation(Transform) end

---@param Transform FTransform
---@return FQuat
function UPeriodicallySpawnActorComponent:GetTransformRotation(Transform) end

---@param Transform FTransform
---@return FVector
function UPeriodicallySpawnActorComponent:GetTransformScale(Transform) end

---@param Transform FTransform
---@param Location FVector
function UPeriodicallySpawnActorComponent:SetTransformLocation(Transform, Location) end

---@param Transform FTransform
---@param Rotaion FQuat
function UPeriodicallySpawnActorComponent:SetTransformRotation(Transform, Rotaion) end

---@param Transform FTransform
---@param Scale3D FVector
function UPeriodicallySpawnActorComponent:SetTransformScale(Transform, Scale3D) end

---@param PointPosition FVector
---@param Actor AActor
---@return FVector
function UPeriodicallySpawnActorComponent:ModifyForbiddenAreaPointPosition(PointPosition, Actor) end

---@param Transform FVector
---@param MinPoint FVector
---@param MaxPoint FVector
---@return boolean
function UPeriodicallySpawnActorComponent:CheckPointInArea(Transform, MinPoint, MaxPoint) end
