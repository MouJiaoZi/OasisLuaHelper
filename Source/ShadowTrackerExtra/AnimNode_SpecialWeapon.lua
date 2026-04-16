---@meta

---特殊武器根据配件动态修改指定Bone的FTransform
---@class FAnimNode_SpecialWeapon
---@field Target FSpecialWeaponTransform
---@field CacheBoneReference ULuaMapHelper<string, FBoneReference>
FAnimNode_SpecialWeapon = {}


---特殊武器根据配件动态附加指定动画
---@class FAnimNode_SpecialWeaponAdditive
---@field Base FPoseLink
---@field Additive FPoseLink
---@field ApplyAttachmentSockets ULuaSetHelper<EWeaponAttachmentSocketType>
---@field Target FSpecialWeaponTransform
---@field Alpha number
---@field AlphaScaleBias FInputScaleBias
---@field LODThreshold number
---@field ActualAlpha number
FAnimNode_SpecialWeaponAdditive = {}
