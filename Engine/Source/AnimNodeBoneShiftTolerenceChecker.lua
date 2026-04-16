---@meta

---@class EBoneShiftTolerencePolicy
---@field E_MaxShiftDistance number @相对初始位移的最大偏移距离
---@field E_MaxShiftScale number @相对初始位移的最大偏移倍数
EBoneShiftTolerencePolicy = {}


---@class FAnimNodeBoneShiftTolerenceChecker
---@field bShrinkIfOutofTolerence boolean
---@field bIncludeRootKinamiticBone boolean
---@field RootBone FBoneReference
---@field TolerencePolicy EBoneShiftTolerencePolicy
---@field MaxTolerenceBoneShiftDistance number
---@field MaxTolerenceBoneShiftScale number
FAnimNodeBoneShiftTolerenceChecker = {}
