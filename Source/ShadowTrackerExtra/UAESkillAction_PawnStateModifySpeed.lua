---@meta

---@class FPawnstateTimeModifySpeedStruct
---@field TotalTime number
---@field ModifierValue number
FPawnstateTimeModifySpeedStruct = {}


---@class FPawnStateAddModifySpeedInstanceStruct
---@field NowStateTime number
---@field NowInterruptTime number
---@field ModifyValue number
FPawnStateAddModifySpeedInstanceStruct = {}


---@class UUAESkillAction_PawnStateModifySpeed: USTExtraBuffAction
---@field PlayerState EPawnState
---@field InterruptTime number
---@field PawnStateModifySpeedList ULuaArrayHelper<FPawnstateTimeModifySpeedStruct>
---@field SpeedModifyItemName string
---@field SpeedAttrName string
---@field GMPMessageTag string
---@field SpeedModifyItem FAttrModifyItem
local UUAESkillAction_PawnStateModifySpeed = {}
