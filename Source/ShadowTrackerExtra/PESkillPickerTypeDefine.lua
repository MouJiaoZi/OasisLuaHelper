---@meta

---@class EPESkillTransformSourceType
---@field E_PESKILL_TransformSource_SkillOwner number @//*UGC* 技能释放者自身
---@field E_PESKILL_TransformSource_SelectTransform number @//*UGC* 技能选择的位置
---@field E_PESKILL_TransformSource_SelectTarget number @//*UGC* 技能选择的目标
---@field E_PESKILL_TransformSource_ClientMuzzlePos number @//*UGC* 客户端枪口位置
EPESkillTransformSourceType = {}


---@class EPESkillPointPickerType
---@field E_PESKILL_PointPicker_Circle number @圆形区域
---@field E_PESKILL_PointPicker_StaticMesh number @静态Mesh
---@field E_PESKILL_PointPicker_SkeletalMesh number @骨骼Mesh
EPESkillPointPickerType = {}


---@class EPESkillIndicatorVisiable
---@field E_PESKILL_IndicatorVisiable_Invisible number @不可见
---@field E_PESKILL_IndicatorVisiable_AuthorityVisible number @仅自己可见
---@field E_PESKILL_IndicatorVisiable_ClientVisible number @全局可见进度
EPESkillIndicatorVisiable = {}


---@class EPESkillIndicatorType
---@field E_PESKILL_Indicator_Activate number @瞬时型
---@field E_PESKILL_Indicator_Progress number @进度型
EPESkillIndicatorType = {}


---投掷类技能 Indicator
---@class FPESkillTransformOffset
---@field TransformSourceType EPESkillTransformSourceType
---@field Offset FTransform
FPESkillTransformOffset = {}
