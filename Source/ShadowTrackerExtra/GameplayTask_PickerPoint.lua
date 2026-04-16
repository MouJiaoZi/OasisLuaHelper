---@meta

---@class EPickerMode
---@field CameraCenter number @基于摄像机中心选点
---@field CharacterOffset number @基于角色前方偏移选点
EPickerMode = {}


---@class EPickerPreviewType
---@field None number @无
---@field Circle number @圆形区域
---@field StaticMesh number @静态网格
---@field SkeletalMesh number @骨骼网格
---@field ActorTemplate number @Actor模板
EPickerPreviewType = {}


---@class FGroundTraceSettings
---@field TraceStartOffset number
---@field TraceDistance number
---@field bInAlignToGround boolean
---@field InvalidSurfaceActorTypes FGameplayTagContainer
---@field AttachOffset FVector2D
FGroundTraceSettings = {}


---@class FPickerPreviewConfig
---@field PreviewType EPickerPreviewType
---@field CircleRadius number
---@field MeshScale FVector
---@field MaxSlopeAngle number
---@field IgnoreOverlap boolean
---@field OverlapActorTypes FGameplayTagContainer
---@field CollisionActorFilter FProjectileFilterContainer
FPickerPreviewConfig = {}


---@class FOnPickCompleted : ULuaMulticastDelegate
FOnPickCompleted = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PickedTransform: FTransform) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPickCompleted:Add(Callback, Obj) end

---触发 Lua 广播
---@param PickedTransform FTransform
function FOnPickCompleted:Broadcast(PickedTransform) end


---@class FOnPickCancelled : ULuaSingleDelegate
FOnPickCancelled = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPickCancelled:Bind(Callback, Obj) end

---执行委托
function FOnPickCancelled:Execute() end


---@class APreviewActor: AActor
---@field bIsValidLocation boolean
---@field bEnableLocalHeightUpdate boolean
---@field LocalGroundTraceSettings FGroundTraceSettings
---@field LocalPreviewConfig FPickerPreviewConfig
---@field PreviewComponents ULuaArrayHelper<UMeshComponent>
---@field SavedCapsuleHalfHeight number
local APreviewActor = {}

---@param Resource UObject
function APreviewActor:Multicast_InitializePreviewActor(Resource) end

---@param Material UMaterialInterface
function APreviewActor:ApplyPreviewMaterial(Material) end

---@param TransparentMaterialPath FSoftObjectPath
function APreviewActor:Multicast_ApplyPreviewMaterial(TransparentMaterialPath) end

function APreviewActor:OnRep_bEnableLocalHeightUpdate() end

function APreviewActor:OnRep_bIsValidLocation() end


---@class UGameplayTask_PickerPoint: UUAEGameplayTask
---@field OnPickCompleted FOnPickCompleted
---@field OnPickCancelled FOnPickCancelled
---@field PreviewCircleActorClass FSoftClassPath
---@field TransparentMaterialPath FSoftObjectPath
---@field PickerMode EPickerMode
---@field MaxDistance number
---@field OffsetTransform FTransform
---@field bIsAttachedToCharacter boolean
---@field bWaitingForValidation boolean
---@field CurrentMeshBottomTransform FTransform
---@field CurrentPickTransform FTransform
---@field OwnerCharacter ACharacter
---@field PlayerController APlayerController
---@field PreviewConfig FPickerPreviewConfig
---@field GroundTraceSettings FGroundTraceSettings
local UGameplayTask_PickerPoint = {}

---@param OutLocation FVector
---@param OutRotation FRotator
---@return boolean
function UGameplayTask_PickerPoint:ConfirmPick(OutLocation, OutRotation) end

---@param OutLocation FVector
---@param OutRotation FRotator
---@return boolean
function UGameplayTask_PickerPoint:ClientConfirmPick(OutLocation, OutRotation) end

---@param ClientLocation FVector
---@param ClientRotation FRotator
function UGameplayTask_PickerPoint:Server_ValidateAndConfirmPick(ClientLocation, ClientRotation) end

---@param bSuccess boolean
---@param ValidatedLocation FVector
---@param ValidatedRotation FRotator
function UGameplayTask_PickerPoint:Client_OnPickValidationResult(bSuccess, ValidatedLocation, ValidatedRotation) end

function UGameplayTask_PickerPoint:CancelPick() end

---@param Transform FTransform
---@return boolean
function UGameplayTask_PickerPoint:IsValidPickTransform(Transform) end
