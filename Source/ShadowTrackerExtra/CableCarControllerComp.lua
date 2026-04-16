---@meta

---索道电梯运行状态
---@class ECableCarRunningState
---@field NotUsable number
---@field Usable number
---@field Running number
ECableCarRunningState = {}


---@class FCableCarRequestRun : ULuaSingleDelegate
FCableCarRequestRun = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UCableCarControllerComp) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCableCarRequestRun:Bind(Callback, Obj) end

---执行委托
---@param Param1 UCableCarControllerComp
function FCableCarRequestRun:Execute(Param1) end


---索道电梯
---@class UCableCarControllerComp: UActorComponent
---@field EntranceOverlapTag string
---@field EnterOffsetLocations ULuaArrayHelper<FVector>
---@field StandOffsetYaw number
---@field LeaveOffsetLocations ULuaArrayHelper<FVector>
---@field CableCarRunningState ECableCarRunningState
---@field EntrancePlayers ULuaArrayHelper<ASTExtraBaseCharacter>
---@field InsidePlayers ULuaArrayHelper<ASTExtraBaseCharacter>
local UCableCarControllerComp = {}

---设置是否可以使用
---@param InCableCarRunningState ECableCarRunningState
function UCableCarControllerComp:ServerSetCableCarRunningState(InCableCarRunningState) end

---请求电梯运行
function UCableCarControllerComp:ServerRequestRun() end

---玩家进入电梯
---@param Player ASTExtraBaseCharacter
function UCableCarControllerComp:ServerEnterCableCar(Player) end

---玩家离开电梯
---@param Player ASTExtraBaseCharacter
---@param bCheckDeath boolean
function UCableCarControllerComp:ServerLeaveCableCar(Player, bCheckDeath) end

---设置是否可以使用
---@param MoveLocation FVector
function UCableCarControllerComp:ServerMoveTo(MoveLocation) end

---@param bIsMove boolean
function UCableCarControllerComp:OnServerMoveEvent(bIsMove) end

---开关门时电梯门口检测到玩家需要开门
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UCableCarControllerComp:OnServerEntranceBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function UCableCarControllerComp:OnServerEntranceEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---电梯内玩家死亡状态改变
---@param PrevStatus ECharacterHealthStatus
---@param NewStatus ECharacterHealthStatus
function UCableCarControllerComp:OnPlayerHealthStatusChangedDelegate(PrevStatus, NewStatus) end

function UCableCarControllerComp:OnRep_CableCarRunningStateChanged() end

function UCableCarControllerComp:OnRep_EntrancePlayersChanged() end

function UCableCarControllerComp:OnRep_InsidePlayersChanged() end
