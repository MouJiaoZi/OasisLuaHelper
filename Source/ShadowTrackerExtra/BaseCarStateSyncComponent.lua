---@meta

---@class FTeamVehicleInfo
---@field TeamID number
---@field CurrentHP number
---@field MaxHP number
---@field VehicleParachuteState EVehicleParachuteState
FTeamVehicleInfo = {}


---@class UBaseCarStateSyncComponent: UActorComponent
---@field TeamVehicleInfo FTeamVehicleInfo
---@field TeamVehicleMainUIName string
---@field CurTeamVehicleMarkerID number @س/Сӳ Begin **********************
---@field LastTeamVehicleLocation FVector
---@field TeamVehicleIconID number
local UBaseCarStateSyncComponent = {}

function UBaseCarStateSyncComponent:OnRep_TeamVehicleInfo() end

function UBaseCarStateSyncComponent:OnRep_LastTeamVehicleLocation() end

function UBaseCarStateSyncComponent:RefreshOnrepTeamVehicleLocation() end
