---@meta

---@class ULiftMovementComponent: UFloatingPawnMovement
---@field LiftRepMovement any
---@field MovementSmoothAlpha number
---@field bFirstRepMovementOver boolean
---@field bEnableRepMovement boolean
---@field bForceClientNotSimulation boolean
---@field OnArrivedLimitedLocDelegate FOnArrivedLimitedLocDelegate
---@field EndLocation FVector
---@field StartLocation FVector
---@field OnLiftImpactDelegate FOnLiftImpactDelegate
---@field bUseCurveSpeed boolean
---@field CurrentMovingTime number
---@field bAutoSetTagsWhenSetUpdatedComponent boolean
---@field AutoSetTags ULuaArrayHelper<string>
---@field AutoSetTagsParent ULuaArrayHelper<string>
local ULiftMovementComponent = {}

function ULiftMovementComponent:OnRep_LiftRepMovement() end

---@param NewStartLocation FVector
function ULiftMovementComponent:SetStartLocation(NewStartLocation) end

---@param NewEndLocation FVector
function ULiftMovementComponent:SetEndLocation(NewEndLocation) end

---@param WorldVector FVector
---@param bForce boolean
function ULiftMovementComponent:AddInputVector(WorldVector, bForce) end

---@param Hit FHitResult
---@param TimeSlice number
---@param MoveDelta FVector
function ULiftMovementComponent:ReceiveOnImpact(Hit, TimeSlice, MoveDelta) end
