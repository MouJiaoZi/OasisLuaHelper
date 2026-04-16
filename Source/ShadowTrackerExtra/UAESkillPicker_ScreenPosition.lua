---@meta

---@class UUAESkillPicker_ScreenPosition: UUAESkillPicker
---@field TraceLength number
---@field ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field ActorFilters ULuaArrayHelper<AActor>
---@field IgnoredActors ULuaArrayHelper<AActor>
---@field DrawDebugLine boolean
---@field AddTraceEndPoint boolean
---@field PickAllTarget boolean
---@field UseCollisionChannel boolean
---@field EnableStartPenetrating boolean
---@field TargetCollisionChannel ECollisionChannel
local UUAESkillPicker_ScreenPosition = {}


---@class UUAESkillPicker_Crosshair: UUAESkillPicker_ScreenPosition
---@field bNeedJudgeDSWhenGetLocation boolean
local UUAESkillPicker_Crosshair = {}
