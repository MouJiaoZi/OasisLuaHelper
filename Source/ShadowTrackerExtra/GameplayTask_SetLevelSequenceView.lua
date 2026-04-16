---@meta

---@class FGameplayTask_LevelSequenceView_Data
---@field FieldOfView number
---@field bUseCustomizeData boolean
---@field RelativeTransform FTransform
FGameplayTask_LevelSequenceView_Data = {}


---@class UGameplayTask_SetLevelSequenceView: UUAEGameplayTask
local UGameplayTask_SetLevelSequenceView = {}

---Blend viewTarget back to person third camera if you don't want to change the camera immediately at the end.
---@param BlendOutTime number
---@param BlendFunction EViewTargetBlendFunction
---@param LockOutgoing boolean
function UGameplayTask_SetLevelSequenceView:BlendViewTargetBackToPersonThirdCamera(BlendOutTime, BlendFunction, LockOutgoing) end

---@param LandedCharacter ASTExtraBaseCharacter
function UGameplayTask_SetLevelSequenceView:OnBecomeOBViewTarget(LandedCharacter) end

---@param PC APlayerController
function UGameplayTask_SetLevelSequenceView:OnEndBlendViewTarget(PC) end
