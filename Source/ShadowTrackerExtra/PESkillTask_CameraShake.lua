---@meta

---@class EPESkillCameraShakeType
---@field E_PESKILL_CameraShake_Random number @//*UGC* 随机方向
---@field E_PESKILL_CameraShake_AxisX number @//*UGC* X轴方向
---@field E_PESKILL_CameraShake_AxisY number @//*UGC* Y轴方向
---@field E_PESKILL_CameraShake_Custom number @//*UGC* 自定义
EPESkillCameraShakeType = {}


---@class EPESkillCameraShakeTargetType
---@field E_PESKILL_CameraShakeTarget_Self number @//*UGC* 释放者自身
---@field E_PESKILL_CameraShakeTarget_SelectTargets number @//*UGC* 选中目标
---@field E_PESKILL_CameraShakeTarget_SelectPoint number @//*UGC* 选中点周围
EPESkillCameraShakeTargetType = {}


---蓄力跳转,仅主角可用，非主控端的不可用
---@class UPESkillTask_CameraShake: UPESkillTaskBase
---@field CameraShakeType EPESkillCameraShakeType
---@field CustomShakeClass UCameraShake
---@field CameraShakeScale number
---@field TargetType EPESkillCameraShakeTargetType
---@field ApplyDistance number
---@field CameraShakeRandom FSoftClassPath
---@field CameraShakeAxisX FSoftClassPath
---@field CameraShakeAxisY FSoftClassPath
---@field ShakeControllers ULuaArrayHelper<APlayerController>
---@field ShakeClass UCameraShake
local UPESkillTask_CameraShake = {}
