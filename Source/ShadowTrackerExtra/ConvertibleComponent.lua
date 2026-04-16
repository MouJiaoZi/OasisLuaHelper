---@meta

---@class EHoodState
---@field HS_Closed number
---@field HS_PreOpen number
---@field HS_Opening number
---@field HS_AfterOpen number
---@field HS_Opened number
---@field HS_PreClose number
---@field HS_Closing number
---@field HS_AfterClose number
---@field HS_Default number
EHoodState = {}


---@class EOpenOrCloseHoodResult
---@field EOOCHR_Success number
---@field EOOCHR_BPRejected number
---@field EOOCHR_Busy number
---@field EOOCHR_ShouldStop number
---@field EOOCHR_AlreadySuccess number
EOpenOrCloseHoodResult = {}


---@class EContainerCollisionRotationAxisType
---@field ECCRAT_X number @X轴
---@field ECCRAT_Y number @Y轴
---@field ECCRAT_Z number @Z轴
EContainerCollisionRotationAxisType = {}


---@class FHoodStateWrapper
---@field HoodState EHoodState
---@field HoodAnimTime number
FHoodStateWrapper = {}


---@class FConvertibleCharAnimCompTagNameWrapper
---@field ClosedHoodAnimCompTagName string
---@field OpenedHoodAnimCompTagName string
FConvertibleCharAnimCompTagNameWrapper = {}


---@class FHoodContainerCollisionShapeTransformConfigPerAxis
---@field RotateAxis EContainerCollisionRotationAxisType
---@field RotatePointLocation FVector
FHoodContainerCollisionShapeTransformConfigPerAxis = {}


---@class FHoodContainerCollisionShapeTransformConfig
---@field ShapeOriginLocation FVector
---@field ShapeOriginRotation FRotator
---@field ShapeTransformConfigs ULuaArrayHelper<FHoodContainerCollisionShapeTransformConfigPerAxis>
FHoodContainerCollisionShapeTransformConfig = {}


---@class FHoodCollisionDetectShapeConfig
FHoodCollisionDetectShapeConfig = {}


---@class FOnHoodStateChange : ULuaMulticastDelegate
FOnHoodStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HoodStateWrapper: FHoodStateWrapper) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHoodStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param HoodStateWrapper FHoodStateWrapper
function FOnHoodStateChange:Broadcast(HoodStateWrapper) end


---@class UConvertibleComponent: UVehicleComponent
---@field DefaultHoodState EHoodState
---@field HoodCollisionDetectShape ULuaArrayHelper<FHoodCollisionDetectShapeConfig>
---@field SeatIndexToAnimCompTagName ULuaMapHelper<number, FConvertibleCharAnimCompTagNameWrapper>
---@field HoodOpenParticleName string
---@field HoodCloseParticleName string
---@field OnHoodStateChange FOnHoodStateChange
---@field HoodCollisionIsActive number
---@field HoodStateWrapper FHoodStateWrapper
---@field ShouldStop boolean
---@field PassengerAnimCompTagState ULuaArrayHelper<boolean>
---@field LastHoodState EHoodState
local UConvertibleComponent = {}

---@param InHoodStateWrapper FHoodStateWrapper
function UConvertibleComponent:SetHoodStateWrapper(InHoodStateWrapper) end

---@param InShouldStop boolean
function UConvertibleComponent:SetShouldStop(InShouldStop) end

---@param IsOpen boolean
function UConvertibleComponent:ReqOpenOrCloseHood(IsOpen) end

---@param IsOpen boolean
---@param result EOpenOrCloseHoodResult
function UConvertibleComponent:RspOpenOrCloseHood(IsOpen, result) end

---@return boolean
function UConvertibleComponent:BP_CanOpenOrCloseHood() end

function UConvertibleComponent:UpdateConvertibleUI() end

function UConvertibleComponent:UpdateConvertibleUIState() end

function UConvertibleComponent:BP_OnRepHoodStateWrapper() end

function UConvertibleComponent:BP_OnRepShouldStop() end

---@return boolean
function UConvertibleComponent:IsOpening() end

---@return boolean
function UConvertibleComponent:IsOpened() end

---@return boolean
function UConvertibleComponent:IsClosing() end

---@return boolean
function UConvertibleComponent:IsClosed() end

---@param State EHoodState
---@param ForceUpdateAnimTime boolean
---@param AnimTime number
---@param ForceUpdateHoodCollision boolean
function UConvertibleComponent:GoToState(State, ForceUpdateAnimTime, AnimTime, ForceUpdateHoodCollision) end

function UConvertibleComponent:SaveHoodCollisionDetectShape() end

function UConvertibleComponent:UpdateHoodCollision() end

---@param InActive boolean
function UConvertibleComponent:ActiveHoodCollision(InActive) end

function UConvertibleComponent:InitHoodContainerCollisionShape() end

function UConvertibleComponent:UpdateHoodContainerCollision() end

---@param Transform FTransform
function UConvertibleComponent:SetHoodContainerTransform(Transform) end

function UConvertibleComponent:OnRep_HoodStateWrapper() end

function UConvertibleComponent:OnRep_ShouldStop() end

function UConvertibleComponent:OnRep_PassengerAnimCompTagState() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UConvertibleComponent:OnClientEnterVehicle(Character, SeatType, IsSucc) end

function UConvertibleComponent:CleanBulletHoles() end

function UConvertibleComponent:CheckShouldStop() end

---@param Open boolean
---@return EOpenOrCloseHoodResult
function UConvertibleComponent:CheckCanOpenOrCloseHood(Open) end

function UConvertibleComponent:OnClientChangeAvatarOverridePhysics() end

---@param IsLeanOut boolean
---@param Character ASTExtraPlayerCharacter
function UConvertibleComponent:MulticastPreVehicleLeanOut(IsLeanOut, Character) end

---@param IsLeanOut boolean
---@param Character ASTExtraPlayerCharacter
function UConvertibleComponent:HandlePreVehicleLeanOut(IsLeanOut, Character) end

function UConvertibleComponent:ForceUpdateByCurrentHoodStateWrapper() end

function UConvertibleComponent:OnDSChangeAvatar() end

---@param DeltaTime number
function UConvertibleComponent:DrawDebugHoodContainerCollision(DeltaTime) end
