---@meta

---Capsule shape used for collision. Z axis is capsule axis.
---@class FKSphylElem
---@field TM_DEPRECATED FMatrix
---@field Orientation_DEPRECATED FQuat
---@field Center FVector @Position of the capsule's origin
---@field Rotation FRotator @Rotation of the capsule
---@field Radius number @Radius of the capsule
---@field Length number @This is of line-segment ie. add Radius to both ends to find total length.
FKSphylElem = {}
