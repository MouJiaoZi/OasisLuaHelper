---@meta

---@class EBotCategray
---@field BotCategory_First number
---@field BotCategory_Monster number
---@field BotCategory_Decorator number
---@field BotCategory_NormalActor number
---@field BotCategory_Vehicle number
---@field BotCategory_PickUpWrapper number
---@field BotCategory_FakePlayer number
---@field BotCategory_NPC number
---@field BotCategory_Animal number
---@field BotCategory_AIPlayer number
---@field BotCategory_All number
EBotCategray = {}


---@class FOnUnitTakeDamageDelegate : ULuaMulticastDelegate
FOnUnitTakeDamageDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Damage: number, DamageEvent: FDamageEvent, Victim: AActor, Causer: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUnitTakeDamageDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Damage number
---@param DamageEvent FDamageEvent
---@param Victim AActor
---@param Causer AActor
function FOnUnitTakeDamageDelegate:Broadcast(Damage, DamageEvent, Victim, Causer) end


---生成系统：生成器(E玩法）
---@class AAESpawner: ASTSpawnerBase
---@field OnUnitTakeDamage FOnUnitTakeDamageDelegate
---@field bUseSphereCollisionTrigger boolean
---@field bEnableTeamAI number
---@field TeamAIClasses ULuaArrayHelper<UActorComponent> @list of team-ai component classes
---@field SpawnerTeamID number
---@field SpeciesCategory EBotCategray
---@field SpawnerCampItemID number
---@field GroupID number
---@field BossTag string
---@field bFastRefillAI boolean
---@field bAllowEmptySpotUnitConfig boolean
---@field TeamAIComponents ULuaArrayHelper<UActorComponent>
local AAESpawner = {}

function AAESpawner:ActivateSpawner() end

function AAESpawner:DeactivateSpawner() end

---@param NewUnit AActor
---@param SpawnParam FSTSpawnParam
---@param Spawner ASTSpawnerBase
function AAESpawner:OnUnitSpawned(NewUnit, SpawnParam, Spawner) end

---难度区分, 可以根据当前对局的模式/难度 来进行选择不同的属性ID
---@param ConfigID number
---@param BaseParamID number
---@param SpawnParam FSTSpawnParam
---@return number
function AAESpawner:GenerateParamID(ConfigID, BaseParamID, SpawnParam) end

---@param NewUnit AActor
function AAESpawner:AddExistingPawn(NewUnit) end

function AAESpawner:BPAfterActivateSpawner() end

function AAESpawner:BPGetWayPointList() end

---Callback from 'SpawnTiming', which would tell spawner whether it is time to spawn.
---@param IsRipe boolean
function AAESpawner:OnSpawnTimingRipe(IsRipe) end

---@param DeadCharacter ASTExtraSimpleCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageType UDamageType
function AAESpawner:OnOwnedMobDead(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageType) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param Victim AActor
---@param Causer AActor
function AAESpawner:OnUnitTakeDamageEvent(Damage, DamageEvent, Victim, Causer) end
