---@meta

---@class IAreaEffectInterface
IAreaEffectInterface = {}

---@param EnteringActor AActor
---@param AreaComponent UOverlapCheckAreaComponent
---@param AreaController ACustomAreaControllerActor
function IAreaEffectInterface:OnActorEnterArea(EnteringActor, AreaComponent, AreaController) end

---@param LeavingActor AActor
---@param AreaComponent UOverlapCheckAreaComponent
---@param AreaController ACustomAreaControllerActor
function IAreaEffectInterface:OnActorLeaveArea(LeavingActor, AreaComponent, AreaController) end

---@param DeltaTime number
---@param AreaController ACustomAreaControllerActor
---@param ActorsInArea ULuaArrayHelper<AActor>
function IAreaEffectInterface:OnAreaTick(DeltaTime, AreaController, ActorsInArea) end

---@param TargetActor AActor
---@param AreaController ACustomAreaControllerActor
---@return boolean
function IAreaEffectInterface:CanApplyToActor(TargetActor, AreaController) end

---@return string
function IAreaEffectInterface:GetEffectID() end
