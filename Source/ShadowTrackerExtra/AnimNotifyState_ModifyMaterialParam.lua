---@meta

---@class UAnimNotifyState_ModifyMaterialParam: UAnimNotifyState_AvatarPlayMontage
---@field EmoteID number
---@field bContinueMaterialEffectSystem boolean
local UAnimNotifyState_ModifyMaterialParam = {}

---@param MeshComp USkeletalMeshComponent
---@param MaterialInstanceDynamic UMaterialInstanceDynamic
---@param MatParamName string
---@param ValueFloatCurve UCurveFloat
---@param bEnablePingPong boolean
---@param bEnableLooping boolean
function UAnimNotifyState_ModifyMaterialParam:AddModifyMaterialParam(MeshComp, MaterialInstanceDynamic, MatParamName, ValueFloatCurve, bEnablePingPong, bEnableLooping) end

---@param InMeshComponent UMeshComponent
---@return boolean
function UAnimNotifyState_ModifyMaterialParam:CheckCanPlay(InMeshComponent) end
