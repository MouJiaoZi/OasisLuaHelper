---@meta

---对应触发事件 EventFunc_SwitchWeatherLevelByIndex， 需传入: Plyerkey Tag, 区分业务逻辑身份ID Index, Index为BP_DynamicWeatherExMgr中的SwitchWeatherList列表下标，从0开始，若Index不存在则切换天气失败。
---@class UTriggerAction_SwitchWeatherLevelByIndex: UTriggerAction
local UTriggerAction_SwitchWeatherLevelByIndex = {}
