---@meta

---@class FLevelNameAndTime
---@field LevelName string
---@field LevelChangeTimeInMS number
FLevelNameAndTime = {}


---Information about net startup actors that need to be rolled back by being destroyed and re-created
---@class FRollbackNetStartupActorInfo
FRollbackNetStartupActorInfo = {}


---@class FOnGotoTimeMCDelegate : ULuaSingleDelegate
FOnGotoTimeMCDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGotoTimeMCDelegate:Bind(Callback, Obj) end

---执行委托
function FOnGotoTimeMCDelegate:Execute() end


---@class FOnGotoTimeDelegate : ULuaSingleDelegate
FOnGotoTimeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGotoTimeDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
function FOnGotoTimeDelegate:Execute(Param1) end


---Simulated network driver for recording and playing back game sessions.
---@class UDemoNetDriver: UNetDriver
---@field RollbackNetStartupActors ULuaMapHelper<string, FRollbackNetStartupActorInfo> @Net startup actors that need to be rolled back during scrubbing by being destroyed and re-spawned NOTE - DeletedNetStartupActors will take precedence here, and destroy the actor instead
---@field CheckpointSaveMaxMSPerFrame number @Maximum time allowed each frame to spend on saving a checkpoint. If 0, it will save the checkpoint in a single frame, regardless of how long it takes. See also demo.CheckpointSaveMaxMSPerFrameOverride.
---@field bIsLocalReplay boolean
local UDemoNetDriver = {}
