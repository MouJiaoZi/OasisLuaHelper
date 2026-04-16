---@meta

---带主端预测的技能实,目前暂未有技能实装，待测试
---@class UPESkillWithPredict: UPersistEffectSkill
local UPESkillWithPredict = {}

---生效范围：SC
---释放技能带主端预测
function UPESkillWithPredict:ActivateSkillWithPredict() end

---生效范围：SC
---跳转状态带主端预测
---@param StateName string
---@param EnterTime number
---@param bPause boolean
function UPESkillWithPredict:JumpToStateWithPredict(StateName, EnterTime, bPause) end

---@param TimeStamp number
function UPESkillWithPredict:ServerActivateSkillWithPredict(TimeStamp) end

function UPESkillWithPredict:OnActivateFailed() end

---@param TargetStateIndex number
---@param ClientPredictID number
---@param TimeStamp number
---@param EnterTime number
---@param bPause boolean
function UPESkillWithPredict:ServerJumpToStateWithPredict(TargetStateIndex, ClientPredictID, TimeStamp, EnterTime, bPause) end

---@param FailedStateIndex number
function UPESkillWithPredict:OnJumpToStateFailed(FailedStateIndex) end

---@param PreIndex FActivityStateRep
function UPESkillWithPredict:OnRep_CurrentStateIndexInfo(PreIndex) end

function UPESkillWithPredict:OnActivatePredict_BP() end

function UPESkillWithPredict:OnActivateFailed_BP() end

---@param StateName string
function UPESkillWithPredict:OnJumpToStateFailed_BP(StateName) end
