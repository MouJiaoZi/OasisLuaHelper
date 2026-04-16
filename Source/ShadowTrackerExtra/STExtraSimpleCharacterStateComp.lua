---@meta

---@class FSimpleCharacterStateInfo
---@field bStopStateMachine boolean
---@field bRepToClient boolean
---@field StateName string
---@field TriggerSkillID number
FSimpleCharacterStateInfo = {}


---@class USTExtraSimpleCharacterStateComp: UActorComponent
---@field CharacterStateList ULuaArrayHelper<FSimpleCharacterStateInfo>
local USTExtraSimpleCharacterStateComp = {}

---@param StateName string
function USTExtraSimpleCharacterStateComp:OnStateChangeTo(StateName) end
