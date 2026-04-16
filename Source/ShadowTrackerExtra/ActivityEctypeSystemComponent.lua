---@meta

---@class EActivityEctypeQuitReason
---@field Normal number @正常结束
---@field Interrupt number @被打断
EActivityEctypeQuitReason = {}


---@class FFActivityStateEctypeRep
---@field Actor AActivityBaseActor
---@field RepInfo FActivityStateRep
---@field LocalRepInfo FActivityStateRep
---@field LocalActor AActivityBaseActor
FFActivityStateEctypeRep = {}


---@class FClearEctypeDataDelegate : ULuaMulticastDelegate
FClearEctypeDataDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClearEctypeDataDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
function FClearEctypeDataDelegate:Broadcast(PC) end


---@class UActivityEctypeData: URepViaPCNetAlienationData
---@field RepInfo FFActivityStateEctypeRep
---@field OnActivityActorChangeState FActivityChangeState
---@field ServeEnterSequenceTime number
---@field LocalRepInfo FFActivityStateEctypeRep
---@field Value FRegistPossessValue
---@field Master UActivityEctypeSystemComponent
---@field EctypePCs ULuaArrayHelper<ASTExtraPlayerController>
local UActivityEctypeData = {}

---@param PC ASTExtraPlayerController
---@return boolean
function UActivityEctypeData:IsRelativeFor(PC) end

function UActivityEctypeData:ReciveBeginPlay() end

function UActivityEctypeData:ReceiveEndPlay() end

function UActivityEctypeData:GetPC() end

---@return number
function UActivityEctypeData:GetTimeStamp() end

---@param PC ASTExtraPlayerController
function UActivityEctypeData:ReciveJoin(PC) end

---@param PC ASTExtraPlayerController
---@param Reason EActivityEctypeQuitReason
function UActivityEctypeData:ReciveQuit(PC, Reason) end

---@return string
function UActivityEctypeData:GetCurrentStateName() end

---@return number
function UActivityEctypeData:GetCurrentStateTime() end

---@param StateName string
---@param EnterTime number
---@param bPause boolean
function UActivityEctypeData:JumpToState(StateName, EnterTime, bPause) end

---@param PC ASTExtraPlayerController
function UActivityEctypeData:RestoreState(PC) end

function UActivityEctypeData:OnRep_CurrentActorStateIndex() end

function UActivityEctypeData:BP_PreDestroy() end

---@param StateInfo FActivityState
---@return number
function UActivityEctypeData:GetSequenceCostTimeByActivityState(StateInfo) end

---@param StateInfo FActivityState
---@return number
function UActivityEctypeData:GetPlayRateByActivityState(StateInfo) end


---@class UActivityEctypeSystemComponent: UActorComponent
---@field DataClass UActivityEctypeData
---@field MaxCount number
---@field ClearEctypeDataDelegate FClearEctypeDataDelegate
---@field EctypeDataMap ULuaMapHelper<ASTExtraPlayerController, UActivityEctypeData>
local UActivityEctypeSystemComponent = {}

---@param PC ASTExtraPlayerController
function UActivityEctypeSystemComponent:QuitEctype(PC) end

---@param PC ASTExtraPlayerController
---@return boolean
function UActivityEctypeSystemComponent:CanTriggerEctype(PC) end

---@param PC ASTExtraPlayerController
---@return boolean
function UActivityEctypeSystemComponent:IsInEctype(PC) end

function UActivityEctypeSystemComponent:GetEctypeDataMap() end

---@param PC AUAEPlayerController
function UActivityEctypeSystemComponent:OnSwitchingOut(PC) end
