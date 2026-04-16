---@meta

---通用抛体V2
---@class APESkillProjectileBase: AUniversalProjectileCore
---@field GameplayTags FGameplayTagContainer
---@field EffectList ULuaArrayHelper<FProjectileEffectWrapper>
---@field bEnableSyncMoveCondition boolean
---@field bEnableActionEffectSimulate boolean
---@field ActionTypeSet ULuaSetHelper<EProjectileActionType>
---@field IntervalEffectWrapperList ULuaArrayHelper<FProjectileEffectWrapper>
---@field DelayEffectActionRecordList ULuaArrayHelper<FDelayEffectActionRecord>
---@field ReplicatedActionEffect ULuaSetHelper<UProjectileEffectBase>
---@field HitGroundOffset number
---@field HitGroundStartOffset number
---@field HitGroundEndOffset number
---@field CurrentSplitTimes number
---@field CurrentTargetBounceTimes number
---@field EnableClientTranslationSmooth boolean
---@field TempCacheEffectWrapperList ULuaArrayHelper<FProjectileEffectWrapper>
---@field bNeedImpactOnceWhenReplace boolean
---@field ProjectileModifierRepData FProjectileModifierRepData
local APESkillProjectileBase = {}

---Event
---碰撞时处理Action前的额外接口
---生效范围：SC
---@param ImpactResult FHitResult
---@param TargetData FPESkillTargetData
function APESkillProjectileBase:ReceiveOnImpactBP(ImpactResult, TargetData) end

---Event
---碰撞处理Action结束后的额外接口
---生效范围：SC
---@param ImpactResult FHitResult
---@param TargetData FPESkillTargetData
function APESkillProjectileBase:PostReceiveOnImpactBP(ImpactResult, TargetData) end

---Event
---完全停止后的额外接口
---生效范围：SC
---@param LastHitResult FHitResult
function APESkillProjectileBase:ReceiveStoppedBP(LastHitResult) end

---@param ApplyCondition EProjectileEffectApplyCondition
---@param TargetData FPESkillTargetData
function APESkillProjectileBase:CheckAndRpcTrigger(ApplyCondition, TargetData) end

---@param ApplyCondition EProjectileEffectApplyCondition
---@param TargetData FPESkillTargetData
function APESkillProjectileBase:StartIntervalTrigger(ApplyCondition, TargetData) end

---@param ApplyCondition EProjectileEffectApplyCondition
---@param TargetData FPESkillTargetData
function APESkillProjectileBase:RPC_Multicast_TriggerEffect(ApplyCondition, TargetData) end

---@param bEnable boolean
function APESkillProjectileBase:SetEffectSimulateEnable(bEnable) end

---@param Condition EProjectileEffectApplyCondition
---@param ActionEffectClass UProjectileActionEffectBase
function APESkillProjectileBase:GetActionEffectsByClass(Condition, ActionEffectClass) end

---@param Condition EProjectileEffectApplyCondition
function APESkillProjectileBase:LocalClearConditionActionEffects(Condition) end

function APESkillProjectileBase:LocalClearAllActionEffects() end

---@param GroupKey string
---@return FProjectileGroupData
function APESkillProjectileBase:RegisterProjectileGroup(GroupKey) end

---@param GroupKey string
---@return FProjectileGroupData
function APESkillProjectileBase:GetProjectileGroupDataByKey(GroupKey) end

---@param GroupKey string
---@param GroupData FProjectileGroupData
function APESkillProjectileBase:UpdateProjectileGroupDataByKey(GroupKey, GroupData) end

---@param Condition EProjectileEffectApplyCondition
function APESkillProjectileBase:RPC_Multicast_ClearConditionActionEffects(Condition) end

function APESkillProjectileBase:RPC_Multicast_ClearAllActionEffects() end

---@param DelayTime number
function APESkillProjectileBase:DelayDestroy(DelayTime) end

---@param ApplyCondition EProjectileEffectApplyCondition
---@param TargetData FPESkillTargetData
function APESkillProjectileBase:ReceiveConditionTrigger(ApplyCondition, TargetData) end

function APESkillProjectileBase:RPC_Client_ResetSetProjectile() end

function APESkillProjectileBase:LocalSetProjectileVisible() end

---@param GroupKey string
---@param GroupData FProjectileGroupData
function APESkillProjectileBase:ProjectileGroupChanged(GroupKey, GroupData) end

function APESkillProjectileBase:MarkDestroy() end

function APESkillProjectileBase:DelayDestroyFinish() end

function APESkillProjectileBase:OnRep_TempRepMovementPath() end

---@param Point1 FVector
---@param Point2 FVector
function APESkillProjectileBase:ShowClientDebugPoint(Point1, Point2) end

function APESkillProjectileBase:OnRep_ProjectileModifierRepData() end
