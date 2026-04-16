---@meta

---@class EDamageBoxDetectType
---@field SweepCharacterInTimer number
---@field ComponentBeginOverlapEvent number
---@field HitActor number
EDamageBoxDetectType = {}


---@class UDamageBoxComponent: UBoxComponent
---@field DamageDetectType EDamageBoxDetectType
---@field bInitialEnableDamageBox boolean
---@field QueryChannel ECollisionChannel
---@field CollisionDamage number @碰到目标的伤害量
---@field MinDamageInterval number @最小伤害间隔
---@field IgnoreDamageActorTags ULuaArrayHelper<string>
---@field SweepTimerInterval number
local UDamageBoxComponent = {}

---开关伤害盒
---@param bEnable boolean
function UDamageBoxComponent:SetDamageBoxEnable(bEnable) end

---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UDamageBoxComponent:OnBeginOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UDamageBoxComponent:OnOwnerHitActor(SelfActor, OtherActor, NormalImpulse, Hit) end
