---@meta

---@class UMobaVisualFieldFeature_AI: UVisualFieldFeature_AI
---@field MobaVisualFieldFrame FMobaVisualFieldFrame
---@field HeroVisualDistance number
---@field MinionVisualDistance number
---@field MonsterVisualDistance number
---@field HurtHeroVisibleDuration number
---@field AllPlayers ULuaArrayHelper<ASTExtraBaseCharacter>
---@field AllMinions ULuaArrayHelper<AGenericCharacter>
---@field AllMonsters ULuaArrayHelper<ASTSpawnerBase>
---@field HurtHeroTimerDelegates ULuaMapHelper<string, FTimerHandle>
local UMobaVisualFieldFeature_AI = {}

---@param PlayerController AController
---@param PlayerUIDList ULuaArrayHelper<string>
---@param MinionIDList ULuaArrayHelper<number>
---@param MonsterIDList ULuaArrayHelper<number>
---@return FMobaVisualFieldFrame
function UMobaVisualFieldFeature_AI:GenerateClientFrame(PlayerController, PlayerUIDList, MinionIDList, MonsterIDList) end

---@param InPlayer ASTExtraBaseCharacter
function UMobaVisualFieldFeature_AI:AddOnePlayer(InPlayer) end

---@param InActor AActor
---@param InEndPlayReason EEndPlayReason
function UMobaVisualFieldFeature_AI:OnPlayerEndPlay(InActor, InEndPlayReason) end

---@param InMinion AGenericCharacter
function UMobaVisualFieldFeature_AI:AddOneMinion(InMinion) end

---@param InActor AActor
---@param InEndPlayReason EEndPlayReason
function UMobaVisualFieldFeature_AI:OnMinionEndPlay(InActor, InEndPlayReason) end

---@param InMonster ASTSpawnerBase
function UMobaVisualFieldFeature_AI:AddOneMonster(InMonster) end

---@param InActor AActor
---@param InEndPlayReason EEndPlayReason
function UMobaVisualFieldFeature_AI:OnMonsterEndPlay(InActor, InEndPlayReason) end

---@param InActor AActor
function UMobaVisualFieldFeature_AI:OnActorBeginPlay(InActor) end

---@param Player ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function UMobaVisualFieldFeature_AI:OnPlayerTakeDamage(Player, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param PlayerUID string
function UMobaVisualFieldFeature_AI:TryClearPlayerHurtTimer(PlayerUID) end

---@param PlayerUID string
function UMobaVisualFieldFeature_AI:OnHurtPlayerTimerExpired(PlayerUID) end

---@param Minion AActor
---@return number
function UMobaVisualFieldFeature_AI:GetMinionWaveID(Minion) end
