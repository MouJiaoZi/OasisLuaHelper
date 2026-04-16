---@meta

---@class EAreaCleanupActorType
---@field PlayerCharacter number @玩家角色
---@field Vehicle number @载具
EAreaCleanupActorType = {}


---@class FOnDragFailed : ULuaMulticastDelegate
FOnDragFailed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ActorType: EAreaCleanupActorType, DraggedActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDragFailed:Add(Callback, Obj) end

---触发 Lua 广播
---@param ActorType EAreaCleanupActorType
---@param DraggedActor AActor
function FOnDragFailed:Broadcast(ActorType, DraggedActor) end


---@class FOnDragSuccess : ULuaMulticastDelegate
FOnDragSuccess = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ActorType: EAreaCleanupActorType, DraggedActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDragSuccess:Add(Callback, Obj) end

---触发 Lua 广播
---@param ActorType EAreaCleanupActorType
---@param DraggedActor AActor
function FOnDragSuccess:Broadcast(ActorType, DraggedActor) end


---@class UAreaCleanUpComponent: UActorComponent, ILuaInterface
---@field NeedCleanAreaSelector FActorComponentSelector
---@field bIsBlock boolean
---@field CleanupActorTypes ULuaSetHelper<EAreaCleanupActorType>
---@field OnDragFailed FOnDragFailed
---@field OnDragSuccess FOnDragSuccess
---@field TeleportCharacterPositionList ULuaArrayHelper<USceneComponent>
---@field TeleportVehiclePositionList ULuaArrayHelper<USceneComponent>
---@field bSetupInvinsibleWall boolean
---@field STExtraBaseCharacterClass ASTExtraBaseCharacter
---@field STExtraVehicleBaseClass ASTExtraVehicleBase
local UAreaCleanUpComponent = {}

function UAreaCleanUpComponent:StartDrag() end

function UAreaCleanUpComponent:StopDrag() end

---@param ActorType EAreaCleanupActorType
---@param PositionList ULuaArrayHelper<USceneComponent>
function UAreaCleanUpComponent:SetTeleportPositionList(ActorType, PositionList) end

---@return string
function UAreaCleanUpComponent:GetLuaModule() end

function UAreaCleanUpComponent:OnRep_SetupInvinsibleWall() end

function UAreaCleanUpComponent:InitNeedCleanAreaComponent() end
