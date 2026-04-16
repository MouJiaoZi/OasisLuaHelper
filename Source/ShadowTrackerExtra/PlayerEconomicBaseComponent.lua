---@meta

---@class FCacheMoneyStruct
---@field CacheType number
---@field MoneyNum number
FCacheMoneyStruct = {}


---@class FPlayerNormalMoneyUpdate : ULuaMulticastDelegate
FPlayerNormalMoneyUpdate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Money: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerNormalMoneyUpdate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Money number
function FPlayerNormalMoneyUpdate:Broadcast(Money) end


---@class FPlayerAllCacheMoneyUpdate : ULuaSingleDelegate
FPlayerAllCacheMoneyUpdate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerAllCacheMoneyUpdate:Bind(Callback, Obj) end

---执行委托
function FPlayerAllCacheMoneyUpdate:Execute() end


---@class FPlayerNormalMoneyUpdateWithReason : ULuaMulticastDelegate
FPlayerNormalMoneyUpdateWithReason = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Money: number, UpdateType: number, ExFlag: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerNormalMoneyUpdateWithReason:Add(Callback, Obj) end

---触发 Lua 广播
---@param Money number
---@param UpdateType number
---@param ExFlag number
function FPlayerNormalMoneyUpdateWithReason:Broadcast(Money, UpdateType, ExFlag) end


---@class FPlayerNormalMoneyAddWithReason : ULuaMulticastDelegate
FPlayerNormalMoneyAddWithReason = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Money: number, AddType: number, ExFlag: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerNormalMoneyAddWithReason:Add(Callback, Obj) end

---触发 Lua 广播
---@param Money number
---@param AddType number
---@param ExFlag number
function FPlayerNormalMoneyAddWithReason:Broadcast(Money, AddType, ExFlag) end


---@class UPlayerEconomicBaseComponent: UActorComponent
---@field NormalMoney number
---@field AllCacheMoney ULuaArrayHelper<FCacheMoneyStruct>
---@field BisUseMaxMoney boolean
---@field MaxMoneyNum number
---@field PlayerNormalMoneyUpdate FPlayerNormalMoneyUpdate
---@field ClientPlayerNorMoneyUpdateWithReason FPlayerNormalMoneyUpdateWithReason
---@field ClientPlayerNorMoneyAddWithReason FPlayerNormalMoneyAddWithReason
---@field PlayerAllCacheMoneyUpdate FPlayerAllCacheMoneyUpdate
local UPlayerEconomicBaseComponent = {}

function UPlayerEconomicBaseComponent:OnRep_NormalMoney() end

function UPlayerEconomicBaseComponent:OnRep_AddMoneyCache() end

---@param AddNum number
function UPlayerEconomicBaseComponent:AddNormalMoney(AddNum) end

---@param AddNum number
---@param AddType number
function UPlayerEconomicBaseComponent:AddNormalMoneyWithType(AddNum, AddType) end

function UPlayerEconomicBaseComponent:ClearMoneyTypeCache() end

---@param AddNum number
---@param AddType number
function UPlayerEconomicBaseComponent:AddToMoneyTypeCache(AddNum, AddType) end

---@param NewNormalMoney number
function UPlayerEconomicBaseComponent:UpdateNormalMoney(NewNormalMoney) end

---@param UseNum number
---@return boolean
function UPlayerEconomicBaseComponent:ServerUseMoney(UseNum) end

---@param NewNormalMoney number
---@param UpdateType number
---@param ExFlag number
function UPlayerEconomicBaseComponent:UpdateNormalMoneyWithClientRPC(NewNormalMoney, UpdateType, ExFlag) end

---@param AddMoney number
---@param AddType number
---@param ExFlag number
function UPlayerEconomicBaseComponent:AddNormalMoneyWithClientRPC(AddMoney, AddType, ExFlag) end

---@param NewNormalMoney number
---@param UpdateType number
---@param ExFlag number
function UPlayerEconomicBaseComponent:S2C_NormalMoneyIsUpdateInServer(NewNormalMoney, UpdateType, ExFlag) end

---@param AddMoney number
---@param AddType number
---@param ExFlag number
function UPlayerEconomicBaseComponent:S2C_NormalMoneyIsAddInServer(AddMoney, AddType, ExFlag) end

---@return number
function UPlayerEconomicBaseComponent:GetNormalMoney() end

function UPlayerEconomicBaseComponent:JudgeMaxMoneyNum() end
