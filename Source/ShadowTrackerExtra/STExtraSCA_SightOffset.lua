---@meta

---@class USTExtraSCA_SightOffset: USightActionNode
local USTExtraSCA_SightOffset = {}

---@param WeapinInstanceID number
function USTExtraSCA_SightOffset:OnAngleChange(WeapinInstanceID) end

---@param WeaponSlotID number
---@param IsEquipped boolean
function USTExtraSCA_SightOffset:HandleScopeMeshLoaded(WeaponSlotID, IsEquipped) end

---@param NodeOwner USTextraSightScopeMgr
---@param IsAngle boolean
---@param IsReset boolean
function USTExtraSCA_SightOffset:UpdateSightOffset(NodeOwner, IsAngle, IsReset) end
