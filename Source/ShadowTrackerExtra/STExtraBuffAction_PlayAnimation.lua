---@meta

---@class FBuffAnimationItem
---@field AnimationAssetToPlay UAnimationAsset
---@field AnimationAssetToPlayFPP UAnimationAsset
---@field AnimationMontageToPlay UAnimMontage
---@field AnimationMontageToPlayFPP UAnimMontage
---@field NeedReplayByChangFirstView boolean
FBuffAnimationItem = {}


---@class FBuffAnimationTagItem
---@field AnimationAssetTag string
---@field AnimationAssetTagFPP string
---@field AnimationMontageTag string
---@field AnimationMontageTagFPP string
---@field NeedReplayByChangFirstView boolean
FBuffAnimationTagItem = {}


---@class USTExtraBuffAction_PlayAnimation: UUTSkillAction
---@field BuffAnimations FBuffAnimationItem
---@field BuffAnimationTags FBuffAnimationTagItem
local USTExtraBuffAction_PlayAnimation = {}
