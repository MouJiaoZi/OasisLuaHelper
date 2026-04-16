---@meta

---拆分移动多状态表现，并优化 移动 和 原地瞄准转身 的表现
---@class EExtraAnimDataType_MoveAimExtend
---@field MoveAimExtend_IdleAim number @原地瞄准(UBlendSpace1D)
---@field MoveAimExtend_Idle number @原地待机(UAnimSequence)
---@field MoveAimExtend_IdleTurn number @原地转身(UBlendSpace1D)
---@field MoveAimExtend_Run number @跑(UBlendSpace)
---@field MoveAimExtend_Sprint number @疾跑(UAnimSequence)
---@field MoveAimExtend_SprintLean number @倾斜疾跑(UBlendSpace1D)
---@field MoveAimExtend_IdleToRun number @起步(跑)(UBlendSpace)
---@field MoveAimExtend_IdleToSprint number @起步(疾跑)(UAnimSequence)
---@field MoveAimExtend_RunToIdle_Left number @跑停步(左脚)(UBlendSpace
---@field MoveAimExtend_RunToIdle_Right number @跑停步(右脚)(UBlendSpace
---@field MoveAimExtend_SprintToIdle_Left number @疾停步(左脚)(UAnimSequence)
---@field MoveAimExtend_SprintToIdle_Right number @疾停步(右脚)(UAnimSequence)
---@field MoveAimExtend_SprintCrushDoor number @冲刺撞门(UAnimMontage)
EExtraAnimDataType_MoveAimExtend = {}


---@class USTExtraAnimData_MoveAimExtend: USTExtraAnimDataConfigWithSubAnim
local USTExtraAnimData_MoveAimExtend = {}
