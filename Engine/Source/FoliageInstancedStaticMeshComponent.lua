---@meta

---@class FInstancePointDamageSignature : ULuaMulticastDelegate
FInstancePointDamageSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InstanceIndex: number, Damage: number, InstigatedBy: AController, HitLocation: FVector, ShotFromDirection: FVector, DamageType: UDamageType, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInstancePointDamageSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param InstanceIndex number
---@param Damage number
---@param InstigatedBy AController
---@param HitLocation FVector
---@param ShotFromDirection FVector
---@param DamageType UDamageType
---@param DamageCauser AActor
function FInstancePointDamageSignature:Broadcast(InstanceIndex, Damage, InstigatedBy, HitLocation, ShotFromDirection, DamageType, DamageCauser) end


---@class FInstanceRadialDamageSignature : ULuaMulticastDelegate
FInstanceRadialDamageSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Instances: ULuaArrayHelper<number>, Damages: ULuaArrayHelper<number>, InstigatedBy: AController, Origin: FVector, MaxRadius: number, DamageType: UDamageType, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInstanceRadialDamageSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param Instances ULuaArrayHelper<number>
---@param Damages ULuaArrayHelper<number>
---@param InstigatedBy AController
---@param Origin FVector
---@param MaxRadius number
---@param DamageType UDamageType
---@param DamageCauser AActor
function FInstanceRadialDamageSignature:Broadcast(Instances, Damages, InstigatedBy, Origin, MaxRadius, DamageType, DamageCauser) end


---@class FFoliagePostLoadDel : ULuaSingleDelegate
FFoliagePostLoadDel = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UFoliageInstancedStaticMeshComponent) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFoliagePostLoadDel:Bind(Callback, Obj) end

---执行委托
---@param Param1 UFoliageInstancedStaticMeshComponent
function FFoliagePostLoadDel:Execute(Param1) end


---@class UFoliageInstancedStaticMeshComponent: UHierarchicalInstancedStaticMeshComponent
---@field OnInstanceTakePointDamage FInstancePointDamageSignature
---@field OnInstanceTakeRadialDamage FInstanceRadialDamageSignature
local UFoliageInstancedStaticMeshComponent = {}
