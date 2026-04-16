---@meta

---@class EBatchModifySpace
---@field ComponentSpace number
---@field BoneSpace number
---@field ParentBoneSpace number
EBatchModifySpace = {}


---@class FBoneListTransforms
---@field BoneNames ULuaArrayHelper<string>
---@field Transforms ULuaArrayHelper<FTransform>
FBoneListTransforms = {}


---@class FAnimNode_ModifyBoneList
---@field BoneListTransforms FBoneListTransforms
---@field SpaceMode EBatchModifySpace
---@field bEnableTranslation boolean
---@field bEnableRotation boolean
---@field bEnableScale boolean
FAnimNode_ModifyBoneList = {}
