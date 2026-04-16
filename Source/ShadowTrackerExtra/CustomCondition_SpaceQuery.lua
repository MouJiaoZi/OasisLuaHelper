---@meta

---@class UCustomCondition_SpaceQuery: UUAESkillCondition
---@field QueryActorClass ASpaceQueryActor
---@field bDSOnly boolean
---@field RotationOffset FRotator
---@field LocationOffset FVector
---@field bUseNativePassCondition boolean
local UCustomCondition_SpaceQuery = {}


---@class ASpaceQueryActor: AActor
local ASpaceQueryActor = {}

---@return boolean
function ASpaceQueryActor:QueryPassed() end

function ASpaceQueryActor:GetAllOverlappingActors() end

---@param bPass boolean
function ASpaceQueryActor:DrawDebugStuff(bPass) end
