---@meta

---@class ErrorTypeToSwitch
---@field Not_Allow_Flush number
---@field MissingFile number
---@field UObjectLeak number
---@field MemoryOvergrowth number
ErrorTypeToSwitch = {}


---WEGAME PC数据上报---------------------------------------------------------
function LuaExceptions.WEGAME_GetPCLogKey() end

---官包 PC数据上报---------------------------------------------------------
function LuaExceptions.GLaunch_GetPCLogKey() end