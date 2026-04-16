---@meta

---@class FOnControlRotationChanged : ULuaMulticastDelegate
FOnControlRotationChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Rotation: FRotator) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnControlRotationChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Rotation FRotator
function FOnControlRotationChanged:Broadcast(Rotation) end


---@class UActivitySpringArmComponent: USpringArmComponent
---@field bDefaultsView boolean
---@field DefaultViewRotation FRotator
---@field VerticalScreenMode boolean
---@field bViewTargetIsAnActor boolean
---@field bUsePossessActorForViewSync boolean
---@field bRotationLimitSetLimitRotateDirectly boolean
---@field UseRotationLimit boolean
---@field bRotationLimitIsRelativeOwnerComp boolean
---@field bUseParentRotator boolean
---@field YawMin number
---@field YawMax number
---@field PitchMin number
---@field PitchMax number
---@field OnControlRotationChangedDelegate FOnControlRotationChanged
---@field bShouldBackRotation boolean
---@field SmartCameraRotSpeed number
---@field DefaultCameraStayTimer number
---@field SimulateViewData FVehicleSimViewData
---@field bSmartCamAutoReturnEnabled boolean
---@field CachedRotation FRotator
---@field CachedIgonreActor ULuaArrayHelper<AActor>
---@field CachedIgonrePrimitiveComponent ULuaArrayHelper<UPrimitiveComponent>
local UActivitySpringArmComponent = {}

---@param bEnabled boolean
function UActivitySpringArmComponent:SetComponentTickEnabled(bEnabled) end

---@param NewView FRotator
function UActivitySpringArmComponent:SetDefaultsView(NewView) end

---@return FRotator
function UActivitySpringArmComponent:GetTargetRotation() end

---@param Actor AActor
function UActivitySpringArmComponent:AddIgonreActor(Actor) end

---@param Actor AActor
function UActivitySpringArmComponent:RemoveIgonreActor(Actor) end

---@param Compoent UPrimitiveComponent
function UActivitySpringArmComponent:AddIgonreComponent(Compoent) end

---@param Compoent UPrimitiveComponent
function UActivitySpringArmComponent:RemoveIgonreComponent(Compoent) end

---@param bDoTrace boolean
---@param bDoLocationLag boolean
---@param bDoRotationLag boolean
---@param DeltaTime number
function UActivitySpringArmComponent:ForceUpdateDesiredArmLocation(bDoTrace, bDoLocationLag, bDoRotationLag, DeltaTime) end

---@param DeltaTime number
function UActivitySpringArmComponent:UpdateSmartCamera(DeltaTime) end

---@param bEnabled boolean
function UActivitySpringArmComponent:SetSmartCameraAutoReturn(bEnabled) end

function UActivitySpringArmComponent:ResetSmartCamera() end

---@param Pos FVector2D
function UActivitySpringArmComponent:OnTouchBegin(Pos) end

function UActivitySpringArmComponent:OnTouchEnd() end

---@param Pitch number
---@param Yaw number
---@param Loc FVector2D
function UActivitySpringArmComponent:OnTouchMove(Pitch, Yaw, Loc) end

function UActivitySpringArmComponent:OnRep_SimulateViewData() end

function UActivitySpringArmComponent:OnRep_AutoReturnEnabled() end

---@param ClientRotation FRotator
function UActivitySpringArmComponent:UpdateSimulateViewData(ClientRotation) end
