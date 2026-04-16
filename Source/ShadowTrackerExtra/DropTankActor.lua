---@meta

---@class ADropTankActor: AActor, IRegionObjectInterface
local ADropTankActor = {}

---@param Distance number
function ADropTankActor:ChangeNetCullDistance(Distance) end

function ADropTankActor:OnSpawnMonsterEvent() end

function ADropTankActor:PlayFXInClientEvent() end

function ADropTankActor:PlayFXInClientEvent_BP() end
