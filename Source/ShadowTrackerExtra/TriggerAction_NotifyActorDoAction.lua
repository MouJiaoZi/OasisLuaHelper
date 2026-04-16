---@meta

---通过ActorClass设置的Actor需要在Tags添加一个与IDTag一致的字符串用来关联
---@class UTriggerAction_NotifyActorDoAction: UTriggerAction
---@field ActorCache ULuaArrayHelper<AActor>
---@field ActorClass AActor
local UTriggerAction_NotifyActorDoAction = {}
