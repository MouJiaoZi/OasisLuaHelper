---@meta

---播放蒙太奇的Action
---@class FActionEffect_PoseMontageData
FActionEffect_PoseMontageData = {}


---@class UActionEffect_PlayMontage: UActionEffect
---@field bAnimDiffByVehicle boolean
---@field bAnimDiffByPose boolean
---@field PoseMontageDataTPP FActionEffect_PoseMontageData
---@field PoseMontageDataFPP FActionEffect_PoseMontageData
---@field PoseMontageDataNewFPP FActionEffect_PoseMontageData
---@field StopPrevMontage boolean
---@field bUnApplyStopAnim boolean
---@field bOnlySimulation boolean
---@field StartPosition number
---@field StartSectionName string
local UActionEffect_PlayMontage = {}
