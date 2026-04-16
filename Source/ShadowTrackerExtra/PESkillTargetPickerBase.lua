---@meta

---@class EPESkillTargetsSortType
---@field E_PESKILL_TargetsSort_Random number @//*UGC* 随机排序
---@field E_PESKILL_TargetsSort_DistancePrior number @//*UGC* 距离排序(距离近优先)
---@field E_PESKILL_TargetsSort_AnglePrior number @//*UGC* 角度排序(跟释放者正前方的角度小优先)
---@field E_PESKILL_TargetsSort_Custom number @//*UGC* 自定义
EPESkillTargetsSortType = {}


---@class UPESkillTargetPickerBase: UPESkillPickerBase
---@field MaxNum FIntGetter
---@field SortType EPESkillTargetsSortType
---@field SortFunction FBindFunctionSelector
---@field CampFilter number @阵营过滤
---@field ShouldBeVisible boolean @是否要求目标可见(剔除跟释放者之间有遮挡的目标)
---@field StartTransform FPESkillTransformOffset
local UPESkillTargetPickerBase = {}

function UPESkillTargetPickerBase:PickTargets() end
