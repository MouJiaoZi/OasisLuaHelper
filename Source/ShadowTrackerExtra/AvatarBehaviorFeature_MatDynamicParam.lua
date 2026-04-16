---@meta

---@class UAvatarBehaviorFeature_MatDynamicParam: UAvatarBehaviorFeature_UtilFuncLayer
---@field MatDynamicBehaviorParam FAvatarMatDynamicBehaviorParam
---@field bOverride_OnSkeletalCompFinalizeBoneTransform boolean
---@field bOverride_UpdateSocketInfoToMat boolean
---@field bConcernRealTimeSocket boolean
local UAvatarBehaviorFeature_MatDynamicParam = {}

---@param InTargetSkelComp USkeletalMeshComponent
function UAvatarBehaviorFeature_MatDynamicParam:OnSkeletalCompFinalizeBoneTransform(InTargetSkelComp) end

---@param InTargetSkelComp USkeletalMeshComponent
function UAvatarBehaviorFeature_MatDynamicParam:BP_OnSkeletalCompFinalizeBoneTransform(InTargetSkelComp) end

---@param InTargetSocketSkelComp USkeletalMeshComponent
---@param InTargetMatComp UMeshComponent
---@param InTargetMat UMaterialInterface
---@param InMatDynamicParam FAvatarMatDynamicParam_FromBoneSocket
function UAvatarBehaviorFeature_MatDynamicParam:UpdateSocketInfoToMat(InTargetSocketSkelComp, InTargetMatComp, InTargetMat, InMatDynamicParam) end

---@param InTargetSocketSkelComp USkeletalMeshComponent
---@param InTargetMatComp UMeshComponent
---@param InTargetMat UMaterialInterface
---@param InMatDynamicParam FAvatarMatDynamicParam_FromBoneSocket
function UAvatarBehaviorFeature_MatDynamicParam:BP_UpdateSocketInfoToMat(InTargetSocketSkelComp, InTargetMatComp, InTargetMat, InMatDynamicParam) end
