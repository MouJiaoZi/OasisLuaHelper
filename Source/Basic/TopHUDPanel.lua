---@meta

---@class FOnTopHUDPanelRender : ULuaMulticastDelegate
FOnTopHUDPanelRender = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UTopHUDPanel) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTopHUDPanelRender:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UTopHUDPanel
function FOnTopHUDPanelRender:Broadcast(Param1) end


---@class UTopHUDPanel: UCanvasPanel
---@field UseCacheData boolean
---@field UseCollectData boolean
local UTopHUDPanel = {}
