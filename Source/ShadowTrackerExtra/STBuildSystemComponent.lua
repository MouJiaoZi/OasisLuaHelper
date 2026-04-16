---@meta

---@class FBuildingConsumeData
---@field BuildingID number
---@field ConsumeItemID number
---@field ConsumeItemCount number
---@field ReturnItemCount number
FBuildingConsumeData = {}


---@class FOnInsufficientMaterial : ULuaMulticastDelegate
FOnInsufficientMaterial = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BuildType: EBuildingActionType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnInsufficientMaterial:Add(Callback, Obj) end

---触发 Lua 广播
---@param BuildType EBuildingActionType
function FOnInsufficientMaterial:Broadcast(BuildType) end


---@class USTBuildSystemComponent: UBuildSystemComponent
---@field OnInsufficientMaterial FOnInsufficientMaterial
---@field CurrentUIBuildingID number
---@field ConstructBotTemplate AConstructBot
---@field hasConnection boolean
---@field CheckConnections boolean
---@field MaxmumBuildingAllowed number
---@field EnableAICheckBuildingCountLimit boolean
local USTBuildSystemComponent = {}

function USTBuildSystemComponent:InitBuildDataFromDataTable() end

---@return number
function USTBuildSystemComponent:GetCurrentBuildIDFromUI() end

---@param BuildingID number
---@return boolean
function USTBuildSystemComponent:ContainsBuildingConsumeID(BuildingID) end

---@param InData FBuildingConsumeData
function USTBuildSystemComponent:AddBuildingConsumeData(InData) end

---@param InBuildID number
---@param _type EBuildingActionType
---@return boolean
function USTBuildSystemComponent:IsCanPlaceBuilding(InBuildID, _type) end

function USTBuildSystemComponent:SpawnConstructBot() end

function USTBuildSystemComponent:ServerSpawnConstructBot() end

function USTBuildSystemComponent:ServerDestroyConstructBot() end

function USTBuildSystemComponent:DoSpawnConstructBot() end

function USTBuildSystemComponent:DoShutdownConstructBot() end

function USTBuildSystemComponent:InitializeComponent() end

function USTBuildSystemComponent:DestroyConstructBot() end

function USTBuildSystemComponent:RestartConstructBot() end

---@param ScreenPosition FVector2D
---@param PointerIndex number
---@param IsBegin boolean
function USTBuildSystemComponent:JoystickTouchBeginHandler(ScreenPosition, PointerIndex, IsBegin) end

---@param ScreenPosition FVector2D
function USTBuildSystemComponent:OnControllerBeginTouch(ScreenPosition) end

---@param config number
function USTBuildSystemComponent:SetBuildingConfig(config) end

---@param IsCheat boolean
function USTBuildSystemComponent:SetCheatBuilding(IsCheat) end

---@param InBuildingID number
---@param OutBuildData FBuildingConsumeData
---@return boolean
function USTBuildSystemComponent:GetBuildingConsumeDataByID(InBuildingID, OutBuildData) end

---@param InHitResult FHitResult
function USTBuildSystemComponent:CheckMovementAttachment(InHitResult) end

---@param InHitResult FHitResult
function USTBuildSystemComponent:CheckMovementAttachmentInternal(InHitResult) end

---@param controller AUAEPlayerController
---@param bFromServer boolean
function USTBuildSystemComponent:OnLostConnectionHandler(controller, bFromServer) end

---@param controller AUAEPlayerController
function USTBuildSystemComponent:OnConnectionRestoredHandler(controller) end

function USTBuildSystemComponent:BeginPlay() end

function USTBuildSystemComponent:OnUIInterfaceCreated() end

---@param BuiltActor AActor
function USTBuildSystemComponent:HandleServerPlaceBuildingSuccess(BuiltActor) end

---@param InBuildingID number
function USTBuildSystemComponent:HandleStartPlaceBuilding(InBuildingID) end

---@param InBuildingID number
function USTBuildSystemComponent:HandleStopPlaceBuilding(InBuildingID) end

---@param CurBuildData FBuildingData
---@param DestRotation FRotator
---@param DestLocation FVector
---@return boolean
function USTBuildSystemComponent:CustomizedCheck(CurBuildData, DestRotation, DestLocation) end

---@return boolean
function USTBuildSystemComponent:IsInFreeCamera() end

function USTBuildSystemComponent:PlayerControllerReconnectedHandler() end

function USTBuildSystemComponent:BindTouchEvents() end

---@param State EPawnState
function USTBuildSystemComponent:HandlePlayerLeavePawnState(State) end

---@param InBuiltActor AActor
function USTBuildSystemComponent:AICheckBuildingCountLimit(InBuiltActor) end
