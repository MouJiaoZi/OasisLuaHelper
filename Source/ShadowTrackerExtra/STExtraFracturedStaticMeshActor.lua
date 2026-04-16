---@meta

---@class FOnMeshFullyDestroyed : ULuaMulticastDelegate
FOnMeshFullyDestroyed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LogicAreaID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMeshFullyDestroyed:Add(Callback, Obj) end

---触发 Lua 广播
---@param LogicAreaID number
function FOnMeshFullyDestroyed:Broadcast(LogicAreaID) end


---@class ASTExtraFracturedStaticMeshActor: AFracturedStaticMeshActor
---@field bCanBulletHitThrough boolean
---@field DamageTypeWhitelist ULuaArrayHelper<EDamageType>
---@field OnMeshFullyDestroyed FOnMeshFullyDestroyed
---@field LogicAreaID number
---@field LogicAreaInstID number
local ASTExtraFracturedStaticMeshActor = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraFracturedStaticMeshActor:Server_RemoveFragment(SelfActor, OtherActor, NormalImpulse, Hit) end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraFracturedStaticMeshActor:Client_RemoveFragment(SelfActor, OtherActor, NormalImpulse, Hit) end

---@param FragmentLoc FVector
---@param Damage number
---@param RadialDamageEvent FRadialDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ASTExtraFracturedStaticMeshActor:FragmentTakeRadialDamage(FragmentLoc, Damage, RadialDamageEvent, EventInstigator, DamageCauser) end
