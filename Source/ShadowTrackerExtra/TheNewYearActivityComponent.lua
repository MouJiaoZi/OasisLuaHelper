---@meta

---@class ENewYearActivityEventType
---@field None number @无
---@field ReadyTime number @开始倒计时
---@field StartLight number @开始灯光
---@field StartQTE number @开始QTE
---@field EndQTE number @结束QTE
---@field StartDropItem number @开始送礼物
---@field EndDropItem number @结束送礼物
---@field StartSpawnActor number @开始生成Actor
---@field EndSpawnActor number @结束生成Actor
---@field GameEnd number @游戏结束
---@field LightGravityBegin number @开始轻重力
---@field LightGravityEnd number @结束轻重力
---@field TriggerRainBegin number @开始下雨
---@field TriggerCreatePiano number @创建钢琴蹦床
---@field TriggerPianoBegin number @开始钢琴蹦床
---@field TriggerPianoEnd number @结束钢琴蹦床
---@field Piano1 number @钢琴音符1
---@field Piano2 number @钢琴音符2
---@field Piano3 number @钢琴音符3
---@field Piano4 number @钢琴音符4
---@field Piano5 number @钢琴音符5
---@field Piano6 number @钢琴音符6
---@field TriggerAddPortalUI number @添加传送门UI
---@field TriggerPortalBegin number @创建传送门
---@field TriggerDanceBegin number @开始伴舞
---@field TriggerDanceEnd number @伴舞结束回到出生点
---@field TriggerSagmentSequenceStart number @子Sequence开始
---@field TriggerSagmentSequenceEnd number @子Sequence结束
---@field StartVideo number @开始视频
---@field WindTunnelFlyingBegin number @开始风洞飞行
---@field BalloonsBegin number @开始生成气球
---@field TriggerRainEnd number @结束下雨
---@field StartMusicGame number @开始音游
ENewYearActivityEventType = {}


---@class EStarTypeID
---@field HYL number @海芋恋
---@field WF number @王妃
---@field CommingHome number @CommingHome
---@field Moonlight number @Moonlight
---@field TMXH number @甜蜜信号
---@field YLDisco number @野狼Disco
EStarTypeID = {}


---@class FConcertTriggerEventData
---@field EventType ENewYearActivityEventType
---@field SequenceTime number
FConcertTriggerEventData = {}


---@class FStarActivityData
---@field StarButtonUIClass UUAEUserWidget
FStarActivityData = {}


---@class FTWindFlyingConfig
---@field FlyingTime number
---@field LaunchVelocityZMin number
---@field LaunchVelocityZMax number
---@field JoyStickSensitivity number
---@field UpDownDeltaTime number
---@field UpDownDeltaVelocityZ number
FTWindFlyingConfig = {}


---@class FComOnApplicationactivatedDelegate : ULuaMulticastDelegate
FComOnApplicationactivatedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsActive: boolean, InRequester: UTheNewYearActivityComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FComOnApplicationactivatedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsActive boolean
---@param InRequester UTheNewYearActivityComponent
function FComOnApplicationactivatedDelegate:Broadcast(bIsActive, InRequester) end


---@class FOnRequestAsyncSequenceDelegate : ULuaMulticastDelegate
FOnRequestAsyncSequenceDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InIndex: number, InRequester: UTheNewYearActivityComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRequestAsyncSequenceDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InIndex number
---@param InRequester UTheNewYearActivityComponent
function FOnRequestAsyncSequenceDelegate:Broadcast(InIndex, InRequester) end


---@class FOnSetSequenceTimeDelegate : ULuaMulticastDelegate
FOnSetSequenceTimeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurrentTime: number, InIndex: number, InEventList: ULuaArrayHelper<FConcertTriggerEventData>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSetSequenceTimeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurrentTime number
---@param InIndex number
---@param InEventList ULuaArrayHelper<FConcertTriggerEventData>
function FOnSetSequenceTimeDelegate:Broadcast(CurrentTime, InIndex, InEventList) end


