---@meta

---@class ALobbySceneMgrActor: ALobbyBaseSceneActor
local ALobbySceneMgrActor = {}

---@param ActorTag string
---@param ActionTag string
---@param InParam ULuaArrayHelper<FActionParam>
---@return FActionReturnValue
function ALobbySceneMgrActor:TriggerActionByTags(ActorTag, ActionTag, InParam) end
