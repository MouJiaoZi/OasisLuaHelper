---@meta

---@class FUTSkillPicker_BoxCreateData
---@field HalfBoxExtent FVector
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field MinCosValue number
---@field bDrawDebugBox boolean
---@field bPickUpMonsters boolean
---@field bIncludeHiddenTarget boolean
---@field bIgnoreSameCamp boolean
---@field bIgnoreSameTeam boolean
FUTSkillPicker_BoxCreateData = {}


---@class UUAESkillPicker_Box: UUAESkillPicker
---@field BoxData FUTSkillPicker_BoxCreateData
local UUAESkillPicker_Box = {}
