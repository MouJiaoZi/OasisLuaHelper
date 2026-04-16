---@meta

---@class FOnInstigatorInterfaceDamage : ULuaMulticastDelegate
FOnInstigatorInterfaceDamage = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamagedTarget: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnInstigatorInterfaceDamage:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamagedTarget AActor
function FOnInstigatorInterfaceDamage:Broadcast(DamagedTarget) end


---@class IVNInstigatorInterface
IVNInstigatorInterface = {}
