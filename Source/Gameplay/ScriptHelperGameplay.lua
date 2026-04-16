---@meta

---@class UScriptHelperGameplay: UObject
local UScriptHelperGameplay = {}

---@return number
function UScriptHelperGameplay:CallLuaTraditionalRPC_LuaState() end

---@return number
function UScriptHelperGameplay:CallLuaUnrealRPC_LuaState() end

---@return number
function UScriptHelperGameplay:CallLuaUnrealRPC_Unreliable_LuaState() end

---@return number
function UScriptHelperGameplay:CallLuaUnrealRPC_Multicast_LuaState() end

---@return number
function UScriptHelperGameplay:CallLuaUnrealRPC_Multicast_Unreliable_LuaState() end

---@return number
function UScriptHelperGameplay:RepLazyProperty_LuaState() end

---@return number
function UScriptHelperGameplay:NativeBreakpoint_LuaState() end

function UScriptHelperGameplay:ReleaseAllCSVTable() end

---@param tableName string
function UScriptHelperGameplay:ReleaseCSVTableByName(tableName) end

---@param tableName string
---@return number
function UScriptHelperGameplay:GetTableCount(tableName) end

---@param InTableName string
---@return string
function UScriptHelperGameplay:GetTablePathFromName(InTableName) end

---@param TableName string
---@param outGamePath string
---@param outUGCGamePath string
function UScriptHelperGameplay:VerifyTablePath(TableName, outGamePath, outUGCGamePath) end

---@param Dir string
---@param FileExtension string
---@param bRecursive boolean
function UScriptHelperGameplay:FindFiles(Dir, FileExtension, bRecursive) end

---@return string
function UScriptHelperGameplay:GetLuaRootDir() end

---@param Filename string
---@param Result string
---@return boolean
function UScriptHelperGameplay:LoadFileToString(Filename, Result) end

---@param InKey string
---@return string
function UScriptHelperGameplay:GetBuildInfo(InKey) end

---@return string
function UScriptHelperGameplay:GetBuildTime() end

---@param InWorldContext UObject
---@return string
function UScriptHelperGameplay:GetWorldName(InWorldContext) end

---@param InWorldContext UObject
---@return boolean
function UScriptHelperGameplay:IsPlayingReplay(InWorldContext) end

---@param Obj UObject
---@param PropertyName string
---@param floatValue number
---@param outOriginValue number
---@return boolean
function UScriptHelperGameplay:ChangeFloatPropertyByName(Obj, PropertyName, floatValue, outOriginValue) end

---@param Obj UObject
---@param PropertyName string
---@param SoftPathValue FSoftObjectPath
---@param outOriginValue FSoftObjectPath
---@return boolean
function UScriptHelperGameplay:ChangeSoftPathPropertyByName(Obj, PropertyName, SoftPathValue, outOriginValue) end

---@param Obj UObject
---@param PropertyName string
---@param ObjValue UObject
---@param outOriginValue UObject
---@return boolean
function UScriptHelperGameplay:ChangeObjectPropertyByName(Obj, PropertyName, ObjValue, outOriginValue) end

---@param Cmd string
function UScriptHelperGameplay:ExecuteConsoleCommand(Cmd) end

---@param InWorldContext UObject
---@return number
function UScriptHelperGameplay:DisplayCallStack(InWorldContext) end
