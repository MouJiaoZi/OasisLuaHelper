---@meta

---@class UPESkillTask_Camera: UPESkillTaskBase
---@field CameraData FCameraOffsetData
---@field DataName string
---@field bUseDirection boolean
---@field UGCCameraData FUGCCameraOffsetData
---@field TriggerFunction FBindFunctionSelector
---@field UGCCameraDataMap ULuaMapHelper<EDirection8, FUGCCameraOffsetData> @不需要的方向直接删除，会使用Center的数据
---@field FadeInTime number
---@field FadeOutTime number
---@field bIsSupportVisualize boolean
---@field ReviewRot FRotator
---@field bIsFadeOut boolean
local UPESkillTask_Camera = {}
