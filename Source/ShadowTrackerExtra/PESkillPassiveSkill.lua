---@meta

---被动技能实体
---@class UPESkillPassiveSkill: UPersistEffectSkill
---@field PassiveSkillType ESkillEventPassiveType
---@field MergeType EPEPassiveSkillMergeType
---@field EventContainerList FPESkillEventContainerList
---@field ConditionContainer FPESkillConditionContainer
---@field ActionContainer FPESkillActionContainer
---@field MaxActivationCount number @最大激活次数，-1表示无限制
---@field SyncClientActionParams boolean
---@field PassiveSkillDisplayType EPEPassiveSkillDisplayType
---@field CurrentSkillState EPSkillEventStateType
---@field CurrentActivationCount number
---@field CurrentStackCount number
local UPESkillPassiveSkill = {}

---@return boolean
function UPESkillPassiveSkill:CanRemoveStack() end

function UPESkillPassiveSkill:RemoveStack() end

---@param Reason EPESkillDeActivateReason
function UPESkillPassiveSkill:DeActivateSkill(Reason) end

---@param DeltaTime number
function UPESkillPassiveSkill:EvaluateSkillActivation(DeltaTime) end

function UPESkillPassiveSkill:ActivateSkillInternal() end

---@param InSelectDirection FVector
---@param InSelectTransforms ULuaArrayHelper<FTransform>
---@param InSelectTargetActors ULuaArrayHelper<AActor>
function UPESkillPassiveSkill:MulticastSyncPassiveSkillData(InSelectDirection, InSelectTransforms, InSelectTargetActors) end

---@param InEvent UPESkillEventBase
function UPESkillPassiveSkill:OnSkillEventActivateCallBack(InEvent) end

---@param Target UPersistEffectBase
function UPESkillPassiveSkill:OnMerge(Target) end

---@param Target UPersistEffectBase
---@return boolean
function UPESkillPassiveSkill:CanMerge(Target) end

---Event
---生效范围：服务器&客户端
---当 被动技能 堆叠层数变化时调用，比如技能被合并时
---@param PreNum number @上一次的堆叠层数
---@param CurrentNum number @当前的堆叠层数
function UPESkillPassiveSkill:OnStackChange_BP(PreNum, CurrentNum) end

---@param Reason EPESkillDeActivateReason
function UPESkillPassiveSkill:OnClientDeactivate(Reason) end

---@param Reason EPESkillDeActivateReason
function UPESkillPassiveSkill:OnClientDeactivate_BP(Reason) end

---Event
---生效范围：服务器
---当 pes.BlockPassiveSkillClientRPC 开关关闭时，由蓝图决定是否允许客户端 RPC 激活被动技能
---@return boolean @true 允许激活，false 拒绝激活
function UPESkillPassiveSkill:CanClientRPCActivate_BP() end
