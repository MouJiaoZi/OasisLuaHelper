---@meta

---utility to call from lua
---@class URAFUtility: UBlueprintFunctionLibrary
local URAFUtility = {}

---@param InLuaState FLuaState
---@param ParamIndex number
---@return number
function URAFUtility:RequireScriptModule_LuaExtd(InLuaState, ParamIndex) end

---@param InLuaState FLuaState
---@param ParamIndex number
---@return number
function URAFUtility:RequireDataModule_LuaExtd(InLuaState, ParamIndex) end

---@param WorldContextObject UObject
---@param ClientMainPath string
function URAFUtility:ClientBootstrap(WorldContextObject, ClientMainPath) end
