---@meta

---@class EMuzzleLocType
---@field MuzzleLoc number @枪口位置
---@field ActorLoc number @Pawn位置
EMuzzleLocType = {}


---@class EMuzzleRotType
---@field MuzzleRot number @枪口朝向
---@field ControlRot number @Control朝向
EMuzzleRotType = {}


---@class EHitModeType
---@field RoughHitMode number @粗略命中模式
---@field PreciseHitMode number @精准命中模式
EHitModeType = {}


---@class UUGCCustomShootTargetCalComponent: UActorComponent
---@field MuzzleLocType EMuzzleLocType
---@field MuzzleRotType EMuzzleRotType
---@field HitMode EHitModeType
---@field Length number
local UUGCCustomShootTargetCalComponent = {}

---@param OwnerShootWeapon ASTExtraShootWeapon
---@param Start FVector
---@return FVector
function UUGCCustomShootTargetCalComponent:TraceStartLoc(OwnerShootWeapon, Start) end

---@param OwnerShootWeapon ASTExtraShootWeapon
---@param End FVector
---@return FVector
function UUGCCustomShootTargetCalComponent:TraceEndLoc(OwnerShootWeapon, End) end

---@param OwnerShootWeapon ASTExtraShootWeapon
---@param ShootRot FRotator
---@return FRotator
function UUGCCustomShootTargetCalComponent:TraceShootRot(OwnerShootWeapon, ShootRot) end

---@param OwnerShootWeapon ASTExtraShootWeapon
---@param HitRet FHitResult
---@param ShootRot FRotator
---@param Ret FVector
---@return FVector
function UUGCCustomShootTargetCalComponent:CalShootTargetLocation(OwnerShootWeapon, HitRet, ShootRot, Ret) end

---@param OwnerShootWeapon ASTExtraShootWeapon
---@param HitRet FHitResult
---@return boolean
function UUGCCustomShootTargetCalComponent:RoughHitModeCheck(OwnerShootWeapon, HitRet) end
