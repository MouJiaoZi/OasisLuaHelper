---@meta

---A simple rig for simulating crane-like camera movements.
---@class ACameraRig_Crane: AActor
---@field CranePitch number @Controls the pitch of the crane arm.
---@field CraneYaw number @Controls the yaw of the crane arm.
---@field CraneArmLength number @Controls the length of the crane arm.
---@field bLockMountPitch boolean @Lock the mount pitch so that an attached camera is locked and pitched in the direction of the crane arm
---@field bLockMountYaw boolean @Lock the mount yaw so that an attached camera is locked and oriented in the direction of the crane arm
local ACameraRig_Crane = {}
