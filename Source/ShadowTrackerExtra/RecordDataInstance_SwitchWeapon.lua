---@meta

---@class FRecordData_EventName
---@field CurrentFrameIndex number
---@field EventName string
FRecordData_EventName = {}


---@class URecordData_SwitchWeapon: URecordData
---@field KeyFrame ULuaArrayHelper<FRecordData_EventName>
local URecordData_SwitchWeapon = {}


---@class URecordDataInstance_SwitchWeapon: URecordDataInstance
local URecordDataInstance_SwitchWeapon = {}

function URecordDataInstance_SwitchWeapon:HandleEventWeaponBackpackFinish() end

function URecordDataInstance_SwitchWeapon:HandleEquipWeaponFinish() end

---@param EvenName string
function URecordDataInstance_SwitchWeapon:HandleWeaponButtonEventTrigger(EvenName) end
