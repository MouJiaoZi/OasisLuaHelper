---@meta

---@class ARailMovableEntity: AUAEMovableEntity
---@field InvincibleState ULuaArrayHelper<eEntityState>
---@field bUseBornAnim boolean
---@field bCheckGridBound boolean
---@field bDebugGridPath boolean
---@field bDynamicActiveClientMovementComp boolean
local ARailMovableEntity = {}

---@param Activate boolean
function ARailMovableEntity:Client_ActivateMovement(Activate) end
