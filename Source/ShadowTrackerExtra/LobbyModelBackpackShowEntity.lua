---@meta

---@class ULobbyModelBackpackShowEntity: UCommonLobbyModelShowEntity
---@field bBehaviorParamSetupSuccess boolean
---@field MatDynamicBehaviorParam FAvatarMatDynamicBehaviorParam
local ULobbyModelBackpackShowEntity = {}

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelBackpackShowEntity:ShowModel(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelBackpackShowEntity:PutOnComponent(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelBackpackShowEntity:ApplyAnimInstance(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelBackpackShowEntity:SetUpMatDynamicBehaviorParam(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelBackpackShowEntity:PostShowModel(battleItemHandleBase) end

---@param InTargetSkelComp USkeletalMeshComponent
function ULobbyModelBackpackShowEntity:OnSkeletalCompFinalizeBoneTransform(InTargetSkelComp) end

---@param InTargetSocketSkelComp USkeletalMeshComponent
---@param InTargetMatComp UMeshComponent
---@param InTargetMat UMaterialInterface
---@param InMatDynamicParam FAvatarMatDynamicParam_FromBoneSocket
function ULobbyModelBackpackShowEntity:UpdateSocketInfoToMat(InTargetSocketSkelComp, InTargetMatComp, InTargetMat, InMatDynamicParam) end
