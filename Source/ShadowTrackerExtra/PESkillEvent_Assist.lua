---@meta

---@class UPESkillEvent_Assist: UPESkillEventBase
local UPESkillEvent_Assist = {}

---@param InPlayerController AController
---@param AssistNum number
---@param PlayerKey number
function UPESkillEvent_Assist:OnPlayerAssistNumUpdate(InPlayerController, AssistNum, PlayerKey) end

---@param BC ASTExtraBaseCharacter
---@param PC AController
function UPESkillEvent_Assist:OnPawnChange(BC, PC) end
