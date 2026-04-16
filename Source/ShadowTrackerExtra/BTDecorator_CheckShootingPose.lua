---@meta

---@class EAICheckShootingPoseType
---@field ShootingPose_Normal number @常规射击
---@field ShootingPose_Stand number @站立射击(不同于常规射击,会进行更精细的弹道校正)
---@field ShootingPose_Peek number @侧身射击
---@field ShootingPose_WaitVisibilityCheck number @移动到掩体后等待可视性检测
EAICheckShootingPoseType = {}


---@class UBTDecorator_CheckShootingPose: UBTDecorator
---@field checkPose EAICheckShootingPoseType
local UBTDecorator_CheckShootingPose = {}
