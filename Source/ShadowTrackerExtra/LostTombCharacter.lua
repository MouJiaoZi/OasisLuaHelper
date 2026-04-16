---@meta

---@class ALostTombCharacter: ASTExtraZombieCharacter
---@field bIgnoreAttachmentRepWhenAttach number
local ALostTombCharacter = {}

---@param Center FVector
---@param Extent FVector
---@param Rotation FRotator
---@param distance number
---@return boolean
function ALostTombCharacter:BP_GetPickingBoundingBox(Center, Extent, Rotation, distance) end
