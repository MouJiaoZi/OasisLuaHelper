---@meta

---@class ERecoveryReasonType
---@field ERecoveryReason_Medicine number @药物
---@field ERecoveryReason_Energy number @能量
---@field ERecoveryReason_RescueByTeammate number @队友救援
---@field ERecoveryReason_Skill number @技能
---@field ERecoveryReason_Init number @初始化
---@field ERecoveryReason_Max number
ERecoveryReasonType = {}


---@class UUAESkillAction_Recovery: UUAESkillAction
---@field PropertyName string
---@field RecoveryType ERecoveryType
---@field RecoveryValue number
---@field RecoveryLimit number
---@field RunOnServer boolean
---@field ReasonType ERecoveryReasonType
---@field bPercent boolean
---@field HasEffectWhenNearDeath boolean
---@field bCanBeIgnoredByGM boolean
local UUAESkillAction_Recovery = {}

---@param TargetCharacter ASTExtraBaseCharacter
---@param ChangedValue number
function UUAESkillAction_Recovery:OnRecoveryFinishBP(TargetCharacter, ChangedValue) end

function UUAESkillAction_Recovery:OnRecoveryBeginBP() end
