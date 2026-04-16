---@meta

---速度场 支持方向和速度大小
---@class UVelocityFieldLogicNode: UFieldLogicNodeVector
---@field Magnitude number @Magnitude of the uniform vector field
---@field Direction FVector @Normalized direction of the uniform vector field 如果配置了Plane，那么Direction就是相对朝向，否则Direction就是绝对朝向
---@field PlaneSelector FActorComponentSelector @平面，用于获取平面法线 如果配置了，那么Direction就是Plane的相对朝向，否则Direction就是绝对朝向
local UVelocityFieldLogicNode = {}
