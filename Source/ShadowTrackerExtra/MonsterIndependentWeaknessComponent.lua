---@meta

---@class FMonsterIndependentWeaknessConfig
---@field WeaknessBone string
---@field WeaknessPosition EAvatarDamagePosition
---@field WeaknessHP number
---@field WeaknessEffectTime number
FMonsterIndependentWeaknessConfig = {}


---@class FOnIndependentWeaknessDestroyed : ULuaMulticastDelegate
FOnIndependentWeaknessDestroyed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WeaknessBone: string, WeaknessPosition: EAvatarDamagePosition, WeaknessEffectTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnIndependentWeaknessDestroyed:Add(Callback, Obj) end

---触发 Lua 广播
---@param WeaknessBone string
---@param WeaknessPosition EAvatarDamagePosition
---@param WeaknessEffectTime number
function FOnIndependentWeaknessDestroyed:Broadcast(WeaknessBone, WeaknessPosition, WeaknessEffectTime) end


---@class UMonsterIndependentWeaknessComponent: UActorComponent
---@field OnIndependentWeaknessDestroyed FOnIndependentWeaknessDestroyed
---@field IndependentWeaknessConfig ULuaArrayHelper<FMonsterIndependentWeaknessConfig>
---@field WeaknessDestroyedCustomTimeDilation number
local UMonsterIndependentWeaknessComponent = {}

---@param Victim AActor
---@param Damage number
---@param HitResult FHitResult
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageHitPosition EAvatarDamagePosition
function UMonsterIndependentWeaknessComponent:OnSimplePostTakePointDamage(Victim, Damage, HitResult, EventInstigator, DamageCauser, DamageHitPosition) end
