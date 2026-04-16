---@meta

---@class EmitterType
---@field E_SINGlESHOT number @单次发射
---@field E_CONTIOUS number @连续发射
EmitterType = {}


---@class FOnShootWeaponTailEmission : ULuaMulticastDelegate
FOnShootWeaponTailEmission = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TailSocket: FTransform) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnShootWeaponTailEmission:Add(Callback, Obj) end

---触发 Lua 广播
---@param TailSocket FTransform
function FOnShootWeaponTailEmission:Broadcast(TailSocket) end


---@class UWeaponflameLauncher: UActorComponent
---@field CachedSocket FTransform
---@field OnTailEmission FOnShootWeaponTailEmission
---@field eEmitterType EmitterType
---@field tailSocketDeltaLength number
---@field ObjectTypesCanBeDamaged ULuaArrayHelper<EObjectTypeQuery>
---@field tailflameLength number
---@field tailflameRadius number
---@field DamageFalloffInnerDistance number
---@field DamageFalloffOuterDistance number
---@field DamageFalloff number
---@field BaseDamage number
---@field MinDamage number
---@field DispersionChannel ECollisionChannel
---@field DamageTypeClass UDamageType
---@field EnableDispersion boolean
---@field RadialDamageParams FApplyRadialDamageParams
---@field ObjectTypesCanBlockDamage ULuaArrayHelper<EObjectTypeQuery>
---@field Victims ULuaArrayHelper<AActor>
local UWeaponflameLauncher = {}

---@param ShootWeapon ASTExtraShootWeapon
---@param shootPos FTransform
---@param AssBullet AActor
function UWeaponflameLauncher:LaunchTailflame(ShootWeapon, shootPos, AssBullet) end

function UWeaponflameLauncher:UpdateSocket() end

function UWeaponflameLauncher:UpdateWeaponMesh() end
