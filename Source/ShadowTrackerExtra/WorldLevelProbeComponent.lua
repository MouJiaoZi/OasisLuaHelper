---@meta

---@class UWorldLevelProbeComponent: UGameModeProbeComponent
---@field IgnoreClassesNeverRemove ULuaArrayHelper<AActor>
---@field CurDestroyActorTime number
---@field CanUnLoadLand boolean
---@field CanUnLoadCollision boolean
---@field CurLandUpdateTime number
---@field UpdateLandState number
---@field SafeArearList ULuaArrayHelper<number>
---@field SafeArearCollisionList ULuaArrayHelper<number>
---@field DistanceToUnloadcollision number
local UWorldLevelProbeComponent = {}

function UWorldLevelProbeComponent:InitWorldActiveRange() end

function UWorldLevelProbeComponent:RefreshWorldActiveRange() end

---@param Location FVector
---@param Radius number
function UWorldLevelProbeComponent:DestroyNoActiveWorldActor(Location, Radius) end

---@param VisibleLocation FVector
---@param Radius number
---@return boolean
function UWorldLevelProbeComponent:GetAcitveCircleRange(VisibleLocation, Radius) end

---@return boolean
function UWorldLevelProbeComponent:NeedRefreshWorldRange() end

function UWorldLevelProbeComponent:TickDestoryNoAcitveWorldActor() end

---@param DeltaTime number
function UWorldLevelProbeComponent:TickLandState(DeltaTime) end

function UWorldLevelProbeComponent:TickSafeTileList() end
