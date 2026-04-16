---@meta

---@class FShipRouteProbability
---@field RouteActorTag string
---@field Probability number
FShipRouteProbability = {}


---@class FShipRouteData
---@field ShipClass AActor
---@field ShipRoutes ULuaArrayHelper<FShipRouteProbability>
---@field MinShipNum number
---@field MaxShipNum number
---@field bUseExistSimulateActor boolean
---@field ExistSimulateActorTag string
---@field ExistSimulateActorClass AActor
FShipRouteData = {}


---@class FSpawnedShipData
FSpawnedShipData = {}


---@class FRouteSplineEvent
---@field SplinePointIndex number
---@field EventHandlerName string
---@field bTriggeredOnServer number
---@field bTriggeredOnClient number
FRouteSplineEvent = {}


---@class AShipRouteSplineActor: AActor
---@field bUseRouteOwnerRelevant boolean
---@field RouteEvents ULuaArrayHelper<FRouteSplineEvent>
local AShipRouteSplineActor = {}

---@param PointIndex number
---@return string
function AShipRouteSplineActor:GetDebugText(PointIndex) end


---@class AShipRouteActor: AActor
---@field RouteGroups ULuaArrayHelper<FShipRouteData>
---@field DelaySpawnDuration number
---@field SpawnedShips ULuaArrayHelper<FSpawnedShipData>
---@field bDestroyRedundantRoutes boolean
---@field bDestroySelfAfterFinishSpawningShips boolean
local AShipRouteActor = {}

function AShipRouteActor:GatherRoutesAndSpawnShips() end

function AShipRouteActor:SpawnShips() end

---@param ShipRoutes FShipRouteData
---@param Num number
---@param OutRandomRoutes ULuaArrayHelper<FShipRouteProbability>
function AShipRouteActor:GetRandomShipRoute(ShipRoutes, Num, OutRandomRoutes) end

---@param RouteActor AActor
---@param OutLocation FVector
---@param OutRotation FRotator
function AShipRouteActor:GetShipRouteStartPoint(RouteActor, OutLocation, OutRotation) end

---@param NewShip AActor
function AShipRouteActor:InitNewShip(NewShip) end

---@param DeltaSeconds number
function AShipRouteActor:TickShips(DeltaSeconds) end

function AShipRouteActor:TestSpawn() end
