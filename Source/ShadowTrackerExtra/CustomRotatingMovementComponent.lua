---@meta

---@class UCustomRotatingMovementComponent: UMovementComponent
---@field RotationRate FRotator @How fast to update roll/pitch/yaw of the component we update.
---@field PivotTranslation FVector @Translation of pivot point around which we rotate, relative to current rotation. For instance, with PivotTranslation set to (X=+100, Y=0, Z=0), rotation will occur around the point +100 units along the local X axis from the center of the object, rather than around the object's origin (the default).
---@field bRotationInLocalSpace number @Whether rotation is applied in local or world space.
---@field bRotationWithVelocity number
---@field MaxSpeed number @用来计算旋转速度
---@field MaxFrameRotationFriction number
local UCustomRotatingMovementComponent = {}
