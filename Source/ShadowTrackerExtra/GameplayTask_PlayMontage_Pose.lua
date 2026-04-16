---@meta

---@class FGameplayTask_SkillPoseMontageData
FGameplayTask_SkillPoseMontageData = {}


---@class FGameplayTask_PlayMontage_Pose_Data
---@field PoseMontageData FGameplayTask_SkillPoseMontageData
---@field FPPPoseMontageData FGameplayTask_SkillPoseMontageData
---@field NewFPPPoseMontageData FGameplayTask_SkillPoseMontageData
---@field PoseMontageData_LeftHand FGameplayTask_SkillPoseMontageData
---@field FPPPoseMontageData_LeftHand FGameplayTask_SkillPoseMontageData
---@field NewFPPPoseMontageData_LeftHand FGameplayTask_SkillPoseMontageData
---@field PlaySpeedRate number
---@field MutexMontageGroupName string
---@field bNotStopMontageWhenDestroy boolean
FGameplayTask_PlayMontage_Pose_Data = {}


---@class UGameplayTask_PlayMontage_Pose: UGameplayTask_PlayMontage
---@field PlayMontage_Pose_Data FGameplayTask_PlayMontage_Pose_Data
local UGameplayTask_PlayMontage_Pose = {}
