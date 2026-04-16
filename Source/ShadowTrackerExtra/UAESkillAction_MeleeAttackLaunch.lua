---@meta

---@class FMeleeAttackLaunchData
FMeleeAttackLaunchData = {}


---@class UUAESkillAction_MeleeAttackLaunch: UUAESkillAction
---@field LaunchTag string
---@field MoveSpeedScale number
---@field bUseSpecificDir boolean
---@field DestBlackboardKeyName string
---@field MaximumMoveDist number
---@field bNotMoveWhenNoInput boolean
---@field bUsePCForward boolean
---@field StopVelocityRate number
---@field bEnableAbsorb boolean
---@field AbsorbDataID number
---@field AbsorbMinVerticalSpeed number
local UUAESkillAction_MeleeAttackLaunch = {}

---@param CharacterOwner ASTExtraBaseCharacter
---@param bXYOverride boolean
---@param bZOverride boolean
---@param bAutoRemove boolean
---@return FVector
function UUAESkillAction_MeleeAttackLaunch:GetLaunchVelocityFunc(CharacterOwner, bXYOverride, bZOverride, bAutoRemove) end
