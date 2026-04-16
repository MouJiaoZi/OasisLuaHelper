---@meta

---@class UPetAnimInstance: USTExtraSimpleAnimInstanceBase
---@field MoveForwardSpeed number @-180---+180
---@field IsMove boolean
---@field b_Swimming boolean
---@field SellCutePeriod number
---@field SellCuteAnimLeaveOffset number
---@field bEnableSellCute boolean
---@field b_SellCute boolean
---@field b_IsCute2 boolean
---@field b_Hit boolean
---@field v_HitVector FVector
local UPetAnimInstance = {}

---@param DeltaSeconds number
function UPetAnimInstance:CacheAnimState(DeltaSeconds) end

---@param ForceRefreshVar boolean
function UPetAnimInstance:CacheAnimDataList(ForceRefreshVar) end
