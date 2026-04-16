---@meta

---ExtendTools动态页签配置
---@class FExtendToolsTabConfig
---@field KeyName string
---@field Priority number
---@field TabUI UEntireMapExtendToolsBtn
---@field TabUIText string
---@field TabUIImage FStringAssetReference
---@field ContentUI UUAEUserWidget
---@field DisplayGameModeTypeList ULuaArrayHelper<EGameModeType>
---@field DisplayGameModeIDList ULuaArrayHelper<number>
---@field DisplayMenuKeyList ULuaArrayHelper<number>
---@field DisplayConditionList ULuaArrayHelper<UMapExConditionBase>
FExtendToolsTabConfig = {}


---@class UMapExConditionBase: UObject
local UMapExConditionBase = {}

---@return boolean
function UMapExConditionBase:IsOK() end


---@class UEntireMapExtendTools: UUAEUserWidget
---@field ExtendToolsTabConfigList ULuaArrayHelper<FExtendToolsTabConfig>
local UEntireMapExtendTools = {}

---@param Index number
---@return boolean
function UEntireMapExtendTools:IsEnableNewExUI(Index) end
