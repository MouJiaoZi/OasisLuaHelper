---@meta

---角色识别度、马赛克专项优化。模拟端远距离时，对角色骨骼加粗缩放
---@class UFC_PCScaleCharInLongDis: UFeatureCustomModule
---@field CharBoneScaleActivateFactor number
---@field CharBoneToScaleValue ULuaMapHelper<string, FVector>
local UFC_PCScaleCharInLongDis = {}
