---@meta

---@class UTargetProducer_AllyForHelp: UTargetProducer
---@field HelpAllyLockTime number
---@field HelpAllyElapseTime number
local UTargetProducer_AllyForHelp = {}

---@param InAllyActor AActor
---@param InEnemyActor AActor
---@return boolean
function UTargetProducer_AllyForHelp:CheckShouldRespondToAllyCall(InAllyActor, InEnemyActor) end

---@param CurrentActor AActor
---@param NewActor AActor
---@return boolean
function UTargetProducer_AllyForHelp:CheckShouldSwitchTarget(CurrentActor, NewActor) end

---@param InEnemyAtor AActor
---@return boolean
function UTargetProducer_AllyForHelp:CheckIsEnemyValid(InEnemyAtor) end

---@param InAllyActor AActor
---@param InEnemyActor AActor
function UTargetProducer_AllyForHelp:OnAllyCallForHelp(InAllyActor, InEnemyActor) end
