---@meta

---@class FHLFakePossesserChangeDelegate : ULuaMulticastDelegate
FHLFakePossesserChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHLFakePossesserChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
function FHLFakePossesserChangeDelegate:Broadcast(PC) end


---@class FHLFakePossesserPawnChangeDelegate : ULuaMulticastDelegate
FHLFakePossesserPawnChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraBaseCharacter, IsPossess: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHLFakePossesserPawnChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraBaseCharacter
---@param IsPossess boolean
function FHLFakePossesserPawnChangeDelegate:Broadcast(PC, IsPossess) end


---@class UPCDelegateWrapper: UObject
---@field WeakPC ASTExtraPlayerController
local UPCDelegateWrapper = {}


---@class UHomelandFakePossessComponent: UActorComponent, IFakePossessInterface
---@field OnPossess FHLFakePossesserChangeDelegate
---@field OnUnPossess FHLFakePossesserChangeDelegate
---@field OnPossessPawnChange FHLFakePossesserPawnChangeDelegate
---@field OnUnPossessWithReason FFakeUnPossessDelegate
---@field bSetLocationToDettachScene boolean
---@field DetachSceneName string
---@field bDetachDoTrace boolean
---@field DetachSweepHight number
---@field DetachSpareOffsetZ number
---@field bDetachSetMovementMode boolean
---@field bOnDetachedRecoverMovement boolean
---@field IsAttachPossessMap ULuaMapHelper<ASTExtraPlayerController, boolean>
---@field PossessCharacters ULuaArrayHelper<ASTExtraBaseCharacter>
---@field ClientPossessCharactersCache ULuaArrayHelper<ASTExtraBaseCharacter>
---@field PossessMaxNum number
---@field IsReconnectReject boolean
---@field DisablePawnState ULuaArrayHelper<EPawnState>
---@field DisableDynamicPawnState FGameplayTagContainer
---@field RejectPawnState ULuaArrayHelper<EPawnState>
---@field RejectDynamicPawnState FGameplayTagContainer
---@field CantPossessState ULuaArrayHelper<EPawnState>
---@field CantPossessDynamicState FGameplayTagContainer
---@field ClearPawnState ULuaArrayHelper<EPossessClearState>
---@field RejectEvent ULuaArrayHelper<EPossessRejectEvent>
---@field SubInstanceSlotName string
---@field SubInstanceClass USubAnimInstanceBase_Activity
---@field bIsInitActionContainer boolean
---@field bHandleFakeUnPossessPCList ULuaArrayHelper<ASTExtraPlayerController>
---@field UPCDelegateWrappers ULuaArrayHelper<UPCDelegateWrapper>
local UHomelandFakePossessComponent = {}

function UHomelandFakePossessComponent:InitActionContainer() end

---@param PC ASTExtraPlayerController
function UHomelandFakePossessComponent:SwitchPossess(PC) end

---@param PC ASTExtraPlayerController
---@return boolean
function UHomelandFakePossessComponent:FakePossess(PC) end

---@param PC ASTExtraPlayerController
---@param Reason EUnPossessReason
function UHomelandFakePossessComponent:FakeUnPossess(PC, Reason) end

---@param PC ASTExtraPlayerController
---@param AttachScene USceneComponent
---@param SocketName string
---@param bMulticastToClient boolean
---@return boolean
function UHomelandFakePossessComponent:FakePossessWithAttach(PC, AttachScene, SocketName, bMulticastToClient) end

---@param PC ASTExtraPlayerController
---@param Reason EUnPossessReason
function UHomelandFakePossessComponent:FakeUnPossessWithDetach(PC, Reason) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function UHomelandFakePossessComponent:CanBePossess(Character) end

---@return boolean
function UHomelandFakePossessComponent:IsPossessFull() end

---@param Character ASTExtraBaseCharacter
---@return boolean
function UHomelandFakePossessComponent:IsPlayerInPossess(Character) end

---@param Character ASTExtraBaseCharacter
---@return number
function UHomelandFakePossessComponent:GetPlayerPossessIndex(Character) end

---@return number
function UHomelandFakePossessComponent:GetPossessCharacterNum() end

---@param ActionName string
---@param RPCToClient boolean
---@param Character ASTExtraBaseCharacter
---@return boolean
function UHomelandFakePossessComponent:ExecuteAction(ActionName, RPCToClient, Character) end

---@param ActionName string
---@param RPCToClient boolean
---@param Character ASTExtraBaseCharacter
function UHomelandFakePossessComponent:UndoAction(ActionName, RPCToClient, Character) end

---@param ConditionName string
---@param Character ASTExtraBaseCharacter
---@return boolean
function UHomelandFakePossessComponent:ExecuteCondition(ConditionName, Character) end

---@return boolean
function UHomelandFakePossessComponent:HasAuthority() end

---@param ActionNames ULuaArrayHelper<string>
---@param Character ASTExtraBaseCharacter
function UHomelandFakePossessComponent:ExecuteAction_DS(ActionNames, Character) end

---@param ActionNames ULuaArrayHelper<string>
---@param Character ASTExtraBaseCharacter
function UHomelandFakePossessComponent:UndoAction_DS(ActionNames, Character) end

---@param Character ASTExtraBaseCharacter
---@param IsRegister boolean
function UHomelandFakePossessComponent:HandleRegisterEvent(Character, IsRegister) end

---@param Char ASTExtraCharacter
---@param State EPawnState
function UHomelandFakePossessComponent:OnPawnStateEnter(Char, State) end

---@param Character ASTExtraBaseCharacter
function UHomelandFakePossessComponent:RequestReject(Character) end

function UHomelandFakePossessComponent:RequestRejectAll() end

---@param Character ASTExtraBaseCharacter
---@param bRecover boolean
function UHomelandFakePossessComponent:HandleClearState(Character, bRecover) end

---@param Char ASTExtraCharacter
---@param State FGameplayTag
function UHomelandFakePossessComponent:OnPawnDynamicStateEnter(Char, State) end

---@param PlayerKey number
---@param Reason string
function UHomelandFakePossessComponent:OnGameEnd(PlayerKey, Reason) end

---@param Actor AActor
function UHomelandFakePossessComponent:OnDestroyPawn(Actor) end

---@param PC ASTExtraPlayerController
function UHomelandFakePossessComponent:OnClientInteractive(PC) end

---@param PC ASTExtraPlayerController
function UHomelandFakePossessComponent:RejectPossess(PC) end

---@param Character ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function UHomelandFakePossessComponent:OnHit(Character, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param PC ASTExtraPlayerController
function UHomelandFakePossessComponent:OnLostPawn(PC) end

---@param PC ASTExtraPlayerController
function UHomelandFakePossessComponent:OnExitPawn(PC) end

---@param PC ASTExtraPlayerController
function UHomelandFakePossessComponent:RemoveDelegateWrapper(PC) end

function UHomelandFakePossessComponent:OnRep_Possessers() end

---@param ActionName string
---@param Character ASTExtraBaseCharacter
---@param UnDo boolean
function UHomelandFakePossessComponent:Client_ExecuteAction(ActionName, Character, UnDo) end

---@param PC AUAEPlayerController
function UHomelandFakePossessComponent:OnPlayerStateChange(PC) end

function UHomelandFakePossessComponent:OnPlayerReconnected() end
