---@meta

---@class APVECommonPlayerState: ASTExtraPlayerState
---@field PVETotalScore number
local APVECommonPlayerState = {}

---@param TempScore number
function APVECommonPlayerState:OnAddScoreByPVE(TempScore) end

function APVECommonPlayerState:OnRep_PVETotalScore() end
