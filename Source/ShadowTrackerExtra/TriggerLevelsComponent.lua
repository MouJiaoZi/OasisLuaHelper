---@meta

---@class ELevelLoadType
---@field ELevelLoadType_LoadByDistance number @距离加载
---@field ELevelLoadType_ClientNotLoad number @客户端不加载，DS同步
---@field ELevelLoadType_ClientAlwaysLoad number @客户端始终加载
---@field ELevelLoadType_WorldStreaming number @世界合成器管理
---@field ELevelLoadType_Auto number @自动
ELevelLoadType = {}


---@class ETriggerLevelLoadState
---@field Loading number
---@field Loaded number
---@field Unloading number
---@field Unloaded number
ETriggerLevelLoadState = {}


---@class FTriggerLevelConifgInfo
---@field bUseLevelIDValidation boolean
---@field LevelID number
---@field TriggerLevelName string
---@field LevelLoadType ELevelLoadType
---@field TriggerLevelDistance number
---@field bIsIgnoreZ boolean
---@field MaxIngoreZ number
---@field bRepInstanceParam boolean
---@field PropertyBlackList ULuaArrayHelper<string>
---@field PackageName string
---@field LevelBox FBox
FTriggerLevelConifgInfo = {}


---@class FTriggerLevelIndex
---@field LevelInfoIndex number
---@field ActionUID number
FTriggerLevelIndex = {}


---@class FTriggerLevelSyncInfo
---@field TriggerConfig FTriggerLevelConifgInfo
---@field LevelBox FBox
---@field PackageName string
---@field TriggerLevelIndex FTriggerLevelIndex
FTriggerLevelSyncInfo = {}


---@class FTriggerLevelNeedRepInfo
---@field LevelBox FBox
---@field PackageName string
---@field TriggerLevelIndex FTriggerLevelIndex
FTriggerLevelNeedRepInfo = {}


---@class FTriggerLevelStateInfo
---@field TriggerLevelID number
---@field SyncInfo FTriggerLevelSyncInfo
---@field LoadState ETriggerLevelLoadState
FTriggerLevelStateInfo = {}


---@class FOnDebugForCurTriggerLevelNameChange : ULuaSingleDelegate
FOnDebugForCurTriggerLevelNameChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDebugForCurTriggerLevelNameChange:Bind(Callback, Obj) end

---执行委托
function FOnDebugForCurTriggerLevelNameChange:Execute() end


---@class FOnTriggerLevelLoadDelegate : ULuaMulticastDelegate
FOnTriggerLevelLoadDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LevelName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTriggerLevelLoadDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param LevelName string
function FOnTriggerLevelLoadDelegate:Broadcast(LevelName) end


---@class FOnTriggerLevelUnloadDelegate : ULuaMulticastDelegate
FOnTriggerLevelUnloadDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LevelName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTriggerLevelUnloadDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param LevelName string
function FOnTriggerLevelUnloadDelegate:Broadcast(LevelName) end


---@class FOnTriggerLevelCompletedDelegate : ULuaMulticastDelegate
FOnTriggerLevelCompletedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LevelName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTriggerLevelCompletedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param LevelName string
function FOnTriggerLevelCompletedDelegate:Broadcast(LevelName) end


---@class FOnRepActiveTriggerLevelsDelegate : ULuaSingleDelegate
FOnRepActiveTriggerLevelsDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRepActiveTriggerLevelsDelegate:Bind(Callback, Obj) end

---执行委托
function FOnRepActiveTriggerLevelsDelegate:Execute() end


---@class UTriggerLevelsComponent: UActorComponent
---@field ActiveTriggerLevels ULuaArrayHelper<FTriggerLevelSyncInfo>
---@field TickInterval number
---@field ClientCheckDistance number
---@field LevelCheckWhiteList ULuaArrayHelper<string>
---@field LODOnlyLevelDirPaths ULuaArrayHelper<string>
---@field OnRepActiveTriggerCheckEnable boolean
---@field CheckTriggerLevelName ULuaArrayHelper<string>
---@field CheckTriggerLevelNum number
---@field ReactiveAppReportDelay number
---@field DebugForCurTriggerLevelName ULuaArrayHelper<string>
---@field DebugForCurTriggerLevelNameChange FOnDebugForCurTriggerLevelNameChange
---@field OnTriggerLevelLoadDelegate FOnTriggerLevelLoadDelegate
---@field OnTriggerLevelUnloadDelegate FOnTriggerLevelUnloadDelegate
---@field OnTriggerLevelCompletedDelegate FOnTriggerLevelCompletedDelegate
local UTriggerLevelsComponent = {}

---@param InClientWhiteList ULuaArrayHelper<string>
function UTriggerLevelsComponent:UpdateClientWhiteList(InClientWhiteList) end

---@param InClientBlackList ULuaArrayHelper<string>
function UTriggerLevelsComponent:UpdateClientBlackList(InClientBlackList) end

function UTriggerLevelsComponent:OnRep_ActiveTriggerLevels() end

---@param LevelName string
---@param LevelID number
function UTriggerLevelsComponent:LoadStreamLevel(LevelName, LevelID) end

---@param LevelName string
---@param LevelID number
function UTriggerLevelsComponent:UnloadStreamLevel(LevelName, LevelID) end

---@param Linkage number
function UTriggerLevelsComponent:OnLoadStreamLevelCompleted(Linkage) end

---@param Linkage number
function UTriggerLevelsComponent:OnUnLoadStreamLevelCompleted(Linkage) end

---@param TriggerLevelIndex FTriggerLevelIndex
---@return FTriggerLevelSyncInfo
function UTriggerLevelsComponent:GetTriggerLevelInfoByIndex(TriggerLevelIndex) end

function UTriggerLevelsComponent:CreateIntermediateTriggerLevels() end

---@param StateMachine UStateMachineComponent
---@param OldState EStateType
---@param NewState EStateType
function UTriggerLevelsComponent:OnBattleStateChanged(StateMachine, OldState, NewState) end

---@param StateName string
function UTriggerLevelsComponent:ClientCheckActiveTriggerLevel(StateName) end

function UTriggerLevelsComponent:BuildDebugCurTriggerLevelName() end

function UTriggerLevelsComponent:OnRep_DebugForCurTriggerLevelName() end
