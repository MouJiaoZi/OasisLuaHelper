---@meta

---@class UUGCExceptionBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local UUGCExceptionBlueprintFunctionLibrary = {}

---@param Category string
---@param Verbosity EUGCExceptionVerbosity
---@param Message string
function UUGCExceptionBlueprintFunctionLibrary:UGC_KEYLOG(Category, Verbosity, Message) end

---@param Title string
---@param Verbosity EUGCExceptionVerbosity
---@param Message string
---@param Flag EUGCExceptionFlags
function UUGCExceptionBlueprintFunctionLibrary:UGC_EXCEPTION(Title, Verbosity, Message, Flag) end
