---@meta

---@class FSALaunchProjectilePattern
FSALaunchProjectilePattern = {}


---@class FProjectilePatternConfig
---@field ProjectileNum number
---@field ProjectileRelativeYawOffset ULuaArrayHelper<number>
---@field BoxExtent FVector
---@field MaxDistance number
FProjectilePatternConfig = {}


---@class UAESkillAction_LaunchProjectilePattern: UUAESkillAction
---@field bOnlyServer boolean
---@field bLaunchFromServer boolean
---@field ProjectileActorTemplate APVEProjectileBase
---@field bIgnoreDamagePicker boolean
---@field bUseCharacterHeadLocation boolean
---@field bUseHitLocation boolean
---@field bOnlyAIUseProjectileLineOffset boolean
---@field ProjectileLineOffset FVector
---@field TargetActorOffset FVector
---@field bAttachToTargetActorCenter boolean
---@field ProjectileGravityScale number
---@field Speed number
---@field MaxDistance number
---@field AttachSocketName string
---@field DelayFlyTime number
---@field bSetMinDelayTimeWhenAI boolean
---@field DelayUpdateTargetLocationTime number
---@field bDelayTimeHide boolean
---@field MaxLifeSpan number
---@field bUndoDestroyProjBeforeThrowedOut boolean
---@field bUseHighArc boolean
---@field HighArcGravityScales ULuaArrayHelper<FHighArcParam>
---@field bIsHoming boolean
---@field HomingAccelerationMagnitude number
---@field bIsRay boolean
---@field bIsHorizontal boolean
---@field VerifyStartDistance number
---@field VerifyStartForwardDot number
---@field bUseSelfLocationOffset boolean
---@field SelfLocOffset FVector
---@field SelfLocRot FRotator
---@field bUseCharacterRotation boolean
---@field bUseAutoTargetRotation boolean
---@field bUpdateTargetPosWhenStartFly boolean
---@field RealConfig FProjectilePatternConfig
local UAESkillAction_LaunchProjectilePattern = {}

function UAESkillAction_LaunchProjectilePattern:GetRealPatternConfig() end

---@param InProjectile APVEProjectileBase
function UAESkillAction_LaunchProjectilePattern:InitProjectileFromSkill(InProjectile) end
