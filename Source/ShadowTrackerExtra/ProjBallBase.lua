---@meta

---@class FRegulateLocationInfo
---@field Location FVector_NetQuantize
---@field count number
FRegulateLocationInfo = {}


---@class FBrokenSignature : ULuaMulticastDelegate
FBrokenSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamagedActor: AActor, Damage: number, DamageType: UDamageType, InstigatedBy: AController, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBrokenSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamagedActor AActor
---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function FBrokenSignature:Broadcast(DamagedActor, Damage, DamageType, InstigatedBy, DamageCauser) end


---@class FScoringSignature : ULuaSingleDelegate
FScoringSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FScoringSignature:Bind(Callback, Obj) end

---执行委托
function FScoringSignature:Execute() end


---@class FOutFiledSignature : ULuaSingleDelegate
FOutFiledSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOutFiledSignature:Bind(Callback, Obj) end

---执行委托
function FOutFiledSignature:Execute() end


---@class FServeSignature : ULuaSingleDelegate
FServeSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FServeSignature:Bind(Callback, Obj) end

---执行委托
function FServeSignature:Execute() end


---@class FClientAddVelocitySignature : ULuaSingleDelegate
FClientAddVelocitySignature = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClientAddVelocitySignature:Bind(Callback, Obj) end

---执行委托
function FClientAddVelocitySignature:Execute() end


---@class FServerOverlapAddVelocitySignature : ULuaMulticastDelegate
FServerOverlapAddVelocitySignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OverlapActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FServerOverlapAddVelocitySignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param OverlapActor AActor
function FServerOverlapAddVelocitySignature:Broadcast(OverlapActor) end


---@class AProjBallBase: ADamageableActor
---@field AccelerateThreshold number
---@field bServeSetZ boolean
---@field ForWardOffset number
---@field AddServeOffset FVector
---@field ServeZMultiple number
---@field ImpactGap number
---@field CanDamageBroken boolean
---@field DamageBrokenThreshold number
---@field LifeTime number
---@field SinkDetectionTime number
---@field SinkFloorZ number
---@field SinkAdjustOffsetZ number
---@field bUseTrace boolean
---@field TraceEndOffset number
---@field TraceStartOffset number
---@field bUseAutoOverlapCheck boolean
---@field OverlapCheckGap number
---@field OverlapCheckRadius number
---@field CollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field BrokenSignature FBrokenSignature
---@field ScoringSignature FScoringSignature
---@field OutSoccerFieldSignature FOutFiledSignature
---@field ServeSignature FServeSignature
---@field ClientAddVelocitySignature FClientAddVelocitySignature
---@field ServerOverlapAddVelocitySignature FServerOverlapAddVelocitySignature
---@field bUseRepAddVelocity boolean
---@field RepVeocity FVector
---@field bDrawOverSphere boolean
---@field bDrawOverSphereCallRPC boolean
---@field DebugSphereLifeTime number
---@field bUseBP_OnPlayerActiveRegionsChanged boolean
---@field bAlwaysUseRepVelocity boolean
---@field TolerableVelocityDiff number
local AProjBallBase = {}

function AProjBallBase:OnRep_RepVelocity() end

---@param Location FVector
function AProjBallBase:Client_DrawOverSphereFromServer(Location) end

---ReplicatedMovement struct replication event
function AProjBallBase:OnRep_ReplicatedMovement() end

---@param bEnter boolean
function AProjBallBase:BP_OnPlayerActiveRegionsChanged(bEnter) end

function AProjBallBase:BP_PostInitializeComponents() end

---@return boolean
function AProjBallBase:BP_LifeSpanExpired() end

---@param Hit FHitResult
function AProjBallBase:OnStop(Hit) end

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function AProjBallBase:OnBounce(ImpactResult, ImpactVelocity) end

---@param Component UActorComponent
---@param bReset boolean
function AProjBallBase:OnActivate(Component, bReset) end

---@param DamagedActor AActor
---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function AProjBallBase:OnAnyDamage(DamagedActor, Damage, DamageType, InstigatedBy, DamageCauser) end

function AProjBallBase:AutoOverlapCheck() end

---@param OtherActor AActor
---@param ImpactCurve UCurveVector
function AProjBallBase:ServerAddHitVelocity(OtherActor, ImpactCurve) end

---@param OtherActor AActor
function AProjBallBase:ClientOverlapCheck(OtherActor) end

---@param DamagedActor AActor
---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function AProjBallBase:HandleBroken(DamagedActor, Damage, DamageType, InstigatedBy, DamageCauser) end

---@param ImpactCurve UCurveVector
---@param OtherActor AActor
---@return FVector
function AProjBallBase:CalculBounceAddVelocity(ImpactCurve, OtherActor) end

function AProjBallBase:Scoring() end

function AProjBallBase:OutSoccerField() end

---@param TargetLocation FVector
---@param TossSpeed number
function AProjBallBase:ServeBallToPoint(TargetLocation, TossSpeed) end
