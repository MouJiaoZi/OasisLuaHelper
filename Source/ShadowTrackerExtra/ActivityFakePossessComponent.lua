---@meta

---@class FFakeCurrentPossesserChangeDelegate : ULuaMulticastDelegate
FFakeCurrentPossesserChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BS: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFakeCurrentPossesserChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BS ASTExtraBaseCharacter
function FFakeCurrentPossesserChangeDelegate:Broadcast(BS) end


---@class FPreUnPossesseDelegate : ULuaMulticastDelegate
FPreUnPossesseDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BS: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPreUnPossesseDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BS ASTExtraBaseCharacter
function FPreUnPossesseDelegate:Broadcast(BS) end


---能够将这个Actor的控制权传递给玩家的组件
---@class UActivityFakePossessComponent: UActorComponent, IFakePossessInterface
---@field PreUnPossess FPreUnPossesseDelegate
---@field OnPossess FFakePossesserChangeDelegate @获取控制权事件事件委托 @param PC 获取到这个Actor控制权的PC
---@field OnUnPossess FFakePossesserChangeDelegate @解除控制权事件委托 @param PC 解除这个Actor控制权的PC
---@field OnUnPossessWithReason FFakeUnPossessDelegate @解除控制权事件委托 @param PC 解除这个Actor控制权的PC @param Reason 解除控制权的原因
---@field OnPossessIncludingAI FFakePossesseIncludingAIDelegate
---@field OnUnPossessIncludingAI FFakeUnPossessIncludingAIDelegate
---@field OnRepCurrentPossesser FFakeCurrentPossesserChangeDelegate
---@field DetachSpareOffsetZ number
---@field Iterations number
---@field bDettachSetMovementMode boolean
---@field bOnDettachedRecoverMovement boolean
---@field DisablePawnState ULuaArrayHelper<EPawnState>
---@field DisableDynamicPawnState ULuaArrayHelper<FGameplayTag>
---@field RejectPawnState ULuaArrayHelper<EPawnState>
---@field RejectDynamicPawnState ULuaArrayHelper<FGameplayTag>
---@field ClearPawnState ULuaArrayHelper<EPossessClearState>
---@field CantPossessState ULuaArrayHelper<EPawnState>
---@field CantPossessDynamicState ULuaArrayHelper<FGameplayTag>
---@field RejectEvent ULuaArrayHelper<EPossessRejectEvent>
---@field bSetOwnerToPC boolean
---@field bOpenAfterResult boolean
---@field SubInstanceSlotName string
---@field SubInstanceClass USubAnimInstanceBase_Activity
---@field bIsInitActionContainer boolean
local UActivityFakePossessComponent = {}

function UActivityFakePossessComponent:InitFakePossessContainer() end

function UActivityFakePossessComponent:InitActionContainer() end

---生效范围：S
---让一个PlayerController控制这个Actor
---@param PC AController @获得控制权的PlayerController
---@return boolean
function UActivityFakePossessComponent:FakePossess(PC) end

---生效范围：S
---解除这个Actor上的PC的控制权
---@param Reason EUnPossessReason @解除控制权的原因
function UActivityFakePossessComponent:FakeUnPossess(Reason) end

---生效范围：S
---让一个PlayerController控制这个Actor，并将当前控制的角色Attach到这个Actor上
---@param PC AController @获得控制权的PlayerController
---@param AttachScene USceneComponent @Attach到的组件
---@param SocketName string @Attach到的Socket
---@param bMulticastToClient boolean
---@return boolean
function UActivityFakePossessComponent:FakePossessWithAttach(PC, AttachScene, SocketName, bMulticastToClient) end

---生效范围：S
---解除这个Actor上的PC的控制权，并将角色从这个Actor上Detach
---@param Reason EUnPossessReason @解除控制权的原因
function UActivityFakePossessComponent:FakeUnPossessWithDettach(Reason) end

---@param Setup boolean
function UActivityFakePossessComponent:SetDoNotSwitchWeaponWhenRecover(Setup) end

---生效范围：S
---获取是否可以由这个Character控制当前Actor
---@param Character ASTExtraBaseCharacter @要检查的Character
---@return boolean
function UActivityFakePossessComponent:CanBePossess(Character) end

---@param ActionName string
---@param RPCToClient boolean
---@return boolean
function UActivityFakePossessComponent:ExecuteAction(ActionName, RPCToClient) end

---@param ActionName string
---@param RPCToClient boolean
function UActivityFakePossessComponent:UndoAction(ActionName, RPCToClient) end

---@param ConditionName string
---@return boolean
function UActivityFakePossessComponent:ExecuteCondition(ConditionName) end

---@return boolean
function UActivityFakePossessComponent:HasAuthority() end

---@param ActionNames ULuaArrayHelper<string>
function UActivityFakePossessComponent:ExecuteAction_DS(ActionNames) end

---@param ActionNames ULuaArrayHelper<string>
function UActivityFakePossessComponent:UndoAction_DS(ActionNames) end

---@param Character ASTExtraBaseCharacter
function UActivityFakePossessComponent:RequestReject(Character) end

---@param PrePossesser ASTExtraBaseCharacter
function UActivityFakePossessComponent:OnRep_Possesser(PrePossesser) end

---@param ActionName string
---@param Character ASTExtraBaseCharacter
---@param UnDo boolean
function UActivityFakePossessComponent:Client_ExcuteAction(ActionName, Character, UnDo) end

---@param PC AController
function UActivityFakePossessComponent:OnPossessAction(PC) end

---@param Reason EUnPossessReason
function UActivityFakePossessComponent:OnUnpossessAction(Reason) end

---@param Reason EUnPossessReason
function UActivityFakePossessComponent:OnPossessDetach(Reason) end
