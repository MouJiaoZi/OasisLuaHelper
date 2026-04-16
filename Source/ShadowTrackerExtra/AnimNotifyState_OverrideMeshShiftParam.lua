---@meta

---@class UAnimNotifyState_OverrideMeshShiftParam: UAnimNotifyState
---@field bEnableTickDetect boolean
---@field AnimOverrideMeshShiftParam FMeshShiftParam
local UAnimNotifyState_OverrideMeshShiftParam = {}

---@param InTriggerActor AActor
---@param InAnimOverrideMeshShiftParam FMeshShiftParam
function UAnimNotifyState_OverrideMeshShiftParam:NotifyBegin_NonAnim_OverrideMeshShiftParam(InTriggerActor, InAnimOverrideMeshShiftParam) end

---@param InTriggerActor AActor
---@param InAnimOverrideMeshShiftParam FMeshShiftParam
function UAnimNotifyState_OverrideMeshShiftParam:NotifyEnd_NonAnim_OverrideMeshShiftParam(InTriggerActor, InAnimOverrideMeshShiftParam) end
