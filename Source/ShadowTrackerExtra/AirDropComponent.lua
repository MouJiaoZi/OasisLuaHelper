---@meta

---@class FOnAirDropPosLocated : ULuaMulticastDelegate
FOnAirDropPosLocated = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AirDropPos: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAirDropPosLocated:Add(Callback, Obj) end

---触发 Lua 广播
---@param AirDropPos FVector
function FOnAirDropPosLocated:Broadcast(AirDropPos) end


---@class FOnAirDropStart : ULuaMulticastDelegate
FOnAirDropStart = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AirdropID: number, BoxFallingPositionArray: ULuaArrayHelper<FVector>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAirDropStart:Add(Callback, Obj) end

---触发 Lua 广播
---@param AirdropID number
---@param BoxFallingPositionArray ULuaArrayHelper<FVector>
function FOnAirDropStart:Broadcast(AirdropID, BoxFallingPositionArray) end


---@class FOnAirDropLand : ULuaMulticastDelegate
FOnAirDropLand = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AirdropID: number, Pos: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAirDropLand:Add(Callback, Obj) end

---触发 Lua 广播
---@param AirdropID number
---@param Pos FVector
function FOnAirDropLand:Broadcast(AirdropID, Pos) end


---@class FOnCustomAirdropLocationModify : ULuaSingleDelegate
FOnCustomAirdropLocationModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, OriginalAirdropLocation: FVector) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCustomAirdropLocationModify:Bind(Callback, Obj) end

---执行委托
---@param OriginalAirdropLocation FVector
function FOnCustomAirdropLocationModify:Execute(OriginalAirdropLocation) end


---@class FOnCustomAirPlaneLocationModify : ULuaSingleDelegate
FOnCustomAirPlaneLocationModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, OriginalSpawnLocation: FVector, DropLocation: FVector) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCustomAirPlaneLocationModify:Bind(Callback, Obj) end

---执行委托
---@param OriginalSpawnLocation FVector
---@param DropLocation FVector
function FOnCustomAirPlaneLocationModify:Execute(OriginalSpawnLocation, DropLocation) end


---@class UAirDropComponent: UTimerRegistComponent
---@field AirDropPlaneParams FAirDropPlaneParams
---@field ActivityEmptyAirDropPlaneParams FAirDropPlaneParams
---@field SuperAirDropPlaneParams FAirDropPlaneParams
---@field FourTheionsAirDropPlaneParams FAirDropPlaneParams
---@field GundamAirDropPlaneParams FAirDropPlaneParams
---@field OnAirDropPosLocated FOnAirDropPosLocated
---@field OnAirDropStartDelegate FOnAirDropStart
---@field OnAirDropLandDelegate FOnAirDropLand
---@field OnCustomAirdropLocationModify FOnCustomAirdropLocationModify
---@field OnCustomAirPlaneLocationModify FOnCustomAirPlaneLocationModify
---@field VehicleAirDropPlaneParams FAirDropPlaneParams
---@field ZombieAirDropPlaneParams FAirDropPlaneParams
---@field ZombieAirDropTargetSourceID number
---@field BossWarningActorClass AActor
---@field AirDropConfigs ULuaArrayHelper<FAirDropConfig>
---@field bRandomAirDrop boolean
---@field RandomAirDropConfig FRandomAirDropConfig
---@field bCanUseDelayDrop boolean
---@field AirDropPlaneBluePrint AAirDropPlane
---@field AirDropBoxBlueprint AAirDropBoxActor
---@field SuperAirDropRandomParams FFlareGunAirDropRandomParams
---@field VehicleAirDropRandomParams FFlareGunAirDropRandomParams
---@field SpotType ULuaArrayHelper<ESpotType>
---@field TankSpotType ULuaArrayHelper<ESpotType>
---@field MaxDist number
---@field MinDist number
---@field RoomCfgTemplates ULuaArrayHelper<string>
---@field AirDropBoundOffset FVector2D
---@field StuffBoxToWorldBoundaryMinDis number
---@field OffsetForDoubleAirDrop FVector
---@field AirDropOrder FAirDropOrder
---@field ActivityEmptyAirDropOrder FAirDropOrder
---@field SuperAirDropOrder FAirDropOrder
---@field FourTheionsAirDropOrder FAirDropOrder
---@field DelayOrder ULuaArrayHelper<FAirDropOrder>
---@field WingmanAirDropOrder FAirDropOrder
---@field TyrantZombieAirDropOrder FAirDropOrder
---@field AirdropCfgParam number
---@field bDoubleAirdropTriggered boolean
---@field AirdropTypes ULuaArrayHelper<FAirdropType>
---@field AirDropBoxInfoList ULuaArrayHelper<FAirDropBoxInOb>
---@field SpawnedAirplaneCount number
local UAirDropComponent = {}

