---@meta

---@class APhotoChickenActor: AUAERegionActor
---@field MoveUnpossRange number
---@field TickOffsetTime number
local APhotoChickenActor = {}

---@param InCharacter ASTExtraPlayerCharacter
function APhotoChickenActor:InitPossessCharacter(InCharacter) end

function APhotoChickenActor:ClearPossessCharacter() end

function APhotoChickenActor:DealUnPossessCharacter() end
