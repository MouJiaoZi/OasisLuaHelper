---@meta

---@class UHardPointWidget: UUAEUserWidget
---@field Limit FVector4
---@field UIOffset FVector2D
local UHardPointWidget = {}

function UHardPointWidget:InitializeWidget() end

---@param HardPoint AHardPointActor
function UHardPointWidget:OnCurrentPointChanged(HardPoint) end

---@param HardPointActor AHardPointActor
---@param RemainActivateTime number
function UHardPointWidget:OnRemainTimeChanged(HardPointActor, RemainActivateTime) end

---@param HardPointActor AHardPointActor
---@param OccupyState EHardPointOccupyState
function UHardPointWidget:OnActorStateChanged(HardPointActor, OccupyState) end

---@param HardPointActor AHardPointActor
---@param CurrentOwnedTeamID number
function UHardPointWidget:OnOwnedIdChanged(HardPointActor, CurrentOwnedTeamID) end

---@return number
function UHardPointWidget:GetOccupiedTeamId() end

---@param State EHardPointOccupyState
---@param IsEnemy boolean
function UHardPointWidget:BP_UpdateState(State, IsEnemy) end

---@param Time number
function UHardPointWidget:BP_UpdateTime(Time) end

---@param PointName string
function UHardPointWidget:BP_UpdateHardpointName(PointName) end
