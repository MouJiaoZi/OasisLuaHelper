---@meta

---@class UGameplayTask_ShowUI: UUAEGameplayTask
---@field UILoadFinish FUILoadFinishedDelegate
local UGameplayTask_ShowUI = {}

---@param PC ASTExtraPlayerController
function UGameplayTask_ShowUI:OnPlayerControllerBeginPlay(PC) end

function UGameplayTask_ShowUI:OnAsyncFinishShowUI() end
