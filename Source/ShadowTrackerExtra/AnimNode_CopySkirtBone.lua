---@meta

---用于裙子模拟时缓存所需的骨骼数据到proxy,在模拟结束后读取并还原对应骨骼数据
---@class FAnimNode_CopySkirtBone
---@field SourceBone FBoneReference @Source Bones Name to cache transform from
---@field bNeedCache boolean
FAnimNode_CopySkirtBone = {}
