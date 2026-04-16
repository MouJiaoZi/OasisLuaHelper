---@meta

---目标点的速度场 支持配置动态目标点和平台。角色在平台上往目标点叠加速度
---@class USpotVelocityFieldLogicNode: UFieldLogicNodeVector
---@field Magnitude number @Magnitude of the uniform vector field
---@field RepulsionOpenDirectionIsZeroToFiexedDir boolean
---@field DisOffset number @距离偏差，离目标点距离在这个偏差内就不给速度了 注意：如果有平面法线，那么会先投影到平面后再判断是否小于这个距离
---@field SpotSelector FActorComponentSelector @目标点
---@field PlaneSelector FActorComponentSelector @平面，用于获取平面法线，优先级高于PlaneNormal 如果有就沿该平面朝向Spot 否则那么就直接朝向Spot
---@field PlaneNormal FVector @平面法线， 如果有就沿该平面朝向Spot 否则那么就直接朝向Spot 如果配置了Plane，那么就直接实时获取Plane的法线
local USpotVelocityFieldLogicNode = {}
