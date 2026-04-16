---@meta

---@class FMagicBattleEquipmentSuitConfig
---@field SuitList ULuaSetHelper<number>
---@field NeedActiveCount number
---@field AttrModify FAttrModifyItemSimple
---@field SuitDetails string
---@field ActiveCountNow number
---@field AttrModifyItemUniqueID string
FMagicBattleEquipmentSuitConfig = {}


---@class FMagicBattleEquipmentSuitActiveChange : ULuaSingleDelegate
FMagicBattleEquipmentSuitActiveChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMagicBattleEquipmentSuitActiveChange:Bind(Callback, Obj) end

---执行委托
function FMagicBattleEquipmentSuitActiveChange:Execute() end


---@class UMagicBattleBackpackComponent: UCommonBackpackComponent
---@field EquipmentSuits ULuaArrayHelper<FMagicBattleEquipmentSuitConfig>
---@field EquipmentSuitStateChange FMagicBattleEquipmentSuitActiveChange
local UMagicBattleBackpackComponent = {}

---@param TypeSpecificID number
---@param Count number
function UMagicBattleBackpackComponent:Server_DeleteItem(TypeSpecificID, Count) end

---@param DefineID FItemDefineID
---@param Count number
function UMagicBattleBackpackComponent:Server_DeleteItemByDefineID(DefineID, Count) end

---@param DefineID FItemDefineID
function UMagicBattleBackpackComponent:ServerDisUseItemInternal(DefineID) end

---@param SlotName string
---@param DefineID FItemDefineID
function UMagicBattleBackpackComponent:Server_EquipItem(SlotName, DefineID) end

---@param SlotName string
function UMagicBattleBackpackComponent:Server_UnEquipItem(SlotName) end

function UMagicBattleBackpackComponent:RefreshSuitState() end
