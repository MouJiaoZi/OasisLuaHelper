---@meta

---@class EDDMCFindType
---@field DDMCFT_ALL number
---@field DDMCFT_RPC number
---@field DDMCFT_REP number
---@field DDMCFT_NONE number
EDDMCFindType = {}


---@class FDDMCData
---@field Stuffs ULuaArrayHelper<FSoftObjectPath>
---@field HPPercentageRangeMin number
---@field HPPercentageRangeMax number
---@field bUseRPC boolean
FDDMCData = {}


---@class FDamageDrivenMeshChangerCustomEvent : ULuaMulticastDelegate
FDamageDrivenMeshChangerCustomEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LoadedObject: UObject) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDamageDrivenMeshChangerCustomEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param LoadedObject UObject
function FDamageDrivenMeshChangerCustomEvent:Broadcast(LoadedObject) end


---@class FDamageDrivenMeshChangerOnIndex : ULuaMulticastDelegate
FDamageDrivenMeshChangerOnIndex = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Index: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDamageDrivenMeshChangerOnIndex:Add(Callback, Obj) end

---触发 Lua 广播
---@param Index number
function FDamageDrivenMeshChangerOnIndex:Broadcast(Index) end


---@class FDamageDrivenMeshOnCliendDamage : ULuaMulticastDelegate
FDamageDrivenMeshOnCliendDamage = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Damage: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDamageDrivenMeshOnCliendDamage:Add(Callback, Obj) end

---触发 Lua 广播
---@param Damage number
function FDamageDrivenMeshOnCliendDamage:Broadcast(Damage) end


---@class FDamageDrivenMeshOnCliendHPChanged : ULuaMulticastDelegate
FDamageDrivenMeshOnCliendHPChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HP: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDamageDrivenMeshOnCliendHPChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param HP number
function FDamageDrivenMeshOnCliendHPChanged:Broadcast(HP) end


---@class FDamageDrivenMeshChangerOnDestroyed : ULuaMulticastDelegate
FDamageDrivenMeshChangerOnDestroyed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LogicAreaLoc: FVector, bDefaultWalkable: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDamageDrivenMeshChangerOnDestroyed:Add(Callback, Obj) end

---触发 Lua 广播
---@param LogicAreaLoc FVector
---@param bDefaultWalkable boolean
function FDamageDrivenMeshChangerOnDestroyed:Broadcast(LogicAreaLoc, bDefaultWalkable) end


---@class UDamageDrivenMeshChanger: UActorComponent
---@field HPPercentage number
---@field Stuffs ULuaArrayHelper<FDDMCData>
---@field AutoBindTakedamageEvent boolean
---@field MaxHealth number
---@field bBreadcastDamage boolean
---@field bStopsAtZeroHP boolean
---@field BreadcastDamageInterval number
---@field OwnerComponentTags string
---@field OnHPChangeCustomEvent FDamageDrivenMeshChangerCustomEvent
---@field OnCliendHPChanged FDamageDrivenMeshOnCliendHPChanged
---@field OnIndex FDamageDrivenMeshChangerOnIndex
---@field OnClientDamage FDamageDrivenMeshOnCliendDamage
---@field OnDestroyed FDamageDrivenMeshChangerOnDestroyed
---@field bDefaultWalkable boolean
---@field CacheTaggedComponents ULuaArrayHelper<UActorComponent>
local UDamageDrivenMeshChanger = {}

function UDamageDrivenMeshChanger:ReInitComponentForReplay() end

function UDamageDrivenMeshChanger:OnRep_HPPercentage() end

---@return boolean
function UDamageDrivenMeshChanger:CanBroadcastDamage() end

---@param InHPPercentage number
function UDamageDrivenMeshChanger:SetHPPercentage(InHPPercentage) end

---@param softMtg UObject
---@param Index number
function UDamageDrivenMeshChanger:OnAssetLoaded(softMtg, Index) end

---@param LoadedObject UObject
function UDamageDrivenMeshChanger:OnHPCustomEvent(LoadedObject) end

---@param Indicies ULuaArrayHelper<number>
function UDamageDrivenMeshChanger:ExecToClient(Indicies) end

---@param Damage number
function UDamageDrivenMeshChanger:OnRPCDamage(Damage) end

---@param DamagedActor AActor
---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function UDamageDrivenMeshChanger:OnTakeDamage(DamagedActor, Damage, DamageType, InstigatedBy, DamageCauser) end
