---@meta

---@class UBehaviorControlComponent: UActorComponent, IBehaviorAbilityInterface, IObjectPoolInterface
---@field OnBehvaiorNotifyDelegate FOnBehaviorNotifyDelegate
---@field BehaviorTreeSetting FBehaviorTreeReflectSetting
local UBehaviorControlComponent = {}

---@param InSetting FBehaviorTreeReflectSetting
function UBehaviorControlComponent:OverrideBehaviorTreeSetting(InSetting) end
