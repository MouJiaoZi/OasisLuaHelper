---@meta

---Used for build UUTSkillPicker_Capsule *
---@class FUTSkillPicker_CapsuleCreateData
---@field Radius number @Radius *
---@field HalfHeight number @Capsule radius *
---@field MinCosValue number @Capsule radius *
---@field ActionRotationOffset FRotator
---@field Offset FVector
---@field HorizonOffset number
---@field VerticalOffset number
---@field bOffsetUseActorLocalAxis boolean
---@field bOffsetUseViewRotation boolean
---@field IsShowDebugFan boolean
---@field bIsBoneCheck boolean
---@field bPickUpMonsters boolean
---@field bApplyFullOverlapResult boolean
---@field bIncludeHiddenTarget boolean
---@field bUseSweepTrace boolean
---@field bIgnoreSameCamp boolean
---@field bIgnoreSameTeam boolean
FUTSkillPicker_CapsuleCreateData = {}


---仅能获取前方胶囊体范围内的目标
---@class UUAESkillPicker_Capsule: UUAESkillPicker
---@field CapsuleData FUTSkillPicker_CapsuleCreateData
local UUAESkillPicker_Capsule = {}
