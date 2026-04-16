---@meta

---@class UReplicationControlComponent: UActorComponent
local UReplicationControlComponent = {}

---@param OldTarget AActor
function UReplicationControlComponent:OnRep_TargetEnemy(OldTarget) end

---@param NewTarget AActor
function UReplicationControlComponent:SetTargetEnemy(NewTarget) end
