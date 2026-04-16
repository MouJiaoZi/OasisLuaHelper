---@meta

---@class AUGCLevelActor: APVECommonGameModeActor
local AUGCLevelActor = {}

---设置当前是第几关, 切换副本时调用
---@param Stage number
function AUGCLevelActor:SetCurrentStage(Stage) end

function AUGCLevelActor:OnRep_CurrentStage() end
