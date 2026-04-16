---@meta

---@class USTExtraSCA_IronFist: USightActionLerpNode
---@field bCameraMoveUseWeaponStartSocket boolean
---@field LerpScopeTime number
---@field LerpScopeSpeed number
---@field WidgetInstance UShootingUIWidget
---@field RearSightRotationOffset ULuaArrayHelper<FRotator>
---@field bIsFirstViewScope boolean
---@field bFirstViewScopeUseFixedRotator boolean
---@field bFirstViewScopeConsiderRelative boolean
---@field FirstViewScopeFixedRotator FRotator
---@field HandWeaponBoneName string
---@field HandWeaponBoneFlag string
---@field HandWeaponBoneFlagNoAnim string
---@field SourceSightMeshTransformInv FTransform
---@field DestinSightMeshTransformInv FTransform
local USTExtraSCA_IronFist = {}

---@param WeaponSlotID number
---@param IsEquipped boolean
function USTExtraSCA_IronFist:HandleScopeMeshLoaded(WeaponSlotID, IsEquipped) end

---@param NewIndex number
---@param OldIndex number
function USTExtraSCA_IronFist:UpdateRearSightRotIndex(NewIndex, OldIndex) end

---@param NodeOwner USTextraSightScopeMgr
function USTExtraSCA_IronFist:FillDestinUI(NodeOwner) end

---@param SightScopeMgr USTextraSightScopeMgr
function USTExtraSCA_IronFist:UpdateFirstViewDestinTransform(SightScopeMgr) end
