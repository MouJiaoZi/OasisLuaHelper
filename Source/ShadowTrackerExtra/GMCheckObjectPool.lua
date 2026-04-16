---@meta

---@class UGMCheckObjectPool: UGMCheatObjBase
---@field WaitingForGC boolean
---@field QueryTimeCounter number
---@field Switch_SpawnActorNetGUIDAndObject ULuaMapHelper<number, number>
---@field Keep_SpawnActorNetGUIDAndObject ULuaMapHelper<number, number>
---@field QueryTime number
---@field QueryTimeUpdateOnce number
---@field QueryPlayerList ULuaArrayHelper<AActor>
---@field PendingGCCharacters ULuaArrayHelper<ASTExtraBaseCharacter>
---@field PendingReadyCharacters ULuaArrayHelper<ASTExtraBaseCharacter>
---@field ReadyCharacters ULuaArrayHelper<ASTExtraBaseCharacter>
local UGMCheckObjectPool = {}

function UGMCheckObjectPool:RecycleSimulatePawn() end

---@param NetGUIDs ULuaArrayHelper<number>
function UGMCheckObjectPool:RecycleSimulatePawn_Server(NetGUIDs) end

function UGMCheckObjectPool:RespawnSimulatePawn() end

---@param NetGUIDs ULuaArrayHelper<number>
function UGMCheckObjectPool:RespawnSimulatePawn_Server(NetGUIDs) end

function UGMCheckObjectPool:SwitchRecycledSimulatePawn() end

function UGMCheckObjectPool:KeepRecycledSimulatePawn() end

function UGMCheckObjectPool:RecycleAutonomousPawn() end

function UGMCheckObjectPool:RecycleAutonomousPawn_Server() end

function UGMCheckObjectPool:RespawnAutonomousPawn() end

function UGMCheckObjectPool:RespawnAutonomousPawn_Server() end

---@param InActor AActor
---@param bToPersistentPool boolean
function UGMCheckObjectPool:OnCharacterRecycled(InActor, bToPersistentPool) end
