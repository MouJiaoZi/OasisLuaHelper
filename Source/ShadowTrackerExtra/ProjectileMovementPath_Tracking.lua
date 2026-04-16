---@meta

---@class UProjectileMovementPath_Tracking: UProjectileMovementPathBase
---@field Speed FFloatGetter
---@field Acceleration FFloatGetter
---@field MaxSpeed FFloatGetter
---@field RadSpeed FFloatGetter
---@field RadAcceleration FFloatGetter
---@field MaxRadSpeed FFloatGetter
---@field AttractionSquaredDistance FFloatGetter
---@field ProjectileGravityScale FFloatGetter
---@field AttachPos FMeshSocketSelector
---@field RepVelocity FVector
---@field TargetPosition FVector
---@field bRepAttractionFlag boolean
---@field ReachDistSquared number
---@field bEnableTracking boolean
local UProjectileMovementPath_Tracking = {}

---@return number
function UProjectileMovementPath_Tracking:GetSpeed() end

---@param InSpeed FFloatGetter
function UProjectileMovementPath_Tracking:OnRep_Speed(InSpeed) end

---@param InAcceleration number
function UProjectileMovementPath_Tracking:SetAcceleration(InAcceleration) end

---@return number
function UProjectileMovementPath_Tracking:GetAcceleration() end

---@return number
function UProjectileMovementPath_Tracking:GetMaxSpeed() end

function UProjectileMovementPath_Tracking:OnRep_MaxSpeed() end

---@param InDistance number
function UProjectileMovementPath_Tracking:SetAttractionSquaredDistance(InDistance) end

---@return number
function UProjectileMovementPath_Tracking:GetFastRotateTrackDistance() end

---@param InProjectileGravityScale number
function UProjectileMovementPath_Tracking:SetProjectileGravityScale(InProjectileGravityScale) end

---@return number
function UProjectileMovementPath_Tracking:GetProjectileGravityScale() end

---@return FVector
function UProjectileMovementPath_Tracking:GetTargetPosition() end

---@param DeltaTime number
function UProjectileMovementPath_Tracking:ReceiveToTargetPosition(DeltaTime) end

function UProjectileMovementPath_Tracking:ReceiveReachTargetPosition() end

function UProjectileMovementPath_Tracking:UpdateTargetPosition() end

function UProjectileMovementPath_Tracking:OnRep_RepVelocity() end

function UProjectileMovementPath_Tracking:OnRep_ProjectileGravityScale() end

---@param InProjectileGravityScale number
function UProjectileMovementPath_Tracking:LocalSetProjectileGravityScale(InProjectileGravityScale) end
