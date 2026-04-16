---@meta

---@class UBattleEquipComponent: UActorComponent
local UBattleEquipComponent = {}

---@param EquipID number
---@param IsAddEquipList boolean
---@return boolean
function UBattleEquipComponent:ADDEquipToPlayerEquipList(EquipID, IsAddEquipList) end

---@param EquipID number
---@param InstanceID number
---@return boolean
function UBattleEquipComponent:RemoveEquipFromPlayerEquipList(EquipID, InstanceID) end

function UBattleEquipComponent:GetPlayerEquipIDList() end
