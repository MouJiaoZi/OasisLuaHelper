---@meta

---@class UWeaponAimAssistComponent: UActorComponent
---@field LockSensitivity number
---@field Tags ULuaArrayHelper<string>
local UWeaponAimAssistComponent = {}

---@param startPoint FVector
---@param pawn ASTExtraPlayerCharacter
---@return boolean
function UWeaponAimAssistComponent:CanEnemeyRaycastReach(startPoint, pawn) end

---@param startPoint FVector
---@param pawn ASTExtraPlayerCharacter
---@return boolean
function UWeaponAimAssistComponent:CheckSmoke(startPoint, pawn) end
