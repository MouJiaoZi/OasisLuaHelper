---@meta

---@class UNewFPPAnimFMObj_Jump: USTExtraAnimFMObj_Jump
---@field b_IsScoping_Jump boolean
---@field b_EnableScopingJumpOpt boolean
local UNewFPPAnimFMObj_Jump = {}

---@param oldMode EPlayerCameraMode
---@param newMode EPlayerCameraMode
function UNewFPPAnimFMObj_Jump:OnCameraModeChange(oldMode, newMode) end

---@param EventMsg string
function UNewFPPAnimFMObj_Jump:HandleOnAnimListChanged(EventMsg) end
