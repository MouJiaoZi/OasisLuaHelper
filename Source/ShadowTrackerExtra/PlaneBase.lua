---@meta

---@class APlaneBase: ACharacter, IPlaneReplaceInterface, ILuaInterface
---@field LocationTolerance number
---@field LuaPath string
---@field bNeedReplace boolean
local APlaneBase = {}

---@return string
function APlaneBase:GetLuaModule() end
