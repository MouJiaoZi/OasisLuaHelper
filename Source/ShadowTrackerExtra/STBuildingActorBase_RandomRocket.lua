---@meta

---@class ERandomRocketExplosionType
---@field ERRET_COLLIDE number @碰撞爆炸
---@field ERRET_BOMBARMENT number @轰炸爆炸
---@field ERRET_DESTRUCTED number @摧毁爆炸
---@field ERRET_MAX number
ERandomRocketExplosionType = {}


---@class FEventRocketExploded : ULuaMulticastDelegate
FEventRocketExploded = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ExplosionType: ERandomRocketExplosionType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventRocketExploded:Add(Callback, Obj) end

---触发 Lua 广播
---@param ExplosionType ERandomRocketExplosionType
function FEventRocketExploded:Broadcast(ExplosionType) end


---@class ASTBuildingActorBase_RandomRocket: ASTBuildingActorBase
---@field OnRocketExploded FEventRocketExploded
---@field HasLaunched boolean
---@field HasExploded boolean
---@field DestroyType ERandomRocketExplosionType
---@field PreLaunchTime number
---@field PreBombarmentTime number
---@field FlyingTime number
---@field LaunchSpeed number
---@field LaunchAcceleration number
---@field bShouldPlayDestroyAnimationUpHeight boolean
---@field IgnoreExplosionList ULuaArrayHelper<UObject>
---@field PreLaunchTimeHandle FTimerHandle
---@field FlyingTimeHandle FTimerHandle
local ASTBuildingActorBase_RandomRocket = {}

function ASTBuildingActorBase_RandomRocket:TernimateAllTimers() end
