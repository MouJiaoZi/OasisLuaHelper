---@meta

---@class EMeleeAttackType
---@field MeleeType_Ground number @地面普攻
---@field MeleeType_Air number @空中普攻
---@field MeleeType_Bash number @重击
EMeleeAttackType = {}


---Hit 逻辑信息
---@class FOnMeleeAttackInfoSkillV1
---@field HitAvatarPosition EAvatarDamagePosition
---@field HitBone string
---@field HitPosition FVector
---@field AttackDirection FVector
FOnMeleeAttackInfoSkillV1 = {}


---@class FOnMeleeAttackInfoWrapperSkillV1
---@field SkillUID number
---@field PhaseID number
---@field TimeSeconds number
---@field AttackInfos ULuaArrayHelper<FOnMeleeAttackInfoSkillV1>
FOnMeleeAttackInfoWrapperSkillV1 = {}


---@class FCachedMeleeAttackDamageSubmitInfo
---@field LastCachedTime number
---@field LastCachedInfo FMeleeAttackDamageSubmitInfo
FCachedMeleeAttackDamageSubmitInfo = {}


---@class FCurrentStrategyChangeDelegate : ULuaMulticastDelegate
FCurrentStrategyChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamageStrategy: UMeleeAttackDamageStrategyBase, bAddStrategy: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCurrentStrategyChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamageStrategy UMeleeAttackDamageStrategyBase
---@param bAddStrategy boolean
function FCurrentStrategyChangeDelegate:Broadcast(DamageStrategy, bAddStrategy) end


---@class IMeleeAttackOwnerInterface
IMeleeAttackOwnerInterface = {}


---@class UMeleeAttackComponent: UActorComponent
---@field OnCurrentStrategyChange FCurrentStrategyChangeDelegate
---@field SocketAnimCurveAttackSyncDataList ULuaArrayHelper<FMeleeAttackSocketAnimCurveDebugRepData>
---@field bCauserAutonomousHurtAppearancePredict boolean
---@field bUseCustomHurtAnim boolean
---@field MeleeAttackInfoWrapperSkillV1 FOnMeleeAttackInfoWrapperSkillV1
---@field bEnableMeleeBlockHeadShot boolean
---@field BlockHeadShotMeleeType ULuaArrayHelper<EMeleeAttackType>
---@field CachedMissingMeleeAttackDamageSubmitInfo FCachedMeleeAttackDamageSubmitInfo
local UMeleeAttackComponent = {}

function UMeleeAttackComponent:OnRep_SocketAnimCurveAttackSyncData() end

function UMeleeAttackComponent:OnRep_MeleeAttackInfoWrapperSkillV1() end

---@param MeleeType EMeleeAttackType
---@return boolean
function UMeleeAttackComponent:IsMeleeBlockHeadShot(MeleeType) end

---@param MissingDamageInfo FMeleeAttackDamageSubmitInfo
---@return boolean
function UMeleeAttackComponent:TryCacheMissingMeleeAttackDamageSubmitInfo(MissingDamageInfo) end

---@return boolean
function UMeleeAttackComponent:TryConsumeMissingMeleeAttackDamageSubmitInfo() end

---@return boolean
function UMeleeAttackComponent:ClearMissingMeleeAttackDamageSubmitInfo() end
