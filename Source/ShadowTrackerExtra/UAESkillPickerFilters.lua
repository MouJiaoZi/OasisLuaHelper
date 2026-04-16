---@meta

---@class UUAESkillPickerFilter_IgnoreActorClass: UUTSkillPickerFilter
---@field IgnoreActorClass ULuaArrayHelper<AActor>
local UUAESkillPickerFilter_IgnoreActorClass = {}


---@class UUAESkillPickerFilter_CareActorClass: UUTSkillPickerFilter
---@field CareActorClass ULuaArrayHelper<AActor>
local UUAESkillPickerFilter_CareActorClass = {}


---@class UUAESkillPickerFilter_SortByDistance: UUTSkillPickerFilter
---@field bSortWithIncreasing boolean
local UUAESkillPickerFilter_SortByDistance = {}


---@class UUAESkillPickerFilter_SortByHealth: UUTSkillPickerFilter
---@field bSortWithIncreasing boolean
local UUAESkillPickerFilter_SortByHealth = {}


---@class UUAESkillPickerFilter_FirstCountTargets: UUTSkillPickerFilter
---@field TargetsCount number
local UUAESkillPickerFilter_FirstCountTargets = {}


---@class UUAESkillPickerFilter_PlayerHasState: UUTSkillPickerFilter
---@field bHasAllStates number
---@field bHasAnyStates number
---@field bHasNoStates number
---@field States ULuaArrayHelper<EPawnState>
local UUAESkillPickerFilter_PlayerHasState = {}


---@class UUAESkillPickerFilter_ActorHasTags: UUTSkillPickerFilter
---@field bHasAllTags number
---@field bHasAnyTags number
---@field bHasNoTags number
---@field Tags ULuaArrayHelper<string>
local UUAESkillPickerFilter_ActorHasTags = {}


---@class UUAESkillPickerFilter_IgnoreOwner: UUTSkillPickerFilter
local UUAESkillPickerFilter_IgnoreOwner = {}


---@class UUAESkillPickerFilter_IgnoreTeammate: UUTSkillPickerFilter
local UUAESkillPickerFilter_IgnoreTeammate = {}


---@class UUAESkillPickerFilter_IgnoreNotBlockCollisionResponses: UUTSkillPickerFilter
---@field TargetCollisionChannel ECollisionChannel
local UUAESkillPickerFilter_IgnoreNotBlockCollisionResponses = {}


---@class UUAESkillPickerFilter_IgnorePlayerOnMovePlatform: UUTSkillPickerFilter
local UUAESkillPickerFilter_IgnorePlayerOnMovePlatform = {}


---@class UUAESkillPickerFilter_OnOneSideOfOwnerChar: UUTSkillPickerFilter
---@field bOnLeftOfOwner number
---@field bOnRightOfOwner number
local UUAESkillPickerFilter_OnOneSideOfOwnerChar = {}


---@class UUAESkillPickerFilter_IgnorePlayerInJumping: UUTSkillPickerFilter
local UUAESkillPickerFilter_IgnorePlayerInJumping = {}
