---@meta

---@class EPickerFromBlackboard_DataType
---@field Actor number @行为树中的单个目标
---@field Circle number @圆圈范围内的多个目标
EPickerFromBlackboard_DataType = {}


---@class UUAESkillPicker_FromBlackboard: UUAESkillPicker
---@field PickerType EPickerFromBlackboard_DataType
---@field ObjectNames ULuaArrayHelper<string>
---@field LocationNames ULuaArrayHelper<string>
---@field bNeedCheckRange boolean
---@field Radius number @Radius *
---@field Angle number @Angle : (0 - 180) *
---@field bIncludeAI boolean
local UUAESkillPicker_FromBlackboard = {}
