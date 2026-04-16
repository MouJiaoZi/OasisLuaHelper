---@meta

---@class EUGCAIThrowProjectilePhase
---@field None number
---@field SwitchWeapon number
---@field BeforeThrow number
---@field AfterThrow number
EUGCAIThrowProjectilePhase = {}


---@class UBTTask_UGC_ThrowProjectile: UBTTaskNode
---@field InProjectileID number
---@field bGetProjectileIDFromBlackboard boolean
---@field InProjectileIDBlackboardKey FBlackboardKeySelector
---@field InThrowMode EThrowGrenadeMode
---@field InThrowTargetLoc FBlackboardKeySelector
---@field InThrowRotation FBlackboardKeySelector
---@field bRestoreWeaponOnFinished boolean
---@field InSwitchWeaponTime number
---@field InRandomTimeBeforeThrow FVector2D
---@field InRandomTimeAfterThrow FVector2D
local UBTTask_UGC_ThrowProjectile = {}
