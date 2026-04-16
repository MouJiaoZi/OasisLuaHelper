---@meta

---@class USTTrackVehAnimInstance: UVehicleAnimInstance
---@field DriveAnimLength number
---@field AssistAnimLength number
---@field DriveMainAlpha boolean
---@field DriveAssistAlpha boolean
---@field DriveMainAccumTime number
---@field DriveMainFramePos number
---@field DriveAssistAccumTime number
---@field DriveAssistFramePos number
---@field WheelAddRot number
---@field WheelRotRate number
---@field MoveAKEventID number
---@field StopMoveAKEventID number
---@field StopAkEventSpeed number
---@field bEnableSyncActorAnim boolean
local USTTrackVehAnimInstance = {}

---@param bHasInput boolean
function USTTrackVehAnimInstance:DriveMainStateChange(bHasInput) end
