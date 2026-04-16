---@meta

---@class FTriggerLevelActorDiffInfo
---@field ParamName string
---@field ParamVal string
FTriggerLevelActorDiffInfo = {}


---@class UTriggerLevelsHelperComponent: UActorComponent
---@field ActorParamNames ULuaArrayHelper<string>
---@field ActorDiffParams ULuaArrayHelper<FTriggerLevelActorDiffInfo>
local UTriggerLevelsHelperComponent = {}

---@param PropertyBlackList ULuaArrayHelper<string>
function UTriggerLevelsHelperComponent:CollectActorParam(PropertyBlackList) end

function UTriggerLevelsHelperComponent:RevertActorParam() end

function UTriggerLevelsHelperComponent:OnRep_ActorDiffParams() end
