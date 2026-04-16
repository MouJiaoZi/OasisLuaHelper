---@meta

---@class FOnPeerVisualFieldMetaUpdated : ULuaMulticastDelegate
FOnPeerVisualFieldMetaUpdated = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerUIDList: ULuaArrayHelper<string>, MinionIDList: ULuaArrayHelper<number>, MonsterIDList: ULuaArrayHelper<number>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPeerVisualFieldMetaUpdated:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerUIDList ULuaArrayHelper<string>
---@param MinionIDList ULuaArrayHelper<number>
---@param MonsterIDList ULuaArrayHelper<number>
function FOnPeerVisualFieldMetaUpdated:Broadcast(PlayerUIDList, MinionIDList, MonsterIDList) end


---@class UMobaVisualFieldFeature_Peer: UVisualFieldFeature_Peer
---@field MobaVisualFieldFrame FMobaVisualFieldFrame
---@field OnPeerVisualFieldMetaUpdated FOnPeerVisualFieldMetaUpdated
---@field HeroVisualDistance number
---@field MinionVisualDistance number
---@field MonsterVisualDistance number
---@field AllPlayers ULuaArrayHelper<ASTExtraBaseCharacter>
---@field AllMinions ULuaArrayHelper<AGenericCharacter>
---@field AllMonsters ULuaArrayHelper<ASTSpawnerBase>
local UMobaVisualFieldFeature_Peer = {}

---@param InGameState AActor
---@param InEndPlayReason EEndPlayReason
function UMobaVisualFieldFeature_Peer:OnGameStateEndPlay(InGameState, InEndPlayReason) end

---@param InPlayer ASTExtraBaseCharacter
function UMobaVisualFieldFeature_Peer:AddOnePlayer(InPlayer) end

---@param InActor AActor
---@param InEndPlayReason EEndPlayReason
function UMobaVisualFieldFeature_Peer:OnPlayerEndPlay(InActor, InEndPlayReason) end

---@param InMinion AGenericCharacter
function UMobaVisualFieldFeature_Peer:AddOneMinion(InMinion) end

---@param InActor AActor
---@param InEndPlayReason EEndPlayReason
function UMobaVisualFieldFeature_Peer:OnMinionEndPlay(InActor, InEndPlayReason) end

---@param InMonster ASTSpawnerBase
function UMobaVisualFieldFeature_Peer:AddOneMonster(InMonster) end

---@param InActor AActor
---@param InEndPlayReason EEndPlayReason
function UMobaVisualFieldFeature_Peer:OnMonsterEndPlay(InActor, InEndPlayReason) end

---@param InActor AActor
function UMobaVisualFieldFeature_Peer:OnActorBeginPlay(InActor) end

---@param Minion AActor
---@return number
function UMobaVisualFieldFeature_Peer:GetMinionWaveID(Minion) end
