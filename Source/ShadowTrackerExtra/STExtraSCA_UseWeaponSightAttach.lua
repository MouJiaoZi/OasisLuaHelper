---@meta

---@class USTExtraSCA_UseWeaponSightAttach: USightActionLerpNode
---@field bCameraMoveUseWeaponStartSocket boolean
---@field LerpScopeTime number
---@field LerpScopeSpeed number
---@field fSetScopeAnimToDestinAlpha number
---@field CurrentUpdatePosAlpha number
---@field CurrentWeaponID number
---@field LerpFOVStart number
---@field LerpFOVCurrent number
---@field LerpFOVSourceEnd number
---@field LerpFOVDestinEnd number
---@field LerpFOVCurrentEnd number
---@field bIsFirstViewScope boolean
---@field bFirstViewScopeUseFixedRotator boolean
---@field bFirstViewScopeConsiderRelative boolean
---@field FirstViewScopeFixedRotator FRotator
---@field HandWeaponBoneName string
---@field HandWeaponBoneFlag string
---@field HandWeaponBoneFlagNoAnim string
---@field SourceSightMeshTransformInv FTransform
---@field DestinSightMeshTransformInv FTransform
local USTExtraSCA_UseWeaponSightAttach = {}

---@param WeaponSlotID number
---@param IsEquipped boolean
function USTExtraSCA_UseWeaponSightAttach:HandleScopeMeshLoaded(WeaponSlotID, IsEquipped) end

---@param WeapinInstanceID number
function USTExtraSCA_UseWeaponSightAttach:OnAngleChange(WeapinInstanceID) end

---@param InResult boolean
function USTExtraSCA_UseWeaponSightAttach:OnHandFoldChange(InResult) end

function USTExtraSCA_UseWeaponSightAttach:OnSightIDChange() end

---@param SightScopeMgr USTextraSightScopeMgr
function USTExtraSCA_UseWeaponSightAttach:UpdateFirstViewDestinTransform(SightScopeMgr) end
