---@meta

---@class FGameplayTask_EnableBuild_Data
---@field BuildingActorClass AActor
---@field bUseCustomizeBuildingData boolean
---@field CustomizeBuildingData FBuildingData
FGameplayTask_EnableBuild_Data = {}


---@class FServerBuildingBreakByPawnStateDelegate : ULuaMulticastDelegate
FServerBuildingBreakByPawnStateDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Actor: AActor, PawnState: EPawnState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FServerBuildingBreakByPawnStateDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Actor AActor
---@param PawnState EPawnState
function FServerBuildingBreakByPawnStateDelegate:Broadcast(Actor, PawnState) end


---@class FServerPlaceBuildActorDelegate : ULuaMulticastDelegate
FServerPlaceBuildActorDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Actor: AActor, PawnState: EPawnState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FServerPlaceBuildActorDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Actor AActor
---@param PawnState EPawnState
function FServerPlaceBuildActorDelegate:Broadcast(Actor, PawnState) end


---@class FServerBuildingBreakDelegate : ULuaSingleDelegate
FServerBuildingBreakDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FServerBuildingBreakDelegate:Bind(Callback, Obj) end

---执行委托
function FServerBuildingBreakDelegate:Execute() end


---@class UGameplayTask_EnableBuild: UUAEGameplayTask
---@field OnServerBuildingBreakByPawnState FServerBuildingBreakByPawnStateDelegate
---@field OnServerPlaceBuildActor FServerPlaceBuildActorDelegate
---@field OnServerBuildingBreak FServerBuildingBreakDelegate
---@field BuildingData FBuildingData
---@field BuildingViewType EBuildingViewType
local UGameplayTask_EnableBuild = {}

function UGameplayTask_EnableBuild:PlaceBuilding() end

function UGameplayTask_EnableBuild:StartBuilding() end

function UGameplayTask_EnableBuild:EndBuilding() end

---@param Actor AActor
function UGameplayTask_EnableBuild:ServerPlaceBuildActor(Actor) end

---@param State EPawnState
function UGameplayTask_EnableBuild:OwnerCharacterLeaveState(State) end

---@param InterruptState EPawnState
---@param InterruptBy EPawnState
function UGameplayTask_EnableBuild:OwnerCharacterInterruptedState(InterruptState, InterruptBy) end

---@param state FGameplayTag
function UGameplayTask_EnableBuild:OwnerCharacterLeaveDynamicState(state) end
