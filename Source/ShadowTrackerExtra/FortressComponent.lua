---@meta

---@class UFortressComponent: UActorComponent
---@field bEnableNavigationConfig boolean
---@field DistanceLimitForRestartBehaviorTree number
---@field FortressNavMeshPathes ULuaArrayHelper<string>
---@field FortressNavLinkPathes ULuaArrayHelper<string>
---@field FortressFilters ULuaArrayHelper<UNavigationQueryFilter>
local UFortressComponent = {}

---@param AreaID number
---@return boolean
function UFortressComponent:EnableArea(AreaID) end

---@return number
function UFortressComponent:GetActiveAreaID() end

---@return boolean
function UFortressComponent:IsFortressMode() end

---@param bEnableGotoWater boolean
---@param AIC AAIController
function UFortressComponent:GetNavigationQueryFilterClass(bEnableGotoWater, AIC) end

---@param Type number
---@param bOpen boolean
---@param DoorLocations ULuaArrayHelper<FVector>
---@return boolean
function UFortressComponent:ToggleFortressDoor(Type, bOpen, DoorLocations) end

---@return boolean
function UFortressComponent:IsOuterDoorOpen() end

---@return boolean
function UFortressComponent:IsInnerDoorOpen() end
