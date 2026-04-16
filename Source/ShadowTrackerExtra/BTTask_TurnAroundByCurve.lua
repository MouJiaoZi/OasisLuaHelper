---@meta

---@class EFocusTurnTargetResult
---@field Succeeded number
---@field Failed number
---@field DontMove number
EFocusTurnTargetResult = {}


---@class FTurnTargetDataHasCurve
---@field MaxCanTurnAngele number
---@field TurnTargetVelocity number
---@field IsFixedTimeTurn boolean
---@field IsUseCurve boolean
---@field CurveName string
FTurnTargetDataHasCurve = {}


---@class UBTTask_TurnAroundByCurve: UBTTask_BlackboardBase
---@field CanTurnAngle number
---@field MaxLoopCount number
---@field TurnTargetDataList ULuaArrayHelper<FTurnTargetDataHasCurve>
---@field TurnTolerance number
---@field CurTurnNumBlackboardKey any @blackboard key selector
---@field FocusPriority number
---@field bTurnOnlyOnServer boolean @是否平滑转向
---@field bUseTurnOffset boolean @是否启用选择角度偏移,目前只有G博士抛油桶前转向启用
---@field TurnOffsetAngle number @选择角度偏移
local UBTTask_TurnAroundByCurve = {}
