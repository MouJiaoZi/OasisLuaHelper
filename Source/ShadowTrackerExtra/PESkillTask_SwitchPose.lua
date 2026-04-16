---@meta

---@class EPoseStateType
---@field PoseStateType_Stand number @站立
---@field PoseStateType_Crouch number @蹲伏
---@field PoseStateType_Prone number @匍匐
---@field PoseStateType_None number
EPoseStateType = {}


---@class UPESkillTask_SwitchPose: UPESkillTaskBase
---@field TargetPose EPoseStateType
---@field AutoRevert boolean
local UPESkillTask_SwitchPose = {}
