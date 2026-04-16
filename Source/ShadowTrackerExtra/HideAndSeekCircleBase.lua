---@meta

---@class AHideAndSeekCircleBase: AActor, IObjectPoolInterface
---@field DefaultObjectPoolSize number
---@field SpecificActorClass AActor
---@field ZCheckRange number
local AHideAndSeekCircleBase = {}

function AHideAndSeekCircleBase:BPOnRespawned() end

function AHideAndSeekCircleBase:BPOnRecycled() end

---@param Character ASTExtraPlayerCharacter
---@param Radius number
---@return boolean
function AHideAndSeekCircleBase:CheckActorInCircle(Character, Radius) end
