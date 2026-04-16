---@meta

---@class UPESkillEvent_RecoverBase: UPESkillEventBase
---@field eListenTimer ESkillEventRecoverListenTimer
---@field TagsMatchType EPEPassiveSkillTagsMatchType
---@field MatchTags FGameplayTagContainer
---@field RecoverValue FFloatSetter
---@field RecoverInstigator FActorSetter
---@field RecoverCauser FActorSetter
---@field RecoverTarget FActorSetter
local UPESkillEvent_RecoverBase = {}

---@param InRecoverValue number
---@param RecoveryInstigator AController
---@param RecoveryCauser AActor
---@param RecoverTags ULuaArrayHelper<FGameplayTag>
function UPESkillEvent_RecoverBase:OnPreRecoverHealthDelegate(InRecoverValue, RecoveryInstigator, RecoveryCauser, RecoverTags) end

---@param ActualRecoverValue number
---@param RecoveryInstigator AController
---@param RecoveryCauser AActor
---@param RecoverTags ULuaArrayHelper<FGameplayTag>
function UPESkillEvent_RecoverBase:OnPostRecoverHealthDelegate(ActualRecoverValue, RecoveryInstigator, RecoveryCauser, RecoverTags) end


---@class UPESkillEvent_VictimRecover: UPESkillEvent_RecoverBase
local UPESkillEvent_VictimRecover = {}


---@class UPESkillEvent_CauserRecover: UPESkillEvent_RecoverBase
local UPESkillEvent_CauserRecover = {}
