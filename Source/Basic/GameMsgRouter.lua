---@meta

---@class FMsgListenerMeta
---@field MsgCallbackFuncName string
---@field MsgListenerObj UObject
FMsgListenerMeta = {}


---@class UGameMsgListenerGroup: UObject
---@field MsgName string
---@field MsgListenerGroup ULuaArrayHelper<FMsgListenerMeta>
---@field CurFrameMsgListenerObj UObject
local UGameMsgListenerGroup = {}


---@class UGameMsgRouter: UBlueprintFunctionLibrary
---@field MsgListenerGroupMap ULuaMapHelper<string, UGameMsgListenerGroup>
local UGameMsgRouter = {}

---注册一个具名的消息Listener
---@param InMsgName string
---@param InMsgLisenter UObject
---@param InMsgCallbackFuncName string
---@param bInLogMsgCall boolean
---@return boolean
function UGameMsgRouter:RegistMsgListener(InMsgName, InMsgLisenter, InMsgCallbackFuncName, bInLogMsgCall) end

---反注册一个RegistMsgListener注册的具名消息Listener
---@param InMsgName string
---@param InMsgLisenter UObject
function UGameMsgRouter:UnRegistMsgListener(InMsgName, InMsgLisenter) end

---发送一个即时消息
---@param InMsgName string
---@return boolean
function UGameMsgRouter:RouteMsg(InMsgName) end
