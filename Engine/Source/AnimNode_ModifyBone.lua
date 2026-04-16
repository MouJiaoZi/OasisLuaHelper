---@meta

---@class EBoneModificationMode
---@field BMM_Ignore number @The modifier ignores this channel (keeps the existing bone translation, rotation, or scale).
---@field BMM_Replace number @The modifier replaces the existing translation, rotation, or scale.
---@field BMM_Additive number @The modifier adds to the existing translation, rotation, or scale.
---@field BMM_Multiply number @Multiply by Coefficient
EBoneModificationMode = {}


---Simple controller that replaces or adds to the translation/rotation of a single bone.
---@class FAnimNode_ModifyBone
---@field BoneToModify FBoneReference @Name of bone to control. This is the main bone chain to modify from. *
---@field Translation FVector @New translation of bone to apply.
---@field Rotation FRotator @New rotation of bone to apply.
---@field Scale FVector @New Scale of bone to apply. This is only worldspace.
---@field TranslationMode EBoneModificationMode @Whether and how to modify the translation of this bone.
---@field RotationMode EBoneModificationMode @Whether and how to modify the translation of this bone.
---@field ScaleMode EBoneModificationMode @Whether and how to modify the translation of this bone.
---@field TranslationSpace EBoneControlSpace @Reference frame to apply Translation in.
---@field RotationSpace EBoneControlSpace @Reference frame to apply Rotation in.
---@field ScaleSpace EBoneControlSpace @Reference frame to apply Scale in.
---@field TranslationCoefficient FVector
FAnimNode_ModifyBone = {}
