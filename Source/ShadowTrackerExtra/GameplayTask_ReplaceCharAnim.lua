---@meta

---@class FGameplayTask_ReplaceCharAnimData
---@field CharacterAnimType ECharacterAnimType
---@field PoseAnimList ULuaArrayHelper<UAnimationAsset>
---@field FPPPoseAnimList ULuaArrayHelper<UAnimationAsset>
FGameplayTask_ReplaceCharAnimData = {}


---@class FGameplayTask_ReplaceCharJumpPhaseData
---@field JumpPhase ECharacterJumpPhase
---@field PhaseAnimSoftPtr UAnimationAsset
FGameplayTask_ReplaceCharJumpPhaseData = {}


---@class FGameplayTask_ReplaceCharJumpAnimData
---@field JumpType ECharacterJumpType
---@field PoseAnimList ULuaArrayHelper<FGameplayTask_ReplaceCharJumpPhaseData>
---@field FPPPoseAnimList ULuaArrayHelper<FGameplayTask_ReplaceCharJumpPhaseData>
FGameplayTask_ReplaceCharJumpAnimData = {}


---@class FGameplayTask_ReplaceCharAnim_Data
---@field AnimDataList ULuaArrayHelper<FGameplayTask_ReplaceCharAnimData>
---@field JumpAnimDataList ULuaArrayHelper<FGameplayTask_ReplaceCharJumpAnimData>
---@field AnimLayer EAnimLayerType
FGameplayTask_ReplaceCharAnim_Data = {}


---@class UGameplayTask_ReplaceCharAnim: UUAEGameplayTask
---@field ReplaceCharAnim_Data FGameplayTask_ReplaceCharAnim_Data
local UGameplayTask_ReplaceCharAnim = {}

---@param bAttached boolean
function UGameplayTask_ReplaceCharAnim:SetBuffAnimListAttach(bAttached) end

---@param ReplaceCharAnimData ULuaArrayHelper<FGameplayTask_ReplaceCharAnimData>
---@return boolean
function UGameplayTask_ReplaceCharAnim:ReplaceAnimation(ReplaceCharAnimData) end

---@param ReplaceCharJumpAnimData ULuaArrayHelper<FGameplayTask_ReplaceCharJumpAnimData>
---@return boolean
function UGameplayTask_ReplaceCharAnim:ReplaceJumpAnimation(ReplaceCharJumpAnimData) end
