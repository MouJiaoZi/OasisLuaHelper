---@meta

---@class FOneTableSwitch
---@field ATableName string
---@field BTableName string
FOneTableSwitch = {}


---@class FRecoverSwitch
FRecoverSwitch = {}


---@class UUAETableSwitcher: UObject
---@field TableSWtichArray ULuaArrayHelper<FOneTableSwitch>
---@field TableInitRefresh ULuaArrayHelper<string>
---@field TableResetRefresh ULuaArrayHelper<string>
---@field SwitchNameMap ULuaMapHelper<string, string>
local UUAETableSwitcher = {}

function UUAETableSwitcher:ResetSwitcher() end

function UUAETableSwitcher:SwitchBigWorldTable() end

function UUAETableSwitcher:SwitchBigWorldTable_BP() end

---@param ATableName string
---@param BTableName string
function UUAETableSwitcher:LoadTableConfig(ATableName, BTableName) end
