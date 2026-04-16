---@meta

---@class EPESkillCDChargeType
---@field PESkillCDChargeType_Rate number @比例
---@field PESkillCDChargeType_Absolute number @绝对时间
EPESkillCDChargeType = {}


---@class UPESkillTask_ChargeCDEnergy: UPESkillTaskPeriod
---@field ChargeRate number
---@field ChargeType EPESkillCDChargeType
---@field TargetSlot FGameplayTag
local UPESkillTask_ChargeCDEnergy = {}
