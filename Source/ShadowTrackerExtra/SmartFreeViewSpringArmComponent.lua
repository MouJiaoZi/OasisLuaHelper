---@meta

---@class USmartFreeViewSpringArmComponent: USpringArmComponent
---@field UseRotationLimit boolean
---@field PitchMin number
---@field PitchMax number
---@field ExtraInputKeepTime number
---@field ExtraInputResetSpeed number
---@field bStickToTargetRotation boolean
---@field RInterpSpeed number
local USmartFreeViewSpringArmComponent = {}

---@param InPlayerController ASTExtraPlayerController
function USmartFreeViewSpringArmComponent:InitForPC(InPlayerController) end

function USmartFreeViewSpringArmComponent:Reset() end

---@param InPitch number
---@param InYaw number
---@param Loc FVector2D
function USmartFreeViewSpringArmComponent:HandlePCInput(InPitch, InYaw, Loc) end
