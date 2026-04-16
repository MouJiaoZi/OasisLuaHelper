---@meta

---@class UGameplayTask_RegistPossess: UUAEGameplayTask
---@field OnMeetEvent FRegistRegistEventDelegate
---@field PossessFail FRegistRegistEventDelegate
---@field PossessSuccess FRegistRegistEventDelegate
local UGameplayTask_RegistPossess = {}

---@param PC ASTExtraPlayerController
function UGameplayTask_RegistPossess:OnReject(PC) end

---@param PC AController
---@param Reason EUnPossessReason
function UGameplayTask_RegistPossess:OnRejectIncludingAI(PC, Reason) end

---@param Character ASTExtraBaseCharacter
---@param Value FRegistPossessValue
---@return boolean
function UGameplayTask_RegistPossess:CanbePossess(Character, Value) end
