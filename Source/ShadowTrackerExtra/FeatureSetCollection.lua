---@meta

---@class FFeatureConfigItem
---@field TargetClassName string
---@field bUseFeatureSet number
---@field ExcludeComponentsList_DS ULuaArrayHelper<string>
---@field ExcludeComponentsList_Autonomous ULuaArrayHelper<string>
---@field ExcludeComponentsList_Team ULuaArrayHelper<string>
---@field ExcludeComponentsList_NonTeam ULuaArrayHelper<string>
FFeatureConfigItem = {}


---@class FFeatureSetItem
FFeatureSetItem = {}


---@class UFeatureSetCollection: UDeveloperSettings
---@field FeatureConfigItemList ULuaArrayHelper<FFeatureConfigItem>
---@field FeatureSetItemList ULuaArrayHelper<FFeatureSetItem>
local UFeatureSetCollection = {}


---@class UFeatureSetWorldSubsystemImpl: UObject
local UFeatureSetWorldSubsystemImpl = {}


---@class UFeatureSetWorldSubsystem: UWorldSubsystem
local UFeatureSetWorldSubsystem = {}
