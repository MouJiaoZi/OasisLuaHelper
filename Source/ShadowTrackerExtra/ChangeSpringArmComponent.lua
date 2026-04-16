---@meta

---@class UChangeSpringArmComponent: UActorComponent
---@field CameraData FCameraOffsetData
local UChangeSpringArmComponent = {}

---@param pawn ASTExtraPlayerCharacter
---@return boolean
function UChangeSpringArmComponent:EnableCustomCameraData(pawn) end

---@param pawn ASTExtraPlayerCharacter
function UChangeSpringArmComponent:DisableCustomCameraData(pawn) end
