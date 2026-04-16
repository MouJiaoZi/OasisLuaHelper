---@meta

---@class FGameplayTask_UseControlRot_Data
---@field IsUseControllerRotationPitch boolean
---@field IsUseControllerRotationYaw boolean
---@field IsUseControllerRotationRoll boolean
---@field bDisableFaceRotation boolean
---@field bStopAtTheEndOfThePhase boolean
---@field bWaistFollowingController boolean
---@field MaxDeltaYawBetweenControlAndActor number
FGameplayTask_UseControlRot_Data = {}


---@class UGameplayTask_UseControlRot: UUAEGameplayTask
---@field UseControlRot_Data FGameplayTask_UseControlRot_Data
local UGameplayTask_UseControlRot = {}
