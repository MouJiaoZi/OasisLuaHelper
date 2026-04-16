---@meta

---修改角色相机摇臂长度
---@class UActionEffect_ChangeCameraSpringArmLength: UActionEffect
---@field PerspectiveMode EPerspectiveMode
---@field NewSpringArmLength number
---@field bModifyEnableCameraLag boolean
---@field bEnableCameraLag boolean
---@field bOverrideSocket boolean
---@field bOverrideTarget boolean
---@field SocketOffset FVector
---@field TargetOffset FVector
---@field bOverrideOperateType boolean
---@field OperateType ECameraDataOperateType
---@field CameraDataName string
---@field CameraData FCameraOffsetData
---@field bHasApplyed boolean
---@field DelayEffectOp ELogicEffectOp
---@field CacheOldSpringArmLength number
---@field CacheOldSocketOffset FVector
---@field CacheOldTargetOffset FVector
local UActionEffect_ChangeCameraSpringArmLength = {}

function UActionEffect_ChangeCameraSpringArmLength:LoopFunc() end
