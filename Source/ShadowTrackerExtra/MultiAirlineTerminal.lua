---@meta

---@class FSelfAirlineStartDelegate : ULuaMulticastDelegate
FSelfAirlineStartDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, AirlineParam: FAirlineParamInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSelfAirlineStartDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param AirlineParam FAirlineParamInfo
function FSelfAirlineStartDelegate:Broadcast(PlayerKey, AirlineParam) end


---@class FExtraAirlineStartDelegate : ULuaMulticastDelegate
FExtraAirlineStartDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, AirlineParam: FAirlineParamInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FExtraAirlineStartDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param AirlineParam FAirlineParamInfo
function FExtraAirlineStartDelegate:Broadcast(PlayerKey, AirlineParam) end


---@class FAirlineParamChangeDelegate : ULuaMulticastDelegate
FAirlineParamChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AirlineParam: FAirlineParamInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAirlineParamChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param AirlineParam FAirlineParamInfo
function FAirlineParamChangeDelegate:Broadcast(AirlineParam) end


---@class FAirlineParamsChangeDelegate : ULuaMulticastDelegate
FAirlineParamsChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AirlineParams: ULuaArrayHelper<FAirlineParamInfo>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAirlineParamsChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param AirlineParams ULuaArrayHelper<FAirlineParamInfo>
function FAirlineParamsChangeDelegate:Broadcast(AirlineParams) end


---@class UMultiAirlineTerminal: UActorComponent, ILuaInterface
---@field SelfAirlineParam FAirlineParamInfo
---@field ExtraAirlineParams ULuaArrayHelper<FAirlineParamInfo>
---@field OnSelfAirlineStartDelegate FSelfAirlineStartDelegate
---@field OnExtraAirlinesStartDelegate FExtraAirlineStartDelegate
---@field OnSelfAirlineChanged FAirlineParamChangeDelegate
---@field OnExtraAirlinesChanged FAirlineParamsChangeDelegate
local UMultiAirlineTerminal = {}

function UMultiAirlineTerminal:OnRep_SelfAirlineParam() end

function UMultiAirlineTerminal:OnRep_ExtraAirlineParams() end

---@param PlayerState ASTExtraPlayerState
---@param Info FAirlineParamInfo
---@return boolean
function UMultiAirlineTerminal:GetSelfAirline(PlayerState, Info) end

---@param PlayerState ASTExtraPlayerState
---@param Infos ULuaArrayHelper<FAirlineParamInfo>
---@return boolean
function UMultiAirlineTerminal:GetExtraAirline(PlayerState, Infos) end

---@return string
function UMultiAirlineTerminal:GetLuaModule() end
