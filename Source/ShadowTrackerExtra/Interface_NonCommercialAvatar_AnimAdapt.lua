---@meta

---非商业化Avatar，以Avatar的表现形式穿戴在人身上
---@class IInterface_NonCommercialAvatar_AnimAdapt
IInterface_NonCommercialAvatar_AnimAdapt = {}

---@return boolean
function IInterface_NonCommercialAvatar_AnimAdapt:IsUseMeshShiftAdaptFeature() end

---@param InMeshShiftCompensation FBoneRetargetMeshShiftCompensation
function IInterface_NonCommercialAvatar_AnimAdapt:SetMeshShiftCompensationConfig(InMeshShiftCompensation) end

---@return boolean
function IInterface_NonCommercialAvatar_AnimAdapt:IsCustomMarkMeshShiftCompensation() end

---@param InMeshShiftCompensationType EMeshShiftCompensationType
---@param InCompensationBaseSkelComp USkeletalMeshComponent
function IInterface_NonCommercialAvatar_AnimAdapt:MarkMeshShiftCompensation(InMeshShiftCompensationType, InCompensationBaseSkelComp) end
