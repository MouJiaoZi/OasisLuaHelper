---@meta

---对应触发事件 EventFunc_SwitchWeatherLevel，需传入plyerkey, Tag, Tag 为"EnterInner, LeaveInner, EnterOuter或LeaveOuter" xxxEnter代表切到目标天气，xxxLeave代表切到源天气。Inner和Outer设计了两个，用其中一个即可，必要时两个一起用。 驱动天气切换的组件为BP_DynamicWeatherExMgr，由策划拖入天气关卡，需在天气关卡中配置天气参数。 history: 在万圣节活动中，触发白天和黑夜两种天气的交替, feishen, 20190914
---@class UTriggerAction_SwitchWeatherLevel: UTriggerAction
local UTriggerAction_SwitchWeatherLevel = {}
