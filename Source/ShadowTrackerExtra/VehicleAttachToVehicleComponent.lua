---@meta

---@class EAttachVehicleShapeControlType
---@field EAVSCT_AttachVehicle number @叠加上来的载具
---@field EAVSCT_VehicleToAttachTo number @被叠加的载具
EAttachVehicleShapeControlType = {}


---@class EAttachVehicleShapeCollisionEnableType
---@field EAVSCEK_None number @设为NoCollision
---@field EAVSCEK_KeepSceneQuery number @只保留开了Query的Shape
---@field EAVSCEK_KeepCollision number @只保留开了碰撞的Shape
---@field EAVSCEK_All number @保留原碰撞
EAttachVehicleShapeCollisionEnableType = {}


---@class EAttachVehicleLeavePos
---@field EAVLP_Left number
---@field EAVLP_Right number
---@field EAVLP_Forward number
---@field EAVLP_Backward number
---@field EAVLP_Up number
---@field EAVLP_Down number
---@field EAVLP_Center number
EAttachVehicleLeavePos = {}


---@class FVehicleAttachedToInfo
---@field Attached boolean
---@field VehicleAttachTo ASTExtraVehicleBase
FVehicleAttachedToInfo = {}


---@class FVehicleAttachToAnotherVehicle : ULuaMulticastDelegate
FVehicleAttachToAnotherVehicle = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: ASTExtraVehicleBase, VehicleAttachedTo: ASTExtraVehicleBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleAttachToAnotherVehicle:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle ASTExtraVehicleBase
---@param VehicleAttachedTo ASTExtraVehicleBase
function FVehicleAttachToAnotherVehicle:Broadcast(Vehicle, VehicleAttachedTo) end


---@class FVehicleDetachFromAnotherVehicle : ULuaMulticastDelegate
FVehicleDetachFromAnotherVehicle = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: ASTExtraVehicleBase, LastAttachedVehicle: ASTExtraVehicleBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleDetachFromAnotherVehicle:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle ASTExtraVehicleBase
---@param LastAttachedVehicle ASTExtraVehicleBase
function FVehicleDetachFromAnotherVehicle:Broadcast(Vehicle, LastAttachedVehicle) end


---将一个载具叠在另一个载具上的功能组件
---@class UVehicleAttachToVehicleComponent: UVehicleComponent
---@field VehicleAttachToInfo FVehicleAttachedToInfo
---@field VehicleAttachSocketName string
---@field DriverIndexAfterAttach number
---@field AttachOffset FVector
---@field EnoughSpaceCheckBoxExtend_Attach FVector
---@field ShouldMakeAttachedVehicleNotIgnorePassengerBullet boolean
---@field FindCanAttachSphereRadius number
---@field FindCanAttachViewValidAngle number
---@field FindAttachVehicleCheckBoxExtend FVector
---@field VehicleFireworkClass AActor
---@field EnoughSpaceCheckBoxExtend_Detach FVector
---@field EnoughSpaceCheckOutsideExtend FVector
---@field LeavePosUndergroundLineTraceHeight number
---@field ShouldCreateShapeAfterAttached boolean
---@field ShouldUpdateAttachedShape boolean
---@field ShouldBeCommonHP boolean
---@field ShouldFindLeavePosWhenDetach boolean
---@field ShouldUpdateIdentityBoxAfterAttach boolean
---@field AttachVehicleCollisionEnableType_OriginShape EAttachVehicleShapeCollisionEnableType
---@field AttachVehicleCollisionEnableType_CreateShape EAttachVehicleShapeCollisionEnableType
---@field AttachVehicleShapeControlType EAttachVehicleShapeControlType
---@field TipsID_CanBeAttachedByOtherVehicle number
---@field TipsID_HasAttached number
---@field TipsID_CantFindSocket number
---@field TipsID_CantAttachedDestroyedVehicle number
---@field TipsID_OwnerVehicleHasDestroyed number
---@field TipsID_NotEnoughSpace number
---@field OnVehicleAttachToAnotherVehicle FVehicleAttachToAnotherVehicle
---@field OnVehicleDetachFromAnotherVehicle FVehicleDetachFromAnotherVehicle
---@field LastAttachedVehicle ASTExtraVehicleBase
local UVehicleAttachToVehicleComponent = {}

