---@meta

---@class AUGCCustomPlayerCameraManager: ASTPlayerCameraManager
---@field CustomRot FRotator
---@field CustomDist number
---@field CustomFOV number
---@field OffsetCameraData FCameraOffsetData
---@field LerpFuncInputFadeInSpeed number
---@field CurCameraData FCameraOffsetData
---@field CurrentFadeTime number
---@field SourceOffsetCameraData FCameraOffsetData
local AUGCCustomPlayerCameraManager = {}

---@param InCameraData FCameraOffsetData
---@param TargetCameraData FCameraOffsetData
---@param DeltaTime number
function AUGCCustomPlayerCameraManager:LerpCurCameraDataUseConfigSpeed(InCameraData, TargetCameraData, DeltaTime) end
