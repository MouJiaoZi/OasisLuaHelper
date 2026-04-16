---@meta

---Used for build UUTSkillPicker_Fan *
---@class FUTSkillPicker_FanCreateData
---@field Radius number @Radius *
---@field Angle number @Angle : (0 - 180) *
---@field Offset FVector
---@field bApplyRotationOffset boolean
---@field RotationOffset FRotator
---@field Random boolean
---@field IsCheckHeadshot boolean
---@field IsShowDebugFan boolean
---@field bAllowedNonCharacter boolean
---@field bPickUpMonsters boolean
---@field FreeRadiusRatio number @Free Radius ratio *
---@field bBlockByShield boolean
---@field DebugObjectSpawnForLocation AActor
---@field SpecificActorClass AActor
FUTSkillPicker_FanCreateData = {}


---仅能获取前方最多180度的目标
---@class UUAESkillPicker_Fan: UUAESkillPicker
---@field FanData FUTSkillPicker_FanCreateData
---@field bIgnoreTestAttachedParent boolean
local UUAESkillPicker_Fan = {}
