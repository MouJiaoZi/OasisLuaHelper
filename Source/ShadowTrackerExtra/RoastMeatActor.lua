---@meta

---@class ARoastMeatActor: AActor
---@field parentBonfire ABonfireActor
---@field AnimalType EAnimalType
---@field IsDone boolean
local ARoastMeatActor = {}

function ARoastMeatActor:OnRep_IsDone() end

function ARoastMeatActor:RecordRoastMeatSuccess() end

---@param msg string
function ARoastMeatActor:CastActorMsg(msg) end
