---@meta

---LuaConsole消息处理类 用于接收处理UGC编辑器的Lua控制台（见UGCEditor/UGCLuaConsole模块）发到PIE客户端的消息
---@class UUGCLuaConsoleMsgHandlerComponent: UActorComponent, IWindowsMessageHandler
local UUGCLuaConsoleMsgHandlerComponent = {}

---@param message string
function UUGCLuaConsoleMsgHandlerComponent:PassMessageToServer(message) end

---@param message string
function UUGCLuaConsoleMsgHandlerComponent:PassMessageToClient(message) end
