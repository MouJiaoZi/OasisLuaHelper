---@meta

---@class FOnActorHit : ULuaSingleDelegate
FOnActorHit = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActorHit:Bind(Callback, Obj) end

---执行委托
function FOnActorHit:Execute() end


---@class AVNToxicGrenade: AActor, IPhaseActorInterface
---@field OnCollisionHitAnything FOnActorHit
---@field HitActorComponent UActorComponent
---@field MissActor AActor
---@field IgnoredTemplates ULuaArrayHelper<AActor>
---@field AttachableActor ULuaArrayHelper<AActor>
---@field bIgnoreOwner boolean
local AVNToxicGrenade = {}
