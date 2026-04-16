---@meta

---@class USTExtraSCA_SpingArmMoveTo: USightActionLerpNode
---@field WeaponAttachMesh UMeshComponent
---@field AngleAttachScaleRule EAttachmentRule
---@field bCameraMoveUseWeaponStartSocket boolean
---@field bAttachUseWeaponMesh boolean
---@field bIgnoreAngleSight boolean
---@field LerpScopeAngleTime number
---@field LerpScopeAngleSpeed number
---@field bHasWeaponSightSocketOffset boolean
---@field WeaponSightSocketOffset FVector
---@field bIsFirstViewScope boolean
---@field bEnableSocketRotator boolean
---@field bSocketRotatorUseBlackBoardData boolean
---@field bFirstViewScopeUseFixedRotator boolean
---@field bFirstViewScopeConsiderRelative boolean
---@field FirstViewScopeFixedRotator FRotator
---@field HandWeaponBoneName string
---@field HandWeaponBoneFlag string
---@field HandWeaponBoneFlagNoAnim string
---@field BeforePeekFlagName string
---@field FPPBoneName_spine_01 string
---@field FPPSightAimSocketName string
---@field CameraAimSocketRotationInv FQuat
---@field CameraAimSocketTransInv FTransform
---@field SightAimSocketTrans FTransform
---@field SightMeshRelativeTransform FTransform
---@field AngleMeshRelativeTransform FTransform
local USTExtraSCA_SpingArmMoveTo = {}

---@param NodeOwner USTextraSightScopeMgr
---@param IsBind boolean
function USTExtraSCA_SpingArmMoveTo:BindSameEvent(NodeOwner, IsBind) end

---@param WeapinInstanceID number
function USTExtraSCA_SpingArmMoveTo:OnAngleChange(WeapinInstanceID) end

---@param WeaponSlotID number
---@param IsEquipped boolean
function USTExtraSCA_SpingArmMoveTo:HandleScopeMeshLoaded(WeaponSlotID, IsEquipped) end

---@param SightScopeMgr USTextraSightScopeMgr
function USTExtraSCA_SpingArmMoveTo:UpdateFirstViewDestinTransform(SightScopeMgr) end
