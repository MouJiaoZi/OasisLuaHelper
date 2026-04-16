---@meta

---@class UUIMsgRouter: UGameMsgRouter
local UUIMsgRouter = {}

---@param InMsgName string
---@param InMsgLisenter UObject
---@param InMsgCallbackFuncName string
---@param bInLogMsgCall boolean
---@return boolean
function UUIMsgRouter:RegistUIMsgListener(InMsgName, InMsgLisenter, InMsgCallbackFuncName, bInLogMsgCall) end

---@param InMsgName string
---@param InMsgLisenter UObject
function UUIMsgRouter:UnRegistUIMsgListener(InMsgName, InMsgLisenter) end

---@param WorldContextObj UObject
---@param InMsgName string
function UUIMsgRouter:RouteUIMsg(WorldContextObj, InMsgName) end

---For BP Call Use Only Start************************************************************
---@param WorldContextObj UObject
---@param InMsgName string
---@param Param1 number
function UUIMsgRouter:RouteUIMsg_1Param(WorldContextObj, InMsgName, Param1) end
