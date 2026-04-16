---@meta

---@class FRemoteControlStateChangedDelegate : ULuaMulticastDelegate
FRemoteControlStateChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InRemoteControlState: ESTRemoteControlState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRemoteControlStateChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InRemoteControlState ESTRemoteControlState
function FRemoteControlStateChangedDelegate:Broadcast(InRemoteControlState) end


---@class FRemoteControlHPFuelChangedDelegate : ULuaMulticastDelegate
FRemoteControlHPFuelChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HP: number, Fuel: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRemoteControlHPFuelChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HP number
---@param Fuel number
function FRemoteControlHPFuelChangedDelegate:Broadcast(HP, Fuel) end


---@class FEnterRemoteControlEvent : ULuaMulticastDelegate
FEnterRemoteControlEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsSucc: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEnterRemoteControlEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsSucc boolean
function FEnterRemoteControlEvent:Broadcast(IsSucc) end


---@class FOverMaxOperateDistance : ULuaMulticastDelegate
FOverMaxOperateDistance = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Dis: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOverMaxOperateDistance:Add(Callback, Obj) end

---触发 Lua 广播
---@param Dis number
function FOverMaxOperateDistance:Broadcast(Dis) end


---@class FRemoteControlReconnect : ULuaSingleDelegate
FRemoteControlReconnect = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRemoteControlReconnect:Bind(Callback, Obj) end

---执行委托
function FRemoteControlReconnect:Execute() end


---@class FOnEnterRemoteControlClient : ULuaSingleDelegate
FOnEnterRemoteControlClient = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEnterRemoteControlClient:Bind(Callback, Obj) end

---执行委托
function FOnEnterRemoteControlClient:Execute() end


---@class FOnRemoteControlPause : ULuaSingleDelegate
FOnRemoteControlPause = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRemoteControlPause:Bind(Callback, Obj) end

---执行委托
function FOnRemoteControlPause:Execute() end


---@class FOnRemoteControlRecall : ULuaSingleDelegate
FOnRemoteControlRecall = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRemoteControlRecall:Bind(Callback, Obj) end

---执行委托
function FOnRemoteControlRecall:Execute() end


---@class FOnRemoteControlReconnect : ULuaSingleDelegate
FOnRemoteControlReconnect = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRemoteControlReconnect:Bind(Callback, Obj) end

---执行委托
function FOnRemoteControlReconnect:Execute() end


---@class FOnRemoteControlCharAnimStateDiff : ULuaSingleDelegate
FOnRemoteControlCharAnimStateDiff = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRemoteControlCharAnimStateDiff:Bind(Callback, Obj) end

---执行委托
function FOnRemoteControlCharAnimStateDiff:Execute() end


---@class FOnSpawnedFromBackPack : ULuaSingleDelegate
FOnSpawnedFromBackPack = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSpawnedFromBackPack:Bind(Callback, Obj) end

---执行委托
function FOnSpawnedFromBackPack:Execute() end


---@class FOnRepCharacter : ULuaSingleDelegate
FOnRepCharacter = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRepCharacter:Bind(Callback, Obj) end

---执行委托
function FOnRepCharacter:Execute() end


---@class FRefreshCharacterAnim : ULuaSingleDelegate
FRefreshCharacterAnim = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRefreshCharacterAnim:Bind(Callback, Obj) end

---执行委托
function FRefreshCharacterAnim:Execute() end


