---@meta

---敌人类型
---@class EUGCHatredType
---@field Sense number
---@field Damage number
EUGCHatredType = {}


---AI基于仇恨值寻敌组件
---@class UUGCMobChooseEnemyComponent: UActorComponent
---@field SenseHatredDecreaseFactor_Distance number
---@field SenseHatredDecreaseGranularity_Distance number
---@field MinSenseHatredFactor_Distance number
---@field SenseHatredElapsedTime number
---@field BaseSenseHatredValue number
---@field DamageHatredDecreaseFactor_Distance number
---@field DamageHatredDecreaseGranularity_Distance number
---@field MinDamageHatredFactor_Distance number
---@field DamageHatredIncreaseFactor_Time number
---@field DamageHatredIncreaseGranularity_Time number
---@field DamageHatredElapsedTime number
---@field MinTargetEnemyLockTime number
---@field MaxTargetEnemyLockTime number
---@field TargetEnemyLockedTags ULuaArrayHelper<FGameplayTag>
---@field TargetEnemyChangeProbability number
local UUGCMobChooseEnemyComponent = {}

---@param InEnemy AActor
---@param HatredType EUGCHatredType
function UUGCMobChooseEnemyComponent:RemoveHatredItem(InEnemy, HatredType) end

---@param InEnemy AActor
function UUGCMobChooseEnemyComponent:AddSenseHatred(InEnemy) end

---@param InEnemy AActor
---@param Damage number
function UUGCMobChooseEnemyComponent:AddDamageHatred(InEnemy, Damage) end

---@param InEnemy AActor
function UUGCMobChooseEnemyComponent:RemoveEnemyItem(InEnemy) end

---@param Enemy AActor
---@return number
function UUGCMobChooseEnemyComponent:GetHatredValue(Enemy) end

function UUGCMobChooseEnemyComponent:GetEnemyHatredList() end

---@param Enemy AActor
---@param HatredValue number
function UUGCMobChooseEnemyComponent:AddHatredValue(Enemy, HatredValue) end

---@param Enemy AActor
---@param HatredValueOffset number
function UUGCMobChooseEnemyComponent:SetStaticEnemy(Enemy, HatredValueOffset) end

---@param Enemy AActor
function UUGCMobChooseEnemyComponent:RemoveStaticEnemy(Enemy) end

---@param Enemy AActor
---@param HatredValueOffset number
function UUGCMobChooseEnemyComponent:SetHatredValueOffset(Enemy, HatredValueOffset) end

---@param Enemy AActor
function UUGCMobChooseEnemyComponent:SetForceHatredTarget(Enemy) end

---@param Enemy AActor
function UUGCMobChooseEnemyComponent:SetTargetAsHeightHatredEnemy(Enemy) end

---@param Actor AActor
function UUGCMobChooseEnemyComponent:OnInHatred(Actor) end

---@param Actor AActor
function UUGCMobChooseEnemyComponent:OnOutHatred(Actor) end

---@param DeltaSeconds number
---@return boolean
function UUGCMobChooseEnemyComponent:CheckIsTargetEnemyLocked(DeltaSeconds) end