---@class FOnSpawnActorDelegate : ULuaMulticastDelegate
FOnSpawnActorDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InRequester: UTheNewYearActivityComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSpawnActorDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InRequester UTheNewYearActivityComponent
function FOnSpawnActorDelegate:Broadcast(InRequester) end


---@class UTheNewYearActivityComponent: UActorComponent
---@field FallingVelocityZFactor number
---@field bWTFlyingStart boolean
---@field WTFlyingLaunchVelocityZ number
---@field bWTFlyingUp boolean
---@field WTFlyingUpDownVelocityZ number
---@field StarActivityData FStarActivityData
---@field ClientStarUIIndex number
---@field OnApplicationactivatedDelegate FComOnApplicationactivatedDelegate
---@field OnRequestAsyncSequenceDelegate FOnRequestAsyncSequenceDelegate
---@field OnSetSequenceTimeDelegate FOnSetSequenceTimeDelegate
---@field OnSpawnActorDelegate FOnSpawnActorDelegate
---@field OnEndQTEDelegate FOnSpawnActorDelegate
---@field OnEndStarDelegate FOnSpawnActorDelegate
local UTheNewYearActivityComponent = {}

---@param EventType ENewYearActivityEventType
function UTheNewYearActivityComponent:ReceiveNewYearActivityEvent(EventType) end

---@param EventType ENewYearActivityEventType
function UTheNewYearActivityComponent:PossessNewYearActivityEvent(EventType) end

---@param EventType ENewYearActivityEventType
function UTheNewYearActivityComponent:RPC_PossessNewYearActivityEvent(EventType) end

function UTheNewYearActivityComponent:RequestGameEnd() end

---@param TargetGravity number
---@param FlyTime number
---@param JoystickSensitivity number
---@param LaunchVelocity FVector
function UTheNewYearActivityComponent:ChangeCharacterGravity(TargetGravity, FlyTime, JoystickSensitivity, LaunchVelocity) end

---@param SubConfig FTWindFlyingConfig
function UTheNewYearActivityComponent:StartWTunnelFlying(SubConfig) end

---@param IsPickUp boolean
---@param ItemID number
function UTheNewYearActivityComponent:PickUpOrDropItem(IsPickUp, ItemID) end

function UTheNewYearActivityComponent:DropLastItem() end

---@param IsActive boolean
function UTheNewYearActivityComponent:OnApplicationactivated(IsActive) end

function UTheNewYearActivityComponent:ClientRequestAsyncSequence() end

---@param index number
function UTheNewYearActivityComponent:RequestAsyncSequence(index) end

---@param CurrentSequenceTime number
---@param Index number
---@param TriggerEventList ULuaArrayHelper<FConcertTriggerEventData>
function UTheNewYearActivityComponent:ClientAsyncSequence(CurrentSequenceTime, Index, TriggerEventList) end

---@param Reson string
function UTheNewYearActivityComponent:SendActivityResult(Reson) end

function UTheNewYearActivityComponent:ClientEndStarActivity() end

function UTheNewYearActivityComponent:SpawnStarActor() end

---@param Character AActor
function UTheNewYearActivityComponent:StopActorMontage(Character) end

---@param bIsCheck boolean
function UTheNewYearActivityComponent:ChangeHeightCheck(bIsCheck) end

function UTheNewYearActivityComponent:HideQTEUI() end

---@param TargetPosition FVector
function UTheNewYearActivityComponent:SetActorPositionWithoutCheck(TargetPosition) end

---@param IsEnable boolean
function UTheNewYearActivityComponent:EnableStandbyAnim(IsEnable) end

---@param time_offset number
function UTheNewYearActivityComponent:SendConcertStartEventToUI(time_offset) end

function UTheNewYearActivityComponent:OnRep_WTFlyingStart() end

function UTheNewYearActivityComponent:OnRep_WTFlyingLaunchVelocityZ() end

function UTheNewYearActivityComponent:OnRep_WTFlyingUpDown() end

---@param bFlying boolean
function UTheNewYearActivityComponent:SetWTFlyingUIMode(bFlying) end
