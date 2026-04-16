---@meta

---@class UPESkillTaskProgressUIType
---@field UPESkillTaskProgressUIType_CountDown number @ProgressUIType_CountDown
---@field UPESkillTaskProgressUIType_Bar number @ProgressUIType_Bar
---@field UPESkillTaskProgressUIType_Custom number @自定义
UPESkillTaskProgressUIType = {}


---@class FPESkillTaskProgressConfig
---@field TimePercents number
---@field Color FLinearColor
FPESkillTaskProgressConfig = {}


---@class IPETaskProgressInterface
IPETaskProgressInterface = {}

---@param Color FLinearColor
function IPETaskProgressInterface:SetColor(Color) end

---@param Text string
function IPETaskProgressInterface:SetText(Text) end

---@param Duration number
function IPETaskProgressInterface:SetDuration(Duration) end

---@param Skill UPersistEffectSkill
function IPETaskProgressInterface:SetSkill(Skill) end


---@class UPESkillTask_ProgressUI: UPESkillTaskBase
---@field PESkillTaskProgressUIType UPESkillTaskProgressUIType
---@field Duration number
---@field DescriptionText string
---@field PESkillTaskProgressConfig ULuaArrayHelper<FPESkillTaskProgressConfig>
---@field UISlot FUISlotSelector
---@field BarUserWidgetPath FSoftClassPath
---@field CountDownUserWidgetPath FSoftClassPath
---@field CustomUserWidgetPath FSoftClassPath
local UPESkillTask_ProgressUI = {}
