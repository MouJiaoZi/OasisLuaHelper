---@meta

---@class FGameplayTaskSpawnActorDelegate : ULuaMulticastDelegate
FGameplayTaskSpawnActorDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SpawnedActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameplayTaskSpawnActorDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SpawnedActor AActor
function FGameplayTaskSpawnActorDelegate:Broadcast(SpawnedActor) end


---Convenience task for spawning actors (optionally limiting the spawning to the network authority). If not the net authority, we will not spawn and Success will not be called. The nice thing this adds is the ability to modify expose on spawn properties while also implicitly checking network role before spawning. Though this task doesn't do much - games can implement similar tasks that carry out game specific rules. For example a 'SpawnProjectile' task that limits the available classes to the games projectile class, and that does game specific stuff on spawn (for example, determining firing position from a weapon attachment). Long term we can also use this task as a sync point. If the executing client could wait execution until the server creates and replicates the actor down to him. We could potentially also use this to do predictive actor spawning / reconciliation.
---@class UGameplayTask_SpawnActor: UGameplayTask
---@field Success FGameplayTaskSpawnActorDelegate
---@field DidNotSpawn FGameplayTaskSpawnActorDelegate @Called when we can't spawn: on clients or potentially on server if they fail to spawn (rare)
---@field ClassToSpawn AActor
local UGameplayTask_SpawnActor = {}

---@param WorldContextObject UObject
---@param SpawnedActor AActor
---@return boolean
function UGameplayTask_SpawnActor:BeginSpawningActor(WorldContextObject, SpawnedActor) end

---@param WorldContextObject UObject
---@param SpawnedActor AActor
function UGameplayTask_SpawnActor:FinishSpawningActor(WorldContextObject, SpawnedActor) end
