---@meta

---@class UBTTaskNode_NewParachuteJumpBase: UBTTaskNode
---@field bDefaultUseNewAI boolean
---@field RandomStartJumpTime number
---@field RandomEndJumpTime number
---@field JumpRadius number
---@field JumpHeight number
---@field OpenParachuteHeight number
---@field OpenParachuteHeightVehicleCraft number
---@field CheckOpenParachuteFreq number
---@field DelayClearParachuteTime number
---@field CloseParachuteHeight number
---@field CheckCloseParachuteFreq number
---@field VehicleJumpProbabilityInVehicleCraft number
---@field LockFocusTime number
---@field bUseGameModeAIParachuteData boolean
---@field bMoveForwardWhenOpenParachute boolean
---@field LogAIPlayerPosInterval number
local UBTTaskNode_NewParachuteJumpBase = {}

---@param ControlledPawn ASTExtraPlayerCharacter
function UBTTaskNode_NewParachuteJumpBase:DelayClearParachute(ControlledPawn) end
