---@meta

---@class FSkillActionData
---@field ActionName string
FSkillActionData = {}


---@class FSkillConditionData
---@field ConditionName string
FSkillConditionData = {}


---@class UActionConditionContainer: UObject, IUTSkillInstanceNodeContainerInterface, IUTSkillInstanceNodeInterface
---@field ActionsList ULuaArrayHelper<FSkillActionData>
---@field ConditionsList ULuaArrayHelper<FSkillConditionData>
---@field InstancedNodeNameToMemoryMap ULuaMapHelper<UObject, number>
local UActionConditionContainer = {}

---@param ActionName string
---@param InInstanceObj UObject
---@param InInteractingActor AActor
---@return boolean
function UActionConditionContainer:ExecuteAction(ActionName, InInstanceObj, InInteractingActor) end

---@param ActionName string
---@param InInstanceObj UObject
---@param InInteractingActor AActor
function UActionConditionContainer:UndoAction(ActionName, InInstanceObj, InInteractingActor) end

---@param ConditionName string
---@param InInstanceObj UObject
---@param InInteractingActor AActor
---@return boolean
function UActionConditionContainer:ExecuteCondition(ConditionName, InInstanceObj, InInteractingActor) end

---@param InInstanceObj UObject
---@param InInteractingActor AActor
function UActionConditionContainer:UndoAllAction(InInstanceObj, InInteractingActor) end
