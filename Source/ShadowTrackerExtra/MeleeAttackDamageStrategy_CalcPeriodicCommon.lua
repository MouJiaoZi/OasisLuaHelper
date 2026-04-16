---@meta

---Delegate used to notify of an output message
---@class FServerReceivedHitInfoDelegate : ULuaMulticastDelegate
FServerReceivedHitInfoDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamageStrategy: UMeleeAttackDamageStrategyBase, DamageSubmitInfo: FMeleeAttackDamageSubmitInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FServerReceivedHitInfoDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamageStrategy UMeleeAttackDamageStrategyBase
---@param DamageSubmitInfo FMeleeAttackDamageSubmitInfo
function FServerReceivedHitInfoDelegate:Broadcast(DamageStrategy, DamageSubmitInfo) end


---@class FClientReceivedHitInfoDelegate : ULuaMulticastDelegate
FClientReceivedHitInfoDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamageStrategy: UMeleeAttackDamageStrategyBase, HitResults: ULuaArrayHelper<FHitResult>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClientReceivedHitInfoDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamageStrategy UMeleeAttackDamageStrategyBase
---@param HitResults ULuaArrayHelper<FHitResult>
function FClientReceivedHitInfoDelegate:Broadcast(DamageStrategy, HitResults) end


---@class UMeleeAttackDamageStrategy_CalcPeriodicCommon: UMeleeAttackDamageStrategyBase
---@field bUseSweepTrace boolean
---@field SplitAxis EAxis
---@field InterpolationType EMeleeTraceInterpolationType
---@field MinInterpCnt number
---@field MaxInterpCnt number
---@field MinInterpAngle number
---@field MaxInterpAngle number
---@field InterpTimesPerAngle number
---@field MeleeAttackBoxType EMeleeAttackBoxType
---@field BoxConfigsWithWeapon FMeleeAttackBoxConfigWithWeapon
---@field BoxConfigsWithSocket ULuaArrayHelper<FMeleeAttackBoxConfigWithSocket>
---@field ServerReceivedHitInfoDelegate FServerReceivedHitInfoDelegate
---@field ClientReceivedHitInfoDelegate FClientReceivedHitInfoDelegate
---@field CachedHitActors ULuaArrayHelper<AActor>
---@field ServerCachedDamageInfo FMeleeAttackDamageSubmitInfo
---@field NextOpenAroundCharacterHitBoxTimestamp number
local UMeleeAttackDamageStrategy_CalcPeriodicCommon = {}

function UMeleeAttackDamageStrategy_CalcPeriodicCommon:TryRefreshAroundCharacterCollosion() end
