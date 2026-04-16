---@meta

---@class EPESkillCancelTaskAction
---@field PSkillCancelTaskAction_Deactivate number @直接取消技能
---@field PSkillCancelTaskAction_Event number @仅发送取消事件
EPESkillCancelTaskAction = {}


---@class IPETaskCancelBtnInterface
IPETaskCancelBtnInterface = {}

---@param CancelText string
function IPETaskCancelBtnInterface:SetText(CancelText) end


---@class UPESkillTask_ShowCancelBtn: UPESkillTaskBase
---@field CancelBtnDesc string
---@field CancelAction EPESkillCancelTaskAction
---@field PESkillCancelPath FSoftClassPath
local UPESkillTask_ShowCancelBtn = {}

function UPESkillTask_ShowCancelBtn:OnCancelTrigger() end

function UPESkillTask_ShowCancelBtn:ServerNotifyCancelEvent() end

---@param BC ASTExtraBaseCharacter
---@param PC AController
function UPESkillTask_ShowCancelBtn:OnPawnChange(BC, PC) end
