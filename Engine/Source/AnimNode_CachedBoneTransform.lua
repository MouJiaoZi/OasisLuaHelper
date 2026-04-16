---@meta

---@class FAnimNode_CachedBoneTransform
---@field Source FPoseLink
---@field BoneToCache FBoneReference
---@field CacheFlagName string
---@field bSaveCacheToRootAnimIns boolean
FAnimNode_CachedBoneTransform = {}


---@class FAnimNode_UseCachedBoneTransform
---@field Source FPoseLink
---@field BoneToUseBeforeCache FBoneReference
---@field CacheFlagName string
---@field bModifyBoneTransformInNode boolean
---@field bUseTranslation boolean
---@field bUseTranslationX boolean
---@field bUseTranslationY boolean
---@field bUseTranslationZ boolean
---@field bUseRotation boolean
---@field CachedUseBoneTransform FTransform
FAnimNode_UseCachedBoneTransform = {}
