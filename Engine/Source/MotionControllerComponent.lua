---@meta

---@class UMotionControllerComponent: UPrimitiveComponent
---@field PlayerIndex number @Which player index this motion controller should automatically follow
---@field Hand EControllerHand @Which hand this component should automatically follow
---@field bDisableLowLatencyUpdate number @If false, render transforms within the motion controller hierarchy will be updated a second time immediately before rendering.
---@field CurrentTrackingStatus ETrackingStatus @The tracking status for the device (e.g. full tracking, inertial tracking only, no tracking)
local UMotionControllerComponent = {}
