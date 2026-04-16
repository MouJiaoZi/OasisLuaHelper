---@meta

---@class FMissileDamageDelegate : ULuaMulticastDelegate
FMissileDamageDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Location: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMissileDamageDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Location FVector
function FMissileDamageDelegate:Broadcast(Location) end


---@class FMissileDestroyDelegate : ULuaMulticastDelegate
FMissileDestroyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Location: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMissileDestroyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Location FVector
function FMissileDestroyDelegate:Broadcast(Location) end


---@class AArtilleryShell: AActor
---@field Velocity FVector
---@field FlySoundDelayTime number
local AArtilleryShell = {}

---@param HitResult FHitResult
function AArtilleryShell:HandleExplosion(HitResult) end

function AArtilleryShell:ServerFly() end

function AArtilleryShell:DestroyShell() end
