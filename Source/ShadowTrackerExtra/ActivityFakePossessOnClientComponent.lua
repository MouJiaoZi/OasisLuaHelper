---@meta

---@class FFakePossesserChangeOnClientDelegate : ULuaMulticastDelegate
FFakePossesserChangeOnClientDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFakePossesserChangeOnClientDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
function FFakePossesserChangeOnClientDelegate:Broadcast(PC) end


---@class UActivityFakePossessOnClientComponent: UActorComponent, IFakePossessInterface
---@field OnPossess FFakePossesserChangeOnClientDelegate
---@field OnUnPossess FFakePossesserChangeOnClientDelegate
---@field OnUnPossessWithReason FFakeUnPossessDelegate
---@field DisablePawnState ULuaArrayHelper<EPawnState>
---@field RejectPawnState ULuaArrayHelper<EPawnState>
---@field ClearPawnState ULuaArrayHelper<EPossessClearState>
---@field CantPossessState ULuaArrayHelper<EPawnState>
---@field CantPossessDynamicState FGameplayTagContainer
---@field RejectDynamicState FGameplayTagContainer
---@field DetachSpareOffsetZ number
---@field bDettachSetMovementMode boolean
---@field bOnDettachedRecoverMovement boolean
local UActivityFakePossessOnClientComponent = {}

---@param PC ASTExtraPlayerController
---@return boolean
function UActivityFakePossessOnClientComponent:FakePossess(PC) end

---@param Reason EUnPossessReason
function UActivityFakePossessOnClientComponent:FakeUnPossess(Reason) end

---@param PC ASTExtraPlayerController
---@param AttachScene USceneComponent
---@param SocketName string
---@param bMulticastToClient boolean
---@return boolean
function UActivityFakePossessOnClientComponent:FakePossessWithAttach(PC, AttachScene, SocketName, bMulticastToClient) end

---@param Reason EUnPossessReason
function UActivityFakePossessOnClientComponent:FakeUnPossessWithDettach(Reason) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function UActivityFakePossessOnClientComponent:CanBePossess(Character) end

---@param Character ASTExtraBaseCharacter
function UActivityFakePossessOnClientComponent:SetCurrentPossessCharacter(Character) end

---@param Character ASTExtraBaseCharacter
---@param bRecover boolean
function UActivityFakePossessOnClientComponent:HandleClearState(Character, bRecover) end

---@param Tag FGameplayTag
function UActivityFakePossessOnClientComponent:OnEnterDynamicState(Tag) end
