---@meta

---@class FRepProjectileMovement
---@field LinearVelocity FVector
---@field AngularVelocity FVector
---@field Location FVector
---@field Rotation FRotator
FRepProjectileMovement = {}


---@class FOnShootProjectile : ULuaMulticastDelegate
FOnShootProjectile = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ShootOwner: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnShootProjectile:Add(Callback, Obj) end

---触发 Lua 广播
---@param ShootOwner AActor
function FOnShootProjectile:Broadcast(ShootOwner) end


---@class USupportRepProjectileMovement: UProjectileMovementComponent
---@field bResetUpdateComponentOnStop boolean
---@field OnShootProjectile FOnShootProjectile
---@field bRepProjectileMovement boolean
---@field bClientOverrideVelocityOnRepImmediately boolean
---@field RepProjectileMovement any
---@field ShootVelocity FVector
---@field bDrawSphere boolean
---@field DrawSphereRadius number
---@field DebugSphereLifeTime number
local USupportRepProjectileMovement = {}

function USupportRepProjectileMovement:OnRep_ShootVelocity() end

function USupportRepProjectileMovement:OnRep_RepProjectileMovement() end

---@param TargetLocation FVector
---@param TossSpeed number
function USupportRepProjectileMovement:ShootToPoint(TargetLocation, TossSpeed) end

---@param Impulse FVector
---@param bOverrideXY boolean
---@param bOverrideZ boolean
function USupportRepProjectileMovement:AddImpulse(Impulse, bOverrideXY, bOverrideZ) end

---@param NewVelocity FVector
---@param bOverrideXY boolean
---@param bOverrideZ boolean
function USupportRepProjectileMovement:AddVelocity(NewVelocity, bOverrideXY, bOverrideZ) end

---@return boolean
function USupportRepProjectileMovement:IsAuthority() end

---@param HitResult FHitResult
function USupportRepProjectileMovement:StopSimulating(HitResult) end

---@param Location FVector
function USupportRepProjectileMovement:Client_DrawSphereFromServer(Location) end
