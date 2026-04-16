---@meta

---@class EPVEProjectileType
---@field UseFixedThrowAngle number
---@field UseFixedGravityScale number
EPVEProjectileType = {}


---@class FSALaunchProjectile
FSALaunchProjectile = {}


---@class UUAESkillAction_LaunchProjectile: UUAESkillAction
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
---@field bIsUseOwnerControlRotation boolean
---@field VerifyStartDistance number
---@field VerifyStartForwardDot number
---@field bUseCachedTargetLocation boolean
---@field bUseSelfLocationOffset boolean
---@field SelfLocOffset FVector
---@field SelfLocRot FRotator
---@field bUseCharacterRotation boolean
---@field bUseAutoTargetRotation boolean
---@field bUpdateTargetPosWhenStartFly boolean
local UUAESkillAction_LaunchProjectile = {}
