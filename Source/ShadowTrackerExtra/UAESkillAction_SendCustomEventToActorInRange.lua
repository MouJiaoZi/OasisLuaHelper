---@meta

---@class FSendCustomEventToActorInRangeData
FSendCustomEventToActorInRangeData = {}


---@class UUAESkillAction_SendCustomEventToActorInRange: UUAESkillAction
---@field Range number
---@field ActorTag string
---@field ActorClass AActor
---@field EventType EUAESkillEvent
---@field EndEventType EUAESkillEvent
---@field bStopsAtFirstEncounter boolean
---@field bLocalOnly boolean
---@field bDSOnly boolean
---@field bSendEndEvent boolean
---@field bTriggerActivity boolean
---@field TriggerActivityMsg string
---@field bForceInteractiveActor boolean
local UUAESkillAction_SendCustomEventToActorInRange = {}
