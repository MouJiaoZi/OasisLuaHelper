---@meta

---@class ETGISMsgType
---@field ETGT_START number
---@field ETGT_PHASE_END number
---@field ETGT_SKILL_END number
ETGISMsgType = {}


---@class UUAESkillAction_TriggerGIS: UUAESkillAction
---@field GISActor AActor
---@field Indexes ULuaArrayHelper<number>
---@field bSendCustomMessage boolean
---@field bTriggerAll boolean
---@field Parameters ULuaArrayHelper<FUAEBlackboardParameter>
---@field WhenToCall ULuaSetHelper<ETGISMsgType>
---@field WhenToIgnoreCanTrigger ULuaSetHelper<ETGISMsgType>
local UUAESkillAction_TriggerGIS = {}
