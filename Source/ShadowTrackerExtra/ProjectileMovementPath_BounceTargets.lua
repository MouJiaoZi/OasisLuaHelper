---@meta

---@class UProjectileMovementPath_BounceTargets: UProjectileMovementPath_Normal
---@field Radius FFloatGetter
---@field BounceCount FIntGetter
---@field bCanReplaceBounceTarget boolean
---@field ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field SearchFilterContainer FProjectileFilterContainer
---@field SearchPriority ESearchPriority
---@field bInvertSearchPriority boolean
---@field bAlwaysTracking boolean
---@field AttachPos FMeshSocketSelector
---@field TargetPosition FVector
---@field LastBounceActor AActor
---@field RecordBouncedTargets ULuaArrayHelper<APawn>
local UProjectileMovementPath_BounceTargets = {}

function UProjectileMovementPath_BounceTargets:ReceiveToTargetPosition() end

function UProjectileMovementPath_BounceTargets:UpdateTargetPosition() end
