---@meta

---@class FRecordData_Camera
---@field FOV number
---@field Location FVector
---@field Rotation FRotator
FRecordData_Camera = {}


---@class URecordData_CameraData: URecordData
---@field KeyFrame ULuaArrayHelper<FRecordData_Camera>
local URecordData_CameraData = {}


---@class URecordDataInstance_Camera: URecordDataInstance
---@field FOVAbs number
---@field LocationAbs number
---@field RotationAbs number
local URecordDataInstance_Camera = {}
