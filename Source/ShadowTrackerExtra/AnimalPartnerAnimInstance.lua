---@meta

---@class UAnimalPartnerAnimInstance: USTExtraSimpleAnimInstanceBase
local UAnimalPartnerAnimInstance = {}

---@param DeltaSeconds number
function UAnimalPartnerAnimInstance:CacheAnimState(DeltaSeconds) end

---@param ForceRefreshVar boolean
function UAnimalPartnerAnimInstance:CacheAnimDataList(ForceRefreshVar) end

---@param state number
function UAnimalPartnerAnimInstance:OnEnterState(state) end

---@param state number
function UAnimalPartnerAnimInstance:OnLeaveState(state) end


---@class UAnimalFunctionModule: UAnimFunctionModule_ObjInstanceBP
local UAnimalFunctionModule = {}
