---@meta

---@class FOnServerChangeDamageScale : ULuaMulticastDelegate
FOnServerChangeDamageScale = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamageBox: UVehiclePartDamageBox) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnServerChangeDamageScale:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamageBox UVehiclePartDamageBox
function FOnServerChangeDamageScale:Broadcast(DamageBox) end


---@class FOnClientChangeDamageScale : ULuaMulticastDelegate
FOnClientChangeDamageScale = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamageBox: UVehiclePartDamageBox) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientChangeDamageScale:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamageBox UVehiclePartDamageBox
function FOnClientChangeDamageScale:Broadcast(DamageBox) end


---@class UVehiclePartDamageBox: UBoxComponent
---@field OnServerChangeDamageScale FOnServerChangeDamageScale
---@field OnClientChangeDamageScale FOnClientChangeDamageScale
---@field DamageScale number
local UVehiclePartDamageBox = {}

---@param InDamageScale number
function UVehiclePartDamageBox:SetDamageScale(InDamageScale) end

function UVehiclePartDamageBox:OnRep_DamageScale() end
