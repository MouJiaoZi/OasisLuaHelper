---@meta

---@class UNewYearModeComponent: UGameModeBaseComponent
local UNewYearModeComponent = {}

function UNewYearModeComponent:OnGameEnterFinish() end

---@param AddedNum number
function UNewYearModeComponent:AddSpawnedBeastNum(AddedNum) end

---@param AddedNum number
function UNewYearModeComponent:AddBeKilledNormalBeastNum(AddedNum) end

---@param AddedNum number
function UNewYearModeComponent:AddBeKilledConsumablesBeastNum(AddedNum) end

---@param AddedNum number
function UNewYearModeComponent:AddBeKilledWeaponBeastNum(AddedNum) end

---@param AddedNum number
function UNewYearModeComponent:AddBeKilledEquipmentBeastNum(AddedNum) end
