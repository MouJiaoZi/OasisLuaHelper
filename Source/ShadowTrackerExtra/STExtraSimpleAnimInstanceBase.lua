---@meta

---@class USTExtraSimpleAnimInstanceBase: UAnimInstanceBase
---@field EnableAdjustFloorNormal boolean
---@field AdjustFloorRot FRotator
---@field AdjustFloorDelta number
local USTExtraSimpleAnimInstanceBase = {}

---@param DeltaSeconds number
function USTExtraSimpleAnimInstanceBase:CacheAnimState(DeltaSeconds) end

---@param ForceRefreshVar boolean
function USTExtraSimpleAnimInstanceBase:CacheAnimDataList(ForceRefreshVar) end

---@param loadAnimParams FAsyncLoadAnimParams
function USTExtraSimpleAnimInstanceBase:OnAnimListLoadedFinished(loadAnimParams) end

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param DamageType number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function USTExtraSimpleAnimInstanceBase:OnPawnDeadEvent(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, DamageType, DamageTypeClass, IsHeadShotDamage, Context) end

---@param state number
function USTExtraSimpleAnimInstanceBase:OnEnterState(state) end

---@param state number
function USTExtraSimpleAnimInstanceBase:OnLeaveState(state) end

function USTExtraSimpleAnimInstanceBase:ResetAnimState() end