function UAirDropComponent:InitAirDrop() end

function UAirDropComponent:HandleLoadActivityEmptyPlaneFinished() end

function UAirDropComponent:HandleLoadSuperPlaneFinished() end

function UAirDropComponent:HandleLoadFourTheionsPlaneFinished() end

function UAirDropComponent:HandleLoadFourTheionsAirdropBoxFinished() end

function UAirDropComponent:HandleLoadGundamPlaneFinished() end

function UAirDropComponent:HandleLoadGundamAirdropBoxFinished() end

function UAirDropComponent:HandleLoadPlaneFinished() end

function UAirDropComponent:HandleLoadAirDropConfigPlaneFinished() end

---@param AirDropIndex number
function UAirDropComponent:ExecuteAirDrop(AirDropIndex) end

---@param X number
---@param Y number
---@param Index number
function UAirDropComponent:AirDropSpecified(X, Y, Index) end

---@param X number
---@param Y number
---@param InTargetDropIndex number
function UAirDropComponent:AirDropSpecifiedLocAndDropIndex(X, Y, InTargetDropIndex) end

---@param X number
---@param Y number
---@param InTargetDropIndex number
---@param FlyHeight number
function UAirDropComponent:ModifyAirDropLoc(X, Y, InTargetDropIndex, FlyHeight) end

---@param DropLoc FVector
---@param SummonerKey number
function UAirDropComponent:CallSuperAirDrop(DropLoc, SummonerKey) end

---@param OnOff boolean
function UAirDropComponent:IDIPSwitchGroupAirDrop(OnOff) end

---@param Triggered boolean
function UAirDropComponent:SetDoubleAssetsTrigger(Triggered) end

---@param SpotTypes ULuaArrayHelper<ESpotType>
---@param type EAirDropType
function UAirDropComponent:GetSpotTypeByAirDropType(SpotTypes, type) end

---@param type EInnerCircleType
function UAirDropComponent:CallFourTheionsAirDrop(type) end

---@param InDropPointName string
---@param InShowPath boolean
---@param ToStartOffset number
---@param InFlyOnCircle boolean
---@return FAirDropOrder
function UAirDropComponent:CallActivityEmptyDrop(InDropPointName, InShowPath, ToStartOffset, InFlyOnCircle) end

---@param InDropLoc FVector
---@param DropType EAirDropType
---@param SummonerKey number
---@param InIsFlareGun boolean
---@param InWeapon ASTExtraWeapon
function UAirDropComponent:CallFlareGunAirDrop(InDropLoc, DropType, SummonerKey, InIsFlareGun, InWeapon) end

---@param boxId number
---@param pos FVector
function UAirDropComponent:AddAirDropBox(boxId, pos) end

---@param boxId number
---@param pos FVector
function UAirDropComponent:OnAirDropBoxLanded(boxId, pos) end

---@param boxId number
function UAirDropComponent:OnAirDropBoxEmpty(boxId) end

---@param boxId number
function UAirDropComponent:OnAirDropBoxDestroy(boxId) end

function UAirDropComponent:SyncAirDropBoxToObserver() end

---IDIP修改参数, feishen, 20200408
function UAirDropComponent:DoIDIPModifyAirDropConfigs() end

---@param Cmd string
function UAirDropComponent:IDIPModifyAirDropConfigs(Cmd) end

---自定义房间修改参数 add by czcheng 2020.5.18
function UAirDropComponent:DoRoomCfgModifyAirDropConfigs() end

---@param index number
---@return boolean
function UAirDropComponent:IsGroupAirDropAndIDIPOFF(index) end

---@param AirDropIndex number
---@param AirDropType EAirDropType
function UAirDropComponent:ExecuteAirDropUGC(AirDropIndex, AirDropType) end

---@param StartPos FVector2D
---@param EndPos FVector2D
---@param DropDis number
---@param AirDropType EAirDropType
function UAirDropComponent:StartNormalAirDropUGC(StartPos, EndPos, DropDis, AirDropType) end
