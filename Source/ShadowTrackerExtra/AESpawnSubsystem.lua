---@meta

---@class FCustomSpawnPreCheckDelegate : ULuaSingleDelegate
FCustomSpawnPreCheckDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, CurAlive: number, CurTotal: number, RipedSpawner: ASTSpawnerBase) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomSpawnPreCheckDelegate:Bind(Callback, Obj) end

---执行委托
---@param CurAlive number
---@param CurTotal number
---@param RipedSpawner ASTSpawnerBase
function FCustomSpawnPreCheckDelegate:Execute(CurAlive, CurTotal, RipedSpawner) end


---@class FEscapeRandomEventDelegate : ULuaMulticastDelegate
FEscapeRandomEventDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EventID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEscapeRandomEventDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param EventID number
function FEscapeRandomEventDelegate:Broadcast(EventID) end


---@class UAESpawnSubsystem: USTSpawnSubsystem
---@field OnCustomSpawnPreCheck FCustomSpawnPreCheckDelegate @add more rules to control spawning.
---@field EscapeRandomEventDelegate FEscapeRandomEventDelegate @add more rules to control spawning.
---@field bPopQueAfterCustomPreCheckFailed number
---@field UnitsNumberThreshold ULuaMapHelper<EBotCategray, number>
local UAESpawnSubsystem = {}

---Spawners should be registered to subsystem.
---@param Spawner ASTSpawnerBase
function UAESpawnSubsystem:RegisterSpawner(Spawner) end

---Enqueueing data of spawning unit, wait to execute real spawning.
---@param SpawnParam FSTSpawnParam
---@param Spawner ASTSpawnerBase
function UAESpawnSubsystem:EnQueue(SpawnParam, Spawner) end

function UAESpawnSubsystem:CleanQueue() end

---@param InGameModeActor AGameModeActor
function UAESpawnSubsystem:MarkSpawnDataInvalid(InGameModeActor) end

---@param AIPawn APawn
---@param Configs ULuaArrayHelper<FUnitInitConfig>
function UAESpawnSubsystem:InitUnit(AIPawn, Configs) end

---@param EventID number
function UAESpawnSubsystem:ReceiveEscapeRandomEvent(EventID) end

---@param TagID number
---@param Difficulty number
---@param InNianAISpawnParamTableName string
---@return number
function UAESpawnSubsystem:GetAITotalNumByTag(TagID, Difficulty, InNianAISpawnParamTableName) end

---@param IgnoreTag string
---@param IsIgnore boolean
function UAESpawnSubsystem:KillAllMonster(IgnoreTag, IsIgnore) end

---@param InActor AActor
---@param IgnoreTag string
function UAESpawnSubsystem:KillAllMonsterInGameModeActor(InActor, IgnoreTag) end

function UAESpawnSubsystem:GetAllBossID() end

---@return boolean
function UAESpawnSubsystem:PreCheck() end

---return Config id of spawned unit.
---@param Unit AActor
---@return number
function UAESpawnSubsystem:GetUnitConfigID(Unit) end

---get total count of units split by category of spawners.
---@param Category EBotCategray
---@return number
function UAESpawnSubsystem:GetUnitsNumByCategory(Category) end

---@param Category EBotCategray
---@param Threshold number
function UAESpawnSubsystem:ModifyThreshold(Category, Threshold) end

---@param InGroupID number
function UAESpawnSubsystem:GetGroupedSpawners(InGroupID) end

function UAESpawnSubsystem:SendIDIPEvent() end
