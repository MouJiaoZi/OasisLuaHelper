---@meta

---@class FArriveAirdropLocDelegate : ULuaMulticastDelegate
FArriveAirdropLocDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Loc: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FArriveAirdropLocDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Loc FVector
function FArriveAirdropLocDelegate:Broadcast(Loc) end


---@class FFlyawayDelegate : ULuaSingleDelegate
FFlyawayDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFlyawayDelegate:Bind(Callback, Obj) end

---执行委托
function FFlyawayDelegate:Execute() end


---@class ATransportAircraft: AFlightVehicle
---@field FlyingParam FFlyingParam
---@field OverrideFlyingSpeed number
---@field DroppingStuffLocation FVector
---@field DroppingSpeed number
---@field LifeSpanAfterDrop number
---@field LifeSpanDrawAirDropPath number
---@field AirDropIconID number
---@field AirDropMarkDistance number
---@field ArriveAirdropLoc FArriveAirdropLocDelegate
---@field Flyaway FFlyawayDelegate
---@field AirDropOrder FAirDropOrder
---@field DropStrategyArray ULuaArrayHelper<UDropStuffStrategy>
---@field AirDropMarkIds ULuaArrayHelper<number>
local ATransportAircraft = {}

---@param Order FAirDropOrder
function ATransportAircraft:SetOrder(Order) end

---@param DeltaTime number
---@return number
function ATransportAircraft:GetDroppingIndex(DeltaTime) end

function ATransportAircraft:OnRep_FlyingParams() end

function ATransportAircraft:OnRep_AirDropOrder() end

---@param Strategy UDropStuffStrategy
function ATransportAircraft:SetDropStrategy(Strategy) end

---@return FVector
function ATransportAircraft:GetFirstDroppingLoc() end
