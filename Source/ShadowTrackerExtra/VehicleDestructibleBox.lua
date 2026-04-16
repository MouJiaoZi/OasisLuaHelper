---@meta

---@class FCustomBoxData
---@field Transform FMatrix
---@field BoxExtent FVector
FCustomBoxData = {}


---@class UVehicleDestructibleBox: UBoxComponent
---@field bManualEnableUpdateOverlap boolean
---@field CustomBoxDatas ULuaArrayHelper<FCustomBoxData>
---@field bGenerateDestructibleTriggerBoxByShapes boolean
---@field bEnableModifyDestructibleTriggerBoxBySpeed boolean
---@field bEnableMultiBoxOverlap boolean
---@field SpeedThreshHold2ModifyBox FVector
---@field bDrawBoxInfo boolean
---@field DefaultDestructibleBoxExtent FVector
---@field DefaultDestructibleBoxOrigin FVector
---@field ModifiedDestructibleBoxExtent FVector
---@field ModifiedDestructibleBoxOrigin FVector
---@field bAutoGenerateBoxBeginPlay boolean
---@field AirWallCheckPoints ULuaArrayHelper<FVector>
local UVehicleDestructibleBox = {}

---更新指定实例的变换信息
---@param InstanceIndex number
---@param NewInstanceTransform FTransform
---@param bWorldSpace boolean
---@param bMarkRenderStateDirty boolean
---@param bTeleport boolean
---@return boolean
function UVehicleDestructibleBox:UpdateInstanceTransform(InstanceIndex, NewInstanceTransform, bWorldSpace, bMarkRenderStateDirty, bTeleport) end

---@param InBoxExtent FVector
---@param bUpdateOverlaps boolean
function UVehicleDestructibleBox:SetBoxExtent(InBoxExtent, bUpdateOverlaps) end

---@param Increment FVector
---@param bUpdateOverlaps boolean
function UVehicleDestructibleBox:ModifyMultiBoxExtent(Increment, bUpdateOverlaps) end

function UVehicleDestructibleBox:RegisterDestructibleBoxEvents() end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UVehicleDestructibleBox:HandleBeginOverlapEvent(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function UVehicleDestructibleBox:HandleEndOverlapEvent(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function UVehicleDestructibleBox:HandleOnHitDestructibleThing(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end

---@param InVehicle ASTExtraVehicleBase
function UVehicleDestructibleBox:SetOwnerVehicle(InVehicle) end

function UVehicleDestructibleBox:InitDestructibleTriggerBoxState() end

function UVehicleDestructibleBox:UpdateDestructibleTriggerBoxSizeAndLoc() end

function UVehicleDestructibleBox:ResetBoxSize() end

---@param GenerateDestructibleTriggerBoxByShapes boolean
function UVehicleDestructibleBox:CalculateBoxBounds(GenerateDestructibleTriggerBoxByShapes) end
