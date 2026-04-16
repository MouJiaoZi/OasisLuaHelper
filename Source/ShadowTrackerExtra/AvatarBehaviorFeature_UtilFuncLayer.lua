---@meta

---@class UAvatarBehaviorFeature_UtilFuncLayer: UAvatarBehaviorFeature
---@field ConcernObjList ULuaArrayHelper<FAvatarWeakObjPtr>
---@field OverrideMatMap ULuaMapHelper<string, UMaterialInterface>
---@field bOverride_SetMatVectorParamByVector boolean
---@field bOverride_IsTransformInBuffByFastShape boolean
local UAvatarBehaviorFeature_UtilFuncLayer = {}

---@param InContextObj UObject
---@param InIsMeltToShareBuffCheckResult boolean
---@param InTargetTM FTransform
---@param InBuffName string
---@param InFastShapeParam FAvatarFastShapeParam
---@return boolean
function UAvatarBehaviorFeature_UtilFuncLayer:IsTransformInBuffByFastShape(InContextObj, InIsMeltToShareBuffCheckResult, InTargetTM, InBuffName, InFastShapeParam) end

function UAvatarBehaviorFeature_UtilFuncLayer:ClearOverrideMatMap() end

---@param InMat UMaterialInterface
---@param InParamName string
---@return boolean
function UAvatarBehaviorFeature_UtilFuncLayer:HasVectorParam(InMat, InParamName) end

---@param InMat UMaterialInterface
---@param InParamName string
---@return FLinearColor
function UAvatarBehaviorFeature_UtilFuncLayer:GetVectorParamValue(InMat, InParamName) end

---@param InMat UMaterialInterface
---@param InMatParamName string
---@param InVectorParam FVector
---@param InIsKeepOriginalAlpha boolean
---@return boolean
function UAvatarBehaviorFeature_UtilFuncLayer:SetMatVectorParamByVector(InMat, InMatParamName, InVectorParam, InIsKeepOriginalAlpha) end

---@param InBuffName string
---@return boolean
function UAvatarBehaviorFeature_UtilFuncLayer:HasBuffByMeltToShareFeature(InBuffName) end

---@param InBuffName string
---@return boolean
function UAvatarBehaviorFeature_UtilFuncLayer:IsInBuffByMeltToShareFeature(InBuffName) end

---@param InBuffName string
---@param InIsInBuff boolean
function UAvatarBehaviorFeature_UtilFuncLayer:MarkIsInBuffByMeltToShareFeature(InBuffName, InIsInBuff) end

---@param InContextObj UObject
---@param InIsMeltToShareBuffCheckResult boolean
---@param InTargetTM FTransform
---@param InBuffName string
---@param InFastShapeParam FAvatarFastShapeParam
---@return boolean
function UAvatarBehaviorFeature_UtilFuncLayer:BP_IsTransformInBuffByFastShape(InContextObj, InIsMeltToShareBuffCheckResult, InTargetTM, InBuffName, InFastShapeParam) end

---@param InMat UMaterialInterface
---@param InMatParamName string
---@param InVectorParam FVector
---@param InIsKeepOriginalAlpha boolean
---@return boolean
function UAvatarBehaviorFeature_UtilFuncLayer:BP_SetMatVectorParamByVector(InMat, InMatParamName, InVectorParam, InIsKeepOriginalAlpha) end
