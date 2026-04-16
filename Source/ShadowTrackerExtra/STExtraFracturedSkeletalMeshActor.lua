---@meta

---@class FOnFracturedSkMeshDestroyed : ULuaMulticastDelegate
FOnFracturedSkMeshDestroyed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LogicAreaID: number, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFracturedSkMeshDestroyed:Add(Callback, Obj) end

---触发 Lua 广播
---@param LogicAreaID number
---@param DamageCauser AActor
function FOnFracturedSkMeshDestroyed:Broadcast(LogicAreaID, DamageCauser) end


---@class ASTExtraFracturedSkeletalMeshActor: AFracturedSkeletalMeshActor, IRegionObjectInterface
---@field bCanBulletHitThrough boolean
---@field DamageTypeWhitelist ULuaArrayHelper<EDamageType>
---@field OnFracturedSkMeshDestroyed FOnFracturedSkMeshDestroyed
---@field LogicAreaID number
---@field LogicAreaInstID number
---@field bStatic boolean
---@field RegionSize ERegionSizeIndex
---@field bNeedUpdateNetworkInfo boolean
local ASTExtraFracturedSkeletalMeshActor = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraFracturedSkeletalMeshActor:Server_FragmentTakeDamage(SelfActor, OtherActor, NormalImpulse, Hit) end

---@param FragmentLoc FVector
---@param Damage number
---@param RadialDamageEvent FRadialDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ASTExtraFracturedSkeletalMeshActor:FragmentTakeRadialDamage(FragmentLoc, Damage, RadialDamageEvent, EventInstigator, DamageCauser) end
