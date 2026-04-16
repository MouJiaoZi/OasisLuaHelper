---@meta

---@class FCameraConfigData
---@field Comment string
---@field Transform FTransform
---@field TransformAdaptLong FTransform
---@field TransformAdaptShort FTransform
---@field ProjectMode number
---@field FieldOfView number
---@field BlendTime number
---@field CameraGroup number
---@field CameraAnim string
FCameraConfigData = {}


---@class ULobbyCameraTransformMgr: UObject
---@field TransformMap ULuaMapHelper<number, FCameraConfigData>
local ULobbyCameraTransformMgr = {}
