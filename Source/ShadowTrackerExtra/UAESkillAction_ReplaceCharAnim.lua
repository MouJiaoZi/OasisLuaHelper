---@meta

---@class FSkillReplaceCharAnimData
---@field CharacterAnimType ECharacterAnimType
---@field PoseAnimList ULuaArrayHelper<UAnimationAsset>
---@field FPPPoseAnimList ULuaArrayHelper<UAnimationAsset>
FSkillReplaceCharAnimData = {}


---@class FReplaceCharAnimDataNewFPP
---@field NewFPPCharacterAnimType ECharacterNewFPPAnimType
---@field NewFPPPoseAnimList ULuaArrayHelper<UAnimationAsset>
FReplaceCharAnimDataNewFPP = {}


---@class FSAReplaceCharAnimInstanceStruct
FSAReplaceCharAnimInstanceStruct = {}


---@class FSkillReplaceCharJumpPhaseData
---@field JumpPhase ECharacterJumpPhase
---@field PhaseAnimSoftPtr UAnimationAsset
FSkillReplaceCharJumpPhaseData = {}


---@class FSkillReplaceCharJumpAnimData
---@field JumpType ECharacterJumpType
---@field PoseAnimList ULuaArrayHelper<FSkillReplaceCharJumpPhaseData>
---@field FPPPoseAnimList ULuaArrayHelper<FSkillReplaceCharJumpPhaseData>
---@field NewFPPPoseAnimList ULuaArrayHelper<FSkillReplaceCharJumpPhaseData>
FSkillReplaceCharJumpAnimData = {}


---@class UUAESkillAction_ReplaceCharAnim: UUAESkillAction
---@field bNeedSyncLoad boolean
---@field AnimDataList ULuaArrayHelper<FSkillReplaceCharAnimData>
---@field NewFPPAnimDataList ULuaArrayHelper<FReplaceCharAnimDataNewFPP>
---@field JumpAnimDataList ULuaArrayHelper<FSkillReplaceCharJumpAnimData>
---@field DynamicLoadinigAnimEditList ULuaArrayHelper<FDynamicLoadinigAnimData>
---@field AnimAdditiveTPPMap ULuaMapHelper<ECharAnimAdditiveType, FAnimAdditiveData>
---@field AnimAdditiveFPPMap ULuaMapHelper<ECharAnimAdditiveType, FAnimAdditiveData>
---@field bShareWeaponAnimTypeConfig boolean
---@field bRemoveWhenPhaseStop boolean
---@field AnimCacheList ULuaArrayHelper<UAnimationAsset>
---@field CachedAnimAssets ULuaArrayHelper<UAnimationAsset>
local UUAESkillAction_ReplaceCharAnim = {}
