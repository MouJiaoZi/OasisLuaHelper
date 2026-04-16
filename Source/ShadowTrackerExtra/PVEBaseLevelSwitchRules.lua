---@meta

---副本切换规则
---@class UPVEBaseLevelSwitchRules: UObject
---@field IsServerMode boolean
local UPVEBaseLevelSwitchRules = {}

---@param InstanceID number
---@return number
function UPVEBaseLevelSwitchRules:GetNextSceneIndex(InstanceID) end

---@param InstanceID number
---@return boolean
function UPVEBaseLevelSwitchRules:NeedGotoNextScene(InstanceID) end

---@param InstanceID number
---@return number
function UPVEBaseLevelSwitchRules:LuaGetNextSceneIndex(InstanceID) end

---@param InstanceID number
---@return boolean
function UPVEBaseLevelSwitchRules:LuaNeedGotoNextScene(InstanceID) end
