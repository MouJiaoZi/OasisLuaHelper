---@meta

---@class USTExtraSCA_SpingArmMoveToCustom: USightActionLerpNode
---@field WeaponAttachMeshSocketName string
---@field bCameraMoveUseWeaponStartSocket boolean
---@field bHasWeaponSightSocketOffset boolean
---@field WeaponSightSocketOffset FVector
---@field bIsFirstViewScope boolean
---@field bGetSocketTransformUseComSpace boolean
---@field bFirstViewScopeUseFixedRotator boolean
---@field FirstViewScopeFixedRotator FRotator
---@field HandWeaponBoneName string
---@field HandWeaponBoneFlag string
---@field HandWeaponBoneFlagNoAnim string
local USTExtraSCA_SpingArmMoveToCustom = {}

---@param InMesh UMeshComponent
---@param InSocketName string
function USTExtraSCA_SpingArmMoveToCustom:SetWeaponAttachMesh(InMesh, InSocketName) end

---@param NodeOwner USightScopeMgr
---@param DeltaTime number
function USTExtraSCA_SpingArmMoveToCustom:Event_EnterNode(NodeOwner, DeltaTime) end

---@param NodeOwner USightScopeMgr
---@param DeltaTime number
function USTExtraSCA_SpingArmMoveToCustom:Event_LeaveNode(NodeOwner, DeltaTime) end

---@param SightScopeMgr USTextraSightScopeMgr
function USTExtraSCA_SpingArmMoveToCustom:UpdateFirstViewDestinTransform(SightScopeMgr) end
