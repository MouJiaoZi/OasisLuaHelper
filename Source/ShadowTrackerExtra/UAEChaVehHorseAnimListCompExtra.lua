---@meta

---@class FHorseSeatChangeDelegate : ULuaMulticastDelegate
FHorseSeatChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, NewSeatType: ESTExtraVehicleSeatType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHorseSeatChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param NewSeatType ESTExtraVehicleSeatType
function FHorseSeatChangeDelegate:Broadcast(Character, NewSeatType) end


---处理马动画组件的具体逻辑
---@class UUAEChaVehHorseAnimListCompExtra: UUAEChaVehHorseAnimListComponent
---@field bIsAutoLeanOutVehicle boolean
---@field bIsAsycLoad boolean
---@field DynamicLoadAnimGroupName string
---@field bEnableRemoveAllChildCompsWhenUnEquip boolean
---@field OnHorseSeatChangedDelegate FHorseSeatChangeDelegate
---@field bClearChildAnim boolean
local UUAEChaVehHorseAnimListCompExtra = {}

---@param Weapon ASTExtraWeapon
---@param WeaponOwner AActor
function UUAEChaVehHorseAnimListCompExtra:OnWeaponUnEquip(Weapon, WeaponOwner) end

---@param ChildComponent UUAEAnimListComponentBase
---@param Layer number
function UUAEChaVehHorseAnimListCompExtra:AddChildComponent(ChildComponent, Layer) end

---@param ChildComponent UUAEAnimListComponentBase
function UUAEChaVehHorseAnimListCompExtra:RemoveChildComponent(ChildComponent) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function UUAEChaVehHorseAnimListCompExtra:OnHorseSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function UUAEChaVehHorseAnimListCompExtra:OnHorseSeatPostChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UUAEChaVehHorseAnimListCompExtra:OnHorseSeatAttached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UUAEChaVehHorseAnimListCompExtra:OnHorseSeatDetached(Character, SeatType, SeatIdx) end

---@param bIsEquip boolean
---@param WeaponOwner AActor
---@param Weapon ASTExtraWeapon
function UUAEChaVehHorseAnimListCompExtra:OnWeaponChange(bIsEquip, WeaponOwner, Weapon) end

---@param GroupName string
function UUAEChaVehHorseAnimListCompExtra:OnWeaponDynamicAnimListRegistered(GroupName) end
