---@meta

---@class FAlivePlayerCallAirplaneParam
---@field PlaneClass APawn
---@field CircleModeJumpRadiusPercent number
---@field MapCenter FVector
---@field PlaneSpeed number
---@field PlaneHeight number
---@field CanOpenParachuteHeight number
---@field ForceOpenParachuteHeight number
---@field CloseParachuteHeight number
FAlivePlayerCallAirplaneParam = {}


---@class UTriggerAction_AlivePlayerCallAirplane: UTriggerAction
---@field KeepAllItems boolean
---@field ForceCallLeavePlaneDelegate boolean
---@field CallAirplaneParam FAlivePlayerCallAirplaneParam
---@field CurPlaneData FAirplaneData
local UTriggerAction_AlivePlayerCallAirplane = {}
