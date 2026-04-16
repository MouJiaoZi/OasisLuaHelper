---@meta

---@class FAcrobaticsMovementComponentPlusMovementTransform
---@field Location FVector
---@field Rotation FRotator
---@field Scale FVector
FAcrobaticsMovementComponentPlusMovementTransform = {}


---@class UAcrobaticsMovementComponentPlus: UAcrobaticsMovementComponent
---@field MovementSmoothAlphaScale number
---@field LocationLerpTolerance number
---@field RotationLerpTolerance number
---@field ScaleLerpTolerance number
---@field bAlwaysUpdateComponentToWorld boolean
---@field MovementTransform FAcrobaticsMovementComponentPlusMovementTransform
---@field LastMovementTransform FAcrobaticsMovementComponentPlusMovementTransform
---@field bFirstMovementTransformReplicated boolean
---@field bUpdateComponentToWorldRequired boolean
local UAcrobaticsMovementComponentPlus = {}

function UAcrobaticsMovementComponentPlus:OnRep_MovementTransform() end
