---@meta

---@class EPossessMode
---@field EPM_ACTOR number @Actor模式
---@field EPM_COMP number @Comp模式
EPossessMode = {}


---@class FFakePossesserMultiplyChangeDelegate : ULuaMulticastDelegate
FFakePossesserMultiplyChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFakePossesserMultiplyChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
function FFakePossesserMultiplyChangeDelegate:Broadcast(PC) end


---@class FFakePossesserMultiplyReasonDelegate : ULuaMulticastDelegate
FFakePossesserMultiplyReasonDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController, Reason: EUnPossessReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFakePossesserMultiplyReasonDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
---@param Reason EUnPossessReason
function FFakePossesserMultiplyReasonDelegate:Broadcast(PC, Reason) end


---@class UActivityFakePossessMultiplyComponent: UActorComponent
---@field OnPossess FFakePossesserMultiplyChangeDelegate
---@field OnUnPossess FFakePossesserMultiplyChangeDelegate
---@field OnUnPossessWithReason FFakePossesserMultiplyReasonDelegate
---@field CurrentPossessHandleActor ULuaArrayHelper<AActor>
---@field PlayerKey2PossessActerCache ULuaMapHelper<number, AActor>
---@field CurrentPossessHandleComp ULuaArrayHelper<UActivityFakePossessComponent>
---@field DefaultObjectPool number
---@field PossessMode EPossessMode
---@field PossessHandleActorClass AActor
---@field bNeedAttachToOwner boolean
---@field PossessHandleCompClass UActivityFakePossessComponent
---@field CustomNetRelevantClass UCustomNetRelevantBase
local UActivityFakePossessMultiplyComponent = {}

---@param PC ASTExtraPlayerController
---@param SpecifyPossess UObject
---@return boolean
function UActivityFakePossessMultiplyComponent:FakePossess(PC, SpecifyPossess) end

---@param PC ASTExtraPlayerController
---@param Reason EUnPossessReason
function UActivityFakePossessMultiplyComponent:FakeUnPossess(PC, Reason) end

---@param Character ASTExtraBaseCharacter
---@param SpecifyPossess UObject
---@return boolean
function UActivityFakePossessMultiplyComponent:CanBePossess(Character, SpecifyPossess) end

---@param PC ASTExtraPlayerController
---@param AttachScene USceneComponent
---@param SocketName string
---@param bMulticastToClient boolean
---@param SpecifyPossess UObject
---@return boolean
function UActivityFakePossessMultiplyComponent:FakePossessWithAttach(PC, AttachScene, SocketName, bMulticastToClient, SpecifyPossess) end

---@param PC ASTExtraPlayerController
---@param Reason EUnPossessReason
function UActivityFakePossessMultiplyComponent:FakeUnPossessWithDettach(PC, Reason) end

---@param PossessActor AActor
function UActivityFakePossessMultiplyComponent:AddPossessActor(PossessActor) end

---@return boolean
function UActivityFakePossessMultiplyComponent:HasAuthority() end

---@param PC ASTExtraPlayerController
function UActivityFakePossessMultiplyComponent:ForwardOnPossess(PC) end

---@param PC ASTExtraPlayerController
function UActivityFakePossessMultiplyComponent:ForwardOnUnPossess(PC) end

---@param PC ASTExtraPlayerController
---@param Reason EUnPossessReason
function UActivityFakePossessMultiplyComponent:ForwardOnUnPossessWithReason(PC, Reason) end

function UActivityFakePossessMultiplyComponent:OnRep_CurrentPossessHandleActor() end

function UActivityFakePossessMultiplyComponent:OnRep_CurrentPossessHandleComp() end

---@param PossessComp UActivityFakePossessComponent
function UActivityFakePossessMultiplyComponent:BindForwardOnPossess(PossessComp) end

---@param PossessComp UActivityFakePossessComponent
function UActivityFakePossessMultiplyComponent:UnBindForwardOnPossess(PossessComp) end

---@param PossessComp UActivityFakePossessComponent
function UActivityFakePossessMultiplyComponent:AddPossessComp(PossessComp) end
