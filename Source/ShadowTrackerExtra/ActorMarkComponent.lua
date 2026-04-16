---@meta

---@class FOnCreateMapMark : ULuaMulticastDelegate
FOnCreateMapMark = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCreateMapMark:Add(Callback, Obj) end

---触发 Lua 广播
---@param InstanceID number
function FOnCreateMapMark:Broadcast(InstanceID) end


---@class UActorMarkComponent: UActorComponent, IObjectPoolInterface
---@field bObjectPoolEnabled boolean
---@field bMarkFromDS boolean
---@field MarkTemplateID number
---@field SyncRange EMarkDispatchRange
---@field bCreateMarkFromBeginPlay boolean
---@field bTickable boolean
---@field bTickUpdateLocation boolean
---@field bTickUpdateRotation boolean
---@field UpdateLocationIntervalSec number
---@field bEnablePlayerStateControl boolean
---@field bUseDefaultCustomEvent boolean
---@field DefaultCustomEventCreateTime number
---@field DefaultCustomEventCustomState number
---@field DefaultCustomEventCustomString string
---@field DefaultCustomEventInWhichMap EAddMarkFlag
---@field PawnStatesForNotification ULuaArrayHelper<EPawnState>
---@field PawnStatesForHidden ULuaArrayHelper<EPawnState>
---@field MapMarkInstanceID number
---@field OnCreateMapMark FOnCreateMapMark
---@field SceneMarkInstanceID number
---@field bCreateSceneMarkFromBeginPlay boolean
---@field SceneMarkInfo FObjectPosUIInfo
---@field SceneMarkTimerHandle FTimerHandle
---@field OwnerPlayerStateRef ASTExtraPlayerState
---@field CustomEventData FCustomMarkEventData
---@field bRegisterReplayEvents boolean
---@field TeamID number
local UActorMarkComponent = {}

function UActorMarkComponent:InitTickable() end

---@param NewState EPawnState
function UActorMarkComponent:OnOwnerPawnStateChanged(NewState) end

---@param bHidden boolean
---@param State number
---@param CustomString string
function UActorMarkComponent:NodifyCustomEvent(bHidden, State, CustomString) end

---@param PlayerStateRef ASTExtraPlayerState
function UActorMarkComponent:SetRefPlayerState(PlayerStateRef) end

---@param State number
---@param CustomString string
function UActorMarkComponent:CreateMark(State, CustomString) end

function UActorMarkComponent:RemoveMark() end

function UActorMarkComponent:CreateSceneMark() end

function UActorMarkComponent:RemoveSceneMark() end

---@param Visible boolean
function UActorMarkComponent:SetVisibility(Visible) end

function UActorMarkComponent:OnSceneMarkMgrCreated() end

function UActorMarkComponent:OnSceneMarkTimeout() end

function UActorMarkComponent:RegisterReplayEvents() end

function UActorMarkComponent:UnregisterReplayEvents() end

function UActorMarkComponent:OnObjPosUIMgrCreatedInReplay() end
