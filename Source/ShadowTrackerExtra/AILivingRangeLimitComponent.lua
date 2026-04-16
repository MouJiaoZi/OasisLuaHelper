---@meta

---AI活动范围限制组件
---@class UAILivingRangeLimitComponent: UAIAbilityComponent
---@field bInLivingRangeByOverlapComp boolean
---@field bForceSetToSpawnLocWhenRunFarAway boolean
---@field ForceSetToSpawnLocCheckInterval number
---@field ForceSetToSpawnLocXTolerance number
---@field ForceSetToSpawnLocYTolerance number
---@field ForceSetToSpawnLocZUpTolerance number
---@field ForceSetToSpawnLocZDownTolerance number
local UAILivingRangeLimitComponent = {}

---@param InBox UBoxComponent
function UAILivingRangeLimitComponent:SetLivingRangeBox(InBox) end

---@param InOverlapArea UOverlapCheckAreaComponent
function UAILivingRangeLimitComponent:SetLivingRangeOverlapArea(InOverlapArea) end

---@param TestLocation FVector
---@param bCheckZ boolean
---@return boolean
function UAILivingRangeLimitComponent:IsLocationInLivingRange(TestLocation, bCheckZ) end

---@param InActor AActor
---@param bCheckZ boolean
---@return boolean
function UAILivingRangeLimitComponent:IsActorInLivingRange(InActor, bCheckZ) end