---通用的遥控组件 现在遥控的相关功能 把遥控逻辑抽象出来 同时方便 做一些通过的逻辑 比如 声音提示 地图显示相关功能
---@class URemoteControlComponent: UActorComponent
---@field bSpawnedFromBackPack boolean
---@field OnSpawnedFromBackPack FOnSpawnedFromBackPack
---@field OnRepCharacterEvent FOnRepCharacter
---@field OnRefreshCharacterAnimEvent FRefreshCharacterAnim
---@field HPFuelChangedDelegate FRemoteControlHPFuelChangedDelegate
---@field DistanceToPlayer number
---@field ShutdownNeedDestroy boolean
---@field CanControlInVehicle boolean
---@field bSendClientOkMsg boolean
---@field RemoteControlState ESTRemoteControlState
---@field LastRemoteControlState ESTRemoteControlState
---@field CharacterAnimState ESTRemoteControlState
---@field RemoteControlStateChanged FRemoteControlStateChangedDelegate
---@field RemoteControlReconnect FRemoteControlReconnect
---@field OnEnterRemoteControlClient FOnEnterRemoteControlClient
---@field OnRemoteControlPause FOnRemoteControlPause
---@field OnRemoteControlRecall FOnRemoteControlRecall
---@field OnRemoteControlReconnect FOnRemoteControlReconnect
---@field CurRemoteControlType ESTRemoteControlPawnType
---@field CoolDownTimeSpeed number
---@field CoolDownTimeMin number
---@field MaxOperateDistanceToPlayer number
---@field MaxOperateFalloffDistance number
---@field LowFuelWarning number
---@field SkillRecallingTime number
---@field SkillDisappearingTime number
---@field SkillDestoryTime number
---@field RemoteControlDyingTime number
---@field DestoryPawnTipID number
---@field MaxRecallTime number
---@field SkillRecallingTimerRemain number
---@field MaxCameraFOV number
---@field MinCameraFOV number
---@field UAVFPPCameraFovPercent number
---@field OnEnterRemoteControl FEnterRemoteControlEvent
---@field OnOverMaxOperateDistance FOverMaxOperateDistance
---@field DriverAttachmentDataList ULuaArrayHelper<FDriverAttachmentData>
---@field OnCharAnimStateDiff FOnRemoteControlCharAnimStateDiff
---@field CantUseRemoteControlTips number
---@field NeedForceSetViewTarget boolean
---@field CantIgnoreDamageTypeArr ULuaArrayHelper<EDamageType>
local URemoteControlComponent = {}

---@param NewValue boolean
function URemoteControlComponent:SetSpawnedFromBackPack(NewValue) end

function URemoteControlComponent:OnRep_SpawnedFromBackPack() end

---@param PC ASTExtraPlayerController
---@return boolean
function URemoteControlComponent:ServerControl(PC) end

---@param PC ASTExtraPlayerController
---@return boolean
function URemoteControlComponent:ServerPause(PC) end

---@param PC ASTExtraPlayerController
---@return boolean
function URemoteControlComponent:ServerRecall(PC) end

function URemoteControlComponent:ServerShutDown() end

---@param NewValue ASTExtraBaseCharacter
function URemoteControlComponent:SetCurCharacter(NewValue) end

function URemoteControlComponent:OnRep_Character() end

---@param PlayerCharacter ASTExtraBaseCharacter
function URemoteControlComponent:RefreshCharacterAnim(PlayerCharacter) end

---@param BindingHandle UBattleItemHandleBase
function URemoteControlComponent:RegisterItemHandle(BindingHandle) end

---@return number
function URemoteControlComponent:GetDisToPlayer() end

function URemoteControlComponent:SendClientOkToServer() end

---@param NewState ESTRemoteControlState
function URemoteControlComponent:SetRemoteControlState(NewState) end

---@param PC ASTExtraPlayerController
function URemoteControlComponent:HandleRemoteControlReconnect(PC) end

---@param Reason string
function URemoteControlComponent:ForceExit(Reason) end

function URemoteControlComponent:OnRep_RemoteControlState() end

function URemoteControlComponent:OnStateChangeEvent() end

---@param NewValue number
function URemoteControlComponent:SetMaxRecallTime(NewValue) end

---@param NewValue number
function URemoteControlComponent:SetSkillRecallingTimerRemain(NewValue) end

---@param factor number
function URemoteControlComponent:SetFPPCameraFov(factor) end

---@param factor number
function URemoteControlComponent:SetFPPCameraFovEvent(factor) end

---@param NewValue number
function URemoteControlComponent:SetUAVFPPCameraFovPercent(NewValue) end

---@param percent number
function URemoteControlComponent:SendToServerUAVFPPCameraFovPercent(percent) end

function URemoteControlComponent:OnRep_FPPCameraFovChanged() end

---@return boolean
function URemoteControlComponent:CanUseRemmoteControl() end

---@param InDriver ACharacter
---@param EnableAttach boolean
---@param InAttachmentDataName string
---@param IngoreDelay boolean
function URemoteControlComponent:SetDriverAttachement(InDriver, EnableAttach, InAttachmentDataName, IngoreDelay) end

function URemoteControlComponent:DriverAttachementLoadFinish() end

function URemoteControlComponent:OnRecycled() end

function URemoteControlComponent:TickCharacterAnimState() end
