---@meta

---@class EAIThrowProjectilePhase
---@field None number
---@field SwitchWeapon number
---@field BeforeThrow number
---@field AfterThrow number
EAIThrowProjectilePhase = {}


---扔投掷物
---@class UBTTask_ThrowProjectile: UBTTaskNode
---@field InProjectileID number
---@field InThrowMode EThrowGrenadeMode
---@field InThrowTargetLoc FBlackboardKeySelector
---@field InThrowRotation FBlackboardKeySelector
---@field InSwitchWeaponTime number
---@field InRandomTimeBeforeThrow FVector2D
---@field InRandomTimeAfterThrow FVector2D
---@field bRestoreWeaponOnFinished boolean
local UBTTask_ThrowProjectile = {}
