---@meta

---@class EAINewThrowProjectilePhase
---@field None number
---@field SwitchWeapon number
---@field BeforeThrow number
---@field Hold number
---@field AfterThrow number
EAINewThrowProjectilePhase = {}


---扔投掷物New
---@class UBTTask_NewThrowProjectile: UBTTaskNode
---@field InTargetBlackboardKey FBlackboardKeySelector
---@field InProjectileID number
---@field InThrowMode EThrowGrenadeMode
---@field bTracePath boolean
---@field bHoldStateFocusTarget boolean
---@field InMinRandomRadius number
---@field InMaxRandomRadius number
---@field InMaxRandIterTimes number
---@field InTraceFloorChannel ECollisionChannel
---@field InTargetFloorHeightOffset number
---@field InValidTargetLocZOffset number
---@field InSwitchWeaponTime number
---@field InRandomTimeBeforeThrow FVector2D
---@field InRandomTimeHold FVector2D
---@field InRandomTimeAfterThrow FVector2D
---@field bRestoreWeaponOnFinished boolean
---@field bThrowDynamicFloor boolean
local UBTTask_NewThrowProjectile = {}
