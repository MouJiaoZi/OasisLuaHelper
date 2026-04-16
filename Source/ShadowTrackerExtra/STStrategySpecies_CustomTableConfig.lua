---@meta

---@class ECustomTableConfig_ValueType
---@field Int number
---@field Float number
---@field String number
ECustomTableConfig_ValueType = {}


---单位种类: DeadLock读表配置 从subsystem读数据
---@class USTStrategySpecies_CustomTableConfig: USTStrategySpecies
---@field TableName string
---@field TableKey string
---@field TableValues ULuaMapHelper<string, ECustomTableConfig_ValueType>
local USTStrategySpecies_CustomTableConfig = {}