---@param InVehicle ASTExtraVehicleBase
function UVehicleAttachToVehicleComponent:SetVehicleAttachTo(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function UVehicleAttachToVehicleComponent:ReqAttachToOtherVehicle(InVehicle) end

function UVehicleAttachToVehicleComponent:ReqDettachFromOtherVehicle() end

function UVehicleAttachToVehicleComponent:ForceDetach() end

---@param InVehicle ASTExtraVehicleBase
---@param ShowTips boolean
---@return boolean
function UVehicleAttachToVehicleComponent:CheckCanAttachToOtherVehicle(InVehicle, ShowTips) end

---@param InVehicle ASTExtraVehicleBase
---@param ShowTips boolean
---@return boolean
function UVehicleAttachToVehicleComponent:CheckCanAttachToOtherVehicleBP(InVehicle, ShowTips) end

---@return boolean
function UVehicleAttachToVehicleComponent:CheckCanDetachFromOtherVehicle() end

---@param IsAttachment boolean
function UVehicleAttachToVehicleComponent:AttachToVehicleChange_Server(IsAttachment) end

---@param IsAttachment boolean
function UVehicleAttachToVehicleComponent:AttachToVehicleChange_Client(IsAttachment) end

---@param IsAttachment boolean
function UVehicleAttachToVehicleComponent:AttachToVehicleChange_Both(IsAttachment) end

function UVehicleAttachToVehicleComponent:OnRep_VehicleAttachTo() end

function UVehicleAttachToVehicleComponent:OnRep_VehicleAttachToBP() end

function UVehicleAttachToVehicleComponent:ForceSyncUpdateAttachedShape() end

---@param Enable boolean
function UVehicleAttachToVehicleComponent:ModifyOwnerVehicleShapeCollisionAndQueryFlag(Enable) end

---@return boolean
function UVehicleAttachToVehicleComponent:CheckAttachHaveEnoughSpace() end

---@param LeavePos FVector
---@return boolean
function UVehicleAttachToVehicleComponent:FindProperLeavePosition(LeavePos) end

---@param Row EAttachVehicleLeavePos
---@param Line EAttachVehicleLeavePos
---@param Floor EAttachVehicleLeavePos
---@return FVector
function UVehicleAttachToVehicleComponent:GetLeaveLocation(Row, Line, Floor) end

---@param LeavePosition FVector
---@param LeaveRotation FRotator
function UVehicleAttachToVehicleComponent:GetFinalLeaveActorLocationAndRotation(LeavePosition, LeaveRotation) end

---@param Pos FVector
---@param Extend FVector
---@param AttachVehicle ASTExtraVehicleBase
---@param ShouldIgnoreAttachToVehicle boolean
---@return boolean
function UVehicleAttachToVehicleComponent:CheckPositionIsValid(Pos, Extend, AttachVehicle, ShouldIgnoreAttachToVehicle) end

---@param Center FVector
---@param Extent FVector
---@param Rotation FQuat
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime number
---@param DepthPriority number
---@param Thickness number
function UVehicleAttachToVehicleComponent:MulticastDrawDebugBox(Center, Extent, Rotation, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end

function UVehicleAttachToVehicleComponent:AfterVehicleOverridePhysX() end

---@param ForceUpdate boolean
function UVehicleAttachToVehicleComponent:UpdateAttachToVehicleShapesTransform(ForceUpdate) end

---@param Start FVector
---@param End FVector
---@param HalfSize FVector
---@param Orientation FRotator
---@param DrawDebugType EDrawDebugTrace
---@param bHit boolean
---@param OutHit FHitResult
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime number
function UVehicleAttachToVehicleComponent:MulticastDrawDebugBoxSweep(Start, End, HalfSize, Orientation, DrawDebugType, bHit, OutHit, TraceColor, TraceHitColor, DrawTime) end

---@param InVehicle ASTExtraVehicleBase
---@return number
function UVehicleAttachToVehicleComponent:GetVehicleDist(InVehicle) end
