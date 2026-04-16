---@meta

---@class FBeamDataContext
---@field bLaunching boolean
---@field SourceSocketName string
---@field bNeedAttachSource boolean
---@field TargetSocketName string
---@field SourcePos FVector
---@field Direction FVector
---@field Length number
---@field TargetPos FVector
---@field LaunchTimeStamp number
FBeamDataContext = {}


---@class FSyncShootBeamData
---@field token number
---@field bLaunching boolean
---@field TargetDirection FVector
---@field LaunchTimeStamp number
FSyncShootBeamData = {}


---@class FBeamEmitterData
---@field BeamEmitterIndex number
---@field TargetIndex number
---@field SourceIndex number
FBeamEmitterData = {}


---@class FBeamDataModifier
---@field bEnable boolean
---@field ApplyPriority number
FBeamDataModifier = {}


---@class FSourceTrackerCalculator_BDM
---@field bNeedAttachSource boolean
---@field SourceSceneName string
---@field SourceSocketName string
FSourceTrackerCalculator_BDM = {}


---@class FTargetTracker_BDM
---@field TargetSceneName string
---@field TargetSocketName string
FTargetTracker_BDM = {}


---@class FDirectionDisturber_BDM
FDirectionDisturber_BDM = {}


---@class FLengthLimiter_BDM
---@field bImmediately boolean
---@field MaxLength number
---@field BeamSpeed number
FLengthLimiter_BDM = {}


---@class FTargetPosCalculator_BDM
FTargetPosCalculator_BDM = {}


---@class FTargetLineTrace_BDM
---@field bIgnoreTarget boolean
---@field IgnoreActorClasses ULuaArrayHelper<AActor>
---@field TraceChannel ECollisionChannel
---@field ExtraTraceLength number
FTargetLineTrace_BDM = {}


---@class FOnBeamShoot : ULuaSingleDelegate
FOnBeamShoot = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBeamShoot:Bind(Callback, Obj) end

---执行委托
function FOnBeamShoot:Execute() end


---@class FOnBeamStop : ULuaSingleDelegate
FOnBeamStop = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBeamStop:Bind(Callback, Obj) end

---执行委托
function FOnBeamStop:Execute() end


---@class FOnBeamImpact : ULuaMulticastDelegate
FOnBeamImpact = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ImpactLocation: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBeamImpact:Add(Callback, Obj) end

---触发 Lua 广播
---@param ImpactLocation FVector
function FOnBeamImpact:Broadcast(ImpactLocation) end


---@class FOnBeamTraceHit : ULuaMulticastDelegate
FOnBeamTraceHit = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HitResult: FHitResult) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBeamTraceHit:Add(Callback, Obj) end

---触发 Lua 广播
---@param HitResult FHitResult
function FOnBeamTraceHit:Broadcast(HitResult) end


---@class UBeamComponent: UActorComponent
---@field BeamDataContext FBeamDataContext
---@field bRunOnServer boolean
---@field BeamEmitterDataList ULuaArrayHelper<FBeamEmitterData>
---@field UpdateRate number
---@field SyncShootBeamData FSyncShootBeamData @config end****************
---@field OnBeamShoot FOnBeamShoot
---@field OnBeamStop FOnBeamStop
---@field OnBeamImpact FOnBeamImpact
---@field OnBeamTraceHit FOnBeamTraceHit
---@field SourceTrackerCalculator_BDM FSourceTrackerCalculator_BDM
---@field TargetTracker_BDM FTargetTracker_BDM
---@field DirectionDisturber_BDM FDirectionDisturber_BDM
---@field LengthLimiter_BDM FLengthLimiter_BDM
---@field TargetPosCalculator_BDM FTargetPosCalculator_BDM
---@field TargetLineTrace_BDM FTargetLineTrace_BDM
local UBeamComponent = {}

function UBeamComponent:OnRep_SyncShootBeamData() end

---@param SourceActor AActor
---@param TargetActor AActor
---@param TargetDirection FVector
---@param Duration number
function UBeamComponent:Server_ShootBeam(SourceActor, TargetActor, TargetDirection, Duration) end

function UBeamComponent:Server_StopBeam() end

---@param DeltaTime number
function UBeamComponent:ForceRefreshBeam(DeltaTime) end

function UBeamComponent:ShootBeam() end

function UBeamComponent:StopBeam() end

function UBeamComponent:DestroyAllBeamParticle() end
