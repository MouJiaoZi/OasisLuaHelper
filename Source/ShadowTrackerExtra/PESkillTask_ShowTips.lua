---@meta

---@class EPESkillTipType
---@field TipType_ID number @//*UGC* 使用TipsID显示
---@field TipType_String number @//*UGC* 使用字符串显示
EPESkillTipType = {}


---显示Tips的Action
---@class UPESkillTask_ShowTips: UPESkillTaskBase
---@field TipType EPESkillTipType
---@field TipsID number
---@field TipsString string
local UPESkillTask_ShowTips = {}
