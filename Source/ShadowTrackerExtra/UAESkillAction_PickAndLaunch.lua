---@meta

---@class UUAESkillAction_PickAndLaunch: UUAESkillAction
---@field bUseKeyBoardCenterLoc boolean
---@field CenterLocationKeyName any
---@field bUseCenterLoc boolean
---@field CenterLoc FVector
---@field LaunchPower number
---@field LaunchPowerNotStand number
---@field LaunchPowerFalling number
---@field LaunchRadius number
---@field bDecreaseByDist boolean
---@field bHasLowestSpeed boolean
---@field LaunchPowerLeast number
---@field ClampZ number
---@field bShouldXYOverride boolean
---@field bShouldZOverride boolean
---@field bShouldAutoRemove boolean
local UUAESkillAction_PickAndLaunch = {}

---@param CharacterOwner ASTExtraBaseCharacter
---@param bXYOverride boolean
---@param bZOverride boolean
---@param bAutoRemove boolean
---@return FVector
function UUAESkillAction_PickAndLaunch:GetLaunchVelocityFunc(CharacterOwner, bXYOverride, bZOverride, bAutoRemove) end
