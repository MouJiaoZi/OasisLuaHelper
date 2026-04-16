---@meta

---@class ASoccerFieldActorBase: AActivityBaseActor
---@field bUseAutoOverlap boolean
---@field CheckTime number
---@field OverlapComponentName string
local ASoccerFieldActorBase = {}

---@param DeltaTime number
function ASoccerFieldActorBase:CheckOverlapActor(DeltaTime) end

---@param OutActors ULuaArrayHelper<AActor>
function ASoccerFieldActorBase:OnOverlapActor(OutActors) end
