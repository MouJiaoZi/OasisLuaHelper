---@meta

---@class FAIControllerCachedData
FAIControllerCachedData = {}


---人形AI基础类
---@class ABaseAIController: ABasicAIController, IGetCommonBackpackInterface
---@field CheckPeriod number
---@field RandomDeviation number
---@field ProtectCountdownTime number
---@field SpawnEquipDelayTime number
---@field SpawnEquipFreezeRadius number
---@field ProtectShootRadius FVector2D
---@field bUseDifficultyLevel boolean
---@field DifficultyTurnVelocityCfg ULuaMapHelper<number, number>
---@field DarkMaxAttackDistRange FVector2D
---@field WeatherToAttackDist ULuaMapHelper<EWeatherStatusType, EWeatherStatusType>
---@field bDestroyPlayerStateWhenPawnPendingDestroy boolean
---@field bMonsterAttackPlayerUseRatingDamageScale boolean
---@field bMonsterAttackPlayerAIUseRatingDamageScale boolean
---@field AIControllerCachedData FAIControllerCachedData
---@field CacheExtendTaskComp ULuaArrayHelper<UActorComponent>
local ABaseAIController = {}

---@param DefineID FItemDefineID
---@param OperationType EBattleItemOperationType
---@param Reason number
function ABaseAIController:OnItemOperation(DefineID, OperationType, Reason) end

---@param ItemID number
---@param ItemNum number
---@param bShootWeapon boolean
---@param AsyncDelayTime number
function ABaseAIController:AddItemAsync(ItemID, ItemNum, bShootWeapon, AsyncDelayTime) end

---子弹命中目标单位。目前用来处理超级AI命中玩家相关逻辑
---@param InHitActor AActor
---@param ImpactPosDistanceToWeapon number
---@param Player APawn
function ABaseAIController:OnBulletHit(InHitActor, ImpactPosDistanceToWeapon, Player) end

function ABaseAIController:Respawn() end

---@param Damage number
---@param VictimActor AActor
---@param DamageCauser AActor
---@return number
function ABaseAIController:ModifyDamage(Damage, VictimActor, DamageCauser) end

---@param InstigatorController AController
---@param InstigatorPawn APawn
function ABaseAIController:ReceiveAttacked(InstigatorController, InstigatorPawn) end

---ExtendTask Start *
---@param EventID number
---@param ObjList ULuaArrayHelper<UObject>
---@param StrList ULuaArrayHelper<string>
function ABaseAIController:OnReportExtendTaskEvent(EventID, ObjList, StrList) end
