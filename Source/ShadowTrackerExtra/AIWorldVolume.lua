---@meta

---AAIWorldVolume
---@class AAIWorldVolume: AAIWorldVolumeBase, ICrowdAgentQueryInterface
---@field bMannualOverrideVolumeSize boolean
---@field OverrideVolumeSize FVector
---@field AIOcclusionFilePath string
---@field HousePathFilePath string
---@field AIGunLocsFilePath string
---@field LogicAreaFilePath string
---@field bDebugOnClient boolean
---@field bDebugLogAIOcclusionData boolean
---@field bDebugLoadAIOcclusionFileNoSM boolean
---@field AIWayPointShowTeam EAIWayPointDebugLineShowTeam
---@field AIWayPointShowType EAIWayPointDebugLineShowType
---@field bEnableAIDynamicWayPointDebugDraw boolean
---@field bTestOccupiedOcclusionPoint boolean
---@field bDrawNavModifierProxy boolean
---@field bOpenDebugDraw boolean
local AAIWorldVolume = {}

---@param Center FVector
---@param Range number
---@param OutCharacters ULuaArrayHelper<ACharacter>
---@param Type number
function AAIWorldVolume:QueryAllAICharacters(Center, Range, OutCharacters, Type) end

---@param DropedActor APickUpWrapperActor
---@param bAdd boolean
function AAIWorldVolume:UpdateDroppedPickupItem(DropedActor, bAdd) end

---@param PickupListActor APickUpListWrapperActor
---@param bAdd boolean
function AAIWorldVolume:UpdatePlayerBackpackWrapper(PickupListActor, bAdd) end

---@param Center FVector
---@param Radius number
---@param OutWayPoints ULuaArrayHelper<AAIWayPointActor>
---@param MaxAllowNum number
---@return number
function AAIWorldVolume:QueryAIWayPoints(Center, Radius, OutWayPoints, MaxAllowNum) end

---@param DamageableActor ADamageableActor
function AAIWorldVolume:AddDamageableActor(DamageableActor) end

---@param DamageableActor ADamageableActor
function AAIWorldVolume:RemoveDamageableActor(DamageableActor) end

---@param ActivityBaseActor AActivityBaseActor
function AAIWorldVolume:AddActivityBaseActor(ActivityBaseActor) end

---@param ActivityBaseActor AActivityBaseActor
function AAIWorldVolume:RemoveActivityBaseActor(ActivityBaseActor) end

---@param PickUpListWrapper APickUpListWrapperActor
function AAIWorldVolume:AddEscapeSupplyBoxWrappers(PickUpListWrapper) end

---@param PickUpListWrapper APickUpListWrapperActor
function AAIWorldVolume:RemoveEscapeSupplyBoxWrappers(PickUpListWrapper) end

---@param ElevatorWrapper AActivityBaseActor
function AAIWorldVolume:AddEscapeElevatorWrappers(ElevatorWrapper) end

---@param ElevatorWrapper AActivityBaseActor
function AAIWorldVolume:RemoveEscapeElevatorWrappers(ElevatorWrapper) end

---@param LostTombRollingBoulderWrapper AActor
function AAIWorldVolume:AddLostTombRollingBoulderWrappers(LostTombRollingBoulderWrapper) end

---@param LostTombRollingBoulderWrapper AActor
function AAIWorldVolume:RemoveLostTombRollingBoulderWrappers(LostTombRollingBoulderWrapper) end

---@param LostTombUnderworldSoliderWrapper AActor
function AAIWorldVolume:AddLostTombUnderworldSoliderWrapper(LostTombUnderworldSoliderWrapper) end

---@param LostTombUnderworldSoliderWrapper AActor
function AAIWorldVolume:RemoveLostTombUnderworldSoliderWrapper(LostTombUnderworldSoliderWrapper) end

---@param LostTombSkillActorWrapper AActor
function AAIWorldVolume:AddLostTombSkillActorWrapper(LostTombSkillActorWrapper) end

---@param LostTombSkillActorWrapper AActor
function AAIWorldVolume:RemoveLostTombSkillActorWrapper(LostTombSkillActorWrapper) end

---@param CargoShip AActor
function AAIWorldVolume:AddSuperPeopleCargoShipWrapper(CargoShip) end

---@param CargoShip AActor
function AAIWorldVolume:RemoveSuperPeopleCargoShipWrapper(CargoShip) end

---@param Rabbit AActor
function AAIWorldVolume:AddSuperPeopleRabbitFriendWrapper(Rabbit) end

---@param Rabbit AActor
function AAIWorldVolume:RemoveSuperPeopleRabbitFriendWrapper(Rabbit) end

---@param MagicCircleActor AActor
function AAIWorldVolume:AddYearBeastMagicCircle(MagicCircleActor) end

---@param MagicCircleActor AActor
function AAIWorldVolume:RemoveYearBeastMagicCircle(MagicCircleActor) end

---@param Area FBoxSphereBounds
function AAIWorldVolume:AddAITeleportForbiddenArea(Area) end

---@param Area FBoxSphereBounds
function AAIWorldVolume:RemoveAITeleportForbiddenArea(Area) end

---@param TestLoc FVector
---@return boolean
function AAIWorldVolume:IsInAITeleportForbiddenAreaXY(TestLoc) end

---@param LogicAreaLoc FVector
---@param bDefaultWalkable boolean
function AAIWorldVolume:BreakWall(LogicAreaLoc, bDefaultWalkable) end

---@param LogicAreaLoc FVector
function AAIWorldVolume:BreakHouse(LogicAreaLoc) end
