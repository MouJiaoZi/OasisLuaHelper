---@meta

---@class USTAnimalAnimInstance: USTExtraSimpleAnimInstanceBase
---@field b_Hit boolean
---@field b_Moving boolean
---@field b_Trot boolean
---@field b_Running boolean
---@field f_MoveRate number
---@field v_HitVector FVector
---@field b_IsFighting boolean
---@field b_Holding boolean
---@field b_Falling boolean
local USTAnimalAnimInstance = {}

---@param DeltaSeconds number
function USTAnimalAnimInstance:CacheAnimState(DeltaSeconds) end

---@param ForceRefreshVar boolean
function USTAnimalAnimInstance:CacheAnimDataList(ForceRefreshVar) end

---@param state number
function USTAnimalAnimInstance:OnEnterState(state) end

---@param state number
function USTAnimalAnimInstance:OnLeaveState(state) end
