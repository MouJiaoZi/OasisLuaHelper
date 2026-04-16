---@meta

---@class FOnPlayerTryingSwitchOutDDelegate : ULuaMulticastDelegate
FOnPlayerTryingSwitchOutDDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerController: AUAEPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerTryingSwitchOutDDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerController AUAEPlayerController
function FOnPlayerTryingSwitchOutDDelegate:Broadcast(PlayerController) end


---@class FOnPlayerSwitchingOutDSDelegate : ULuaMulticastDelegate
FOnPlayerSwitchingOutDSDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerController: AUAEPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerSwitchingOutDSDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerController AUAEPlayerController
function FOnPlayerSwitchingOutDSDelegate:Broadcast(PlayerController) end


---@class FOnPlayerSwitchedOutDSDelegate : ULuaMulticastDelegate
FOnPlayerSwitchedOutDSDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerController: AUAEPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerSwitchedOutDSDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerController AUAEPlayerController
function FOnPlayerSwitchedOutDSDelegate:Broadcast(PlayerController) end


---@class FOnPlayerSwitchDSExitDelegate : ULuaMulticastDelegate
FOnPlayerSwitchDSExitDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerController: AUAEPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerSwitchDSExitDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerController AUAEPlayerController
function FOnPlayerSwitchDSExitDelegate:Broadcast(PlayerController) end


---@class FOnPlayerSwitchingInDSDelegate : ULuaMulticastDelegate
FOnPlayerSwitchingInDSDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerController: AUAEPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerSwitchingInDSDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerController AUAEPlayerController
function FOnPlayerSwitchingInDSDelegate:Broadcast(PlayerController) end


---@class FOnPlayerSwitchedInDSDelegate : ULuaMulticastDelegate
FOnPlayerSwitchedInDSDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerController: AUAEPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerSwitchedInDSDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerController AUAEPlayerController
function FOnPlayerSwitchedInDSDelegate:Broadcast(PlayerController) end


---@class FOnPlayerSwitchDSLoginDelegate : ULuaMulticastDelegate
FOnPlayerSwitchDSLoginDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerController: AUAEPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerSwitchDSLoginDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerController AUAEPlayerController
function FOnPlayerSwitchDSLoginDelegate:Broadcast(PlayerController) end


---@class FOnPlayerSwitchDSFailedDelegate : ULuaMulticastDelegate
FOnPlayerSwitchDSFailedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerController: AUAEPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerSwitchDSFailedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerController AUAEPlayerController
function FOnPlayerSwitchDSFailedDelegate:Broadcast(PlayerController) end


---@class USwitchDSDelegatesMgr: UBlueprintFunctionLibrary
---@field OnPlayerTryingSwitchOutDDelegate FOnPlayerTryingSwitchOutDDelegate
---@field OnPlayerSwitchingOutDSDelegate FOnPlayerSwitchingOutDSDelegate
---@field OnPlayerSwitchedOutDSDelegate FOnPlayerSwitchedOutDSDelegate
---@field OnPlayerSwitchDSExitDelegate FOnPlayerSwitchDSExitDelegate
---@field OnPlayerSwitchingInDSDelegate FOnPlayerSwitchingInDSDelegate
---@field OnPlayerSwitchedInDSDelegate FOnPlayerSwitchedInDSDelegate
---@field OnPlayerSwitchDSLoginDelegate FOnPlayerSwitchDSLoginDelegate
---@field OnPlayerSwitchDSFailedDelegate FOnPlayerSwitchDSFailedDelegate
local USwitchDSDelegatesMgr = {}

function USwitchDSDelegatesMgr:ReleaseInstance() end
