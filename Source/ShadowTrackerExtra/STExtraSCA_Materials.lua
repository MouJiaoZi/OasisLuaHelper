---@meta

---@class USTExtraSCA_Materials: USightActionNode
---@field bResetSightMaterial boolean
---@field bIgnoreAngleSight boolean
---@field MaterialID number
---@field bShow boolean
---@field LODIndex number
---@field DeviceQualityLevel number
---@field X8ScopeIDList ULuaArrayHelper<number>
---@field CacheHiddenCrosshairSight USkinnedMeshComponent
---@field CacheSightCrosshairSightHiddenValue boolean
---@field SightCrosshairSectionName string
local USTExtraSCA_Materials = {}

---@param WeapinInstanceID number
function USTExtraSCA_Materials:OnAngleChange(WeapinInstanceID) end

---@param WeaponSlotID number
---@param IsEquipped boolean
function USTExtraSCA_Materials:HandleScopeMeshLoaded(WeaponSlotID, IsEquipped) end

function USTExtraSCA_Materials:HandleScopeInComplete() end

function USTExtraSCA_Materials:UpdateLowLevelMaterial() end

function USTExtraSCA_Materials:OnSightIDChange() end

---@param TypeLast ESightType
---@param TypeNew ESightType
function USTExtraSCA_Materials:OnHandleSightTypeChange(TypeLast, TypeNew) end

---@param InHidden boolean
function USTExtraSCA_Materials:OnSightCrosshairHiddenChange(InHidden) end

---@param InScopeMgr USTextraSightScopeMgr
---@param InRestore boolean
function USTExtraSCA_Materials:UpdateSightCrosshairHidden(InScopeMgr, InRestore) end
