---@meta

---@class UAIDebugPanelModeInfoProviderBase: UObject
---@field SkillInfoMap ULuaMapHelper<number, FAIDebugPanelSkillInfo>
---@field MLBehaviorStrMap ULuaMapHelper<number, string>
local UAIDebugPanelModeInfoProviderBase = {}


---@class UAIDebugPanelModeInfoProviderEscape: UAIDebugPanelModeInfoProviderBase
local UAIDebugPanelModeInfoProviderEscape = {}


---@class UAIDebugPanelModeInfoProviderMoba: UAIDebugPanelModeInfoProviderBase, IAIDebugPanelScoreTableSetterInterface
local UAIDebugPanelModeInfoProviderMoba = {}


---@class UAIDebugPanelModeInfoProviderLostTomb: UAIDebugPanelModeInfoProviderBase, IAIDebugPanelScoreTableSetterInterface
local UAIDebugPanelModeInfoProviderLostTomb = {}
