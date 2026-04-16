---@meta

---PVE 得分条件基类
---@class UPVEBaseCondition: UObject
---@field Score number
local UPVEBaseCondition = {}

function UPVEBaseCondition:OnInit() end

---@return boolean
function UPVEBaseCondition:LuaInit() end

---@param PC ASTExtraPlayerController
function UPVEBaseCondition:OnFinish(PC) end
