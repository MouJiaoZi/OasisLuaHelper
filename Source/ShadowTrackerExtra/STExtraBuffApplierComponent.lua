---@meta

---@class EBuffApplierCondition
---@field BuffAppCondition_InSight number @视野内
---@field BuffAppCondition_InnerRange number @有效距离内
---@field BuffAppConditio_Default number @默认
EBuffApplierCondition = {}


---@class FBuffApplierConditionPair
---@field ConditionVar EBuffApplierCondition
---@field IsShowDebugLine boolean
---@field bIsOnlyPickBaseCharacter boolean
---@field bIsOnlyPickMonster boolean
---@field InSightCheckAngle number
---@field InnerRangeDistance number
---@field CurveExpirePerDistances ULuaArrayHelper<UCurveFloat>
---@field BuffNameArray ULuaArrayHelper<string>
---@field BuffBlackboardInfo ULuaMapHelper<string, FUAEBlackboardParameter>
---@field IsUseCustomCampJudgment boolean
---@field IsIgnoreOwnersTeammate boolean
---@field IsIgnoreNonTeammate boolean
---@field IsIgnoreOwner boolean
---@field bNeedRefreshBuffInRange boolean
---@field IsRemoveBuffWhenOutRange boolean
---@field DataVersion number
---@field Targets ULuaArrayHelper<AActor>
FBuffApplierConditionPair = {}


---@class USTExtraBuffApplierComponent: UActorComponent
---@field OverlapCheckComponnentName string
---@field BuffConditionArray ULuaArrayHelper<FBuffApplierConditionPair>
---@field CheckPeriod number
---@field IsCheckingBlock boolean
---@field IsIgnoreThrower boolean
---@field IsRemoveBuffWhenOutRange boolean
---@field bNeedRefreshBuffInRange boolean
---@field bDisableClearBuff boolean
---@field ServerIsHeadVisibleOffsetForProne FVector
---@field IgnoredActorClasses ULuaArrayHelper<AActor>
---@field OwnerTeamID number
local USTExtraBuffApplierComponent = {}

---@param enable boolean
function USTExtraBuffApplierComponent:SetIsEnableChecking(enable) end

---@param bWantsIgnore boolean
function USTExtraBuffApplierComponent:SetIgnoreTeammate(bWantsIgnore) end

function USTExtraBuffApplierComponent:CheckOverlapOnce() end

---@param ConditionIndex number
---@param OutTargets ULuaArrayHelper<AActor>
function USTExtraBuffApplierComponent:CheckOverlapTargets(ConditionIndex, OutTargets) end

---设置黑板参数到指定的 ConditionPair
---@param ConditionIndex number
---@param BuffName string
---@param BlackboardParam FUAEBlackboardParameter
function USTExtraBuffApplierComponent:SetBuffBlackboardParameter(ConditionIndex, BuffName, BlackboardParam) end

---@param Target AActor
---@return boolean
function USTExtraBuffApplierComponent:ShouldAddBuffOnTarget(Target) end

---@param Target AActor
---@return boolean
function USTExtraBuffApplierComponent:ShouldAddBuffForCustomCampCheck(Target) end

---@param reson string
function USTExtraBuffApplierComponent:ClearAllActorBuff(reson) end
