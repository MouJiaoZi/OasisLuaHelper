---@meta

---@class FAddCameraViewInfoStruct
FAddCameraViewInfoStruct = {}


---@class FViewInfoCurve
---@field DistanceThreshold number
---@field AdditiveCameraViewInfo FMinimalViewInfo
FViewInfoCurve = {}


---@class UUAESkillAction_AddCameraViewInfo: UUAESkillAction
---@field bNotUseSelect boolean
---@field SelectCurve number
---@field WeighstCurves ULuaArrayHelper<FViewInfoCurve>
---@field bAutoProgress boolean
---@field bExecuteOnReset boolean
---@field bResetAdditiveFOVGradually boolean
---@field ResetAdditiveFOVPerFrame number
local UUAESkillAction_AddCameraViewInfo = {}
