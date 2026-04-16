---@meta

---@class FPredictLineMaterialParams
---@field ParamName string
FPredictLineMaterialParams = {}


---@class FInitPredictLineSplineMeshDelegate : ULuaMulticastDelegate
FInitPredictLineSplineMeshDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SplineMesh: USplineMeshComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInitPredictLineSplineMeshDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SplineMesh USplineMeshComponent
function FInitPredictLineSplineMeshDelegate:Broadcast(SplineMesh) end


---@class UPredictLineComponent: USplineComponent
---@field bEnabled boolean
---@field PredictActorTemplate AActor
---@field MeshTemplate UStaticMesh
---@field PredictEndPointFX UParticleSystem
---@field PredictEndPointScaleCurve UCurveFloat
---@field PredictProjectilePathParams FPredictProjectilePathParams
---@field MaxSegmentCount number
---@field SegmentLength number
---@field DistanceEffectSegmentLength number
---@field InitNewSplineMeshDelegate FInitPredictLineSplineMeshDelegate
---@field Param_StartPointLocation FPredictLineMaterialParams
---@field Param_EndPointLocation FPredictLineMaterialParams
---@field Param_EndPointFalloff FPredictLineMaterialParams
---@field Param_PredictLineColor FPredictLineMaterialParams
---@field PredictLineColor FLinearColor
---@field RotationOfCollision FRotator
---@field CollisionShapeBP FCollisionShapeBP
---@field SweepIgnoredActorClasses ULuaArrayHelper<AActor>
---@field bAttachPredictEndFXRotation boolean
---@field bLockUnVisible boolean
---@field PredictResult FPredictProjectilePathResult
---@field CachedSplineMeshes ULuaArrayHelper<USplineMeshComponent>
---@field RedrawCounter number
---@field bHideEndPointFx boolean
local UPredictLineComponent = {}

---@param InStartPoint FVector
---@param InVelocity FVector
---@param bOnlyTest boolean
function UPredictLineComponent:SetPredictParams(InStartPoint, InVelocity, bOnlyTest) end

---@param InActorTemplate AActor
function UPredictLineComponent:SetPredictActorTemplate(InActorTemplate) end

---@param NewColor FLinearColor
function UPredictLineComponent:SetPredictLineColor(NewColor) end

---@param NewRotation FRotator
function UPredictLineComponent:SetPredictLineRotation(NewRotation) end

function UPredictLineComponent:PostRedrawPredictLine_BP() end

---@return number
function UPredictLineComponent:GetPredictLinePointsNum() end

---@return boolean
function UPredictLineComponent:IsBlockAtEnd() end

---@param InbHideEndPointFx boolean
function UPredictLineComponent:SetHideEndPointFx(InbHideEndPointFx) end
