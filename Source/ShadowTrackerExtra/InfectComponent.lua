---@meta

---@class FInfectedTarget
---@field InfectTime number
FInfectedTarget = {}


---@class UInfectComponent: UActorComponent
---@field BuffName string
---@field MaxCount number
---@field Cooldown number
---@field InfectedTargets ULuaArrayHelper<FInfectedTarget>
local UInfectComponent = {}

---@param Targets ULuaArrayHelper<AActor>
function UInfectComponent:Infect(Targets) end
