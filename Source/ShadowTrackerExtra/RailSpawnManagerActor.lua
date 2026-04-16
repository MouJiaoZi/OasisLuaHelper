---@meta

---@class FRailAIBuffParams
---@field BuffName string
---@field IsBossBuff boolean
---@field TipShowTime number
---@field Duration number
---@field DetailDescription string
---@field ShortDescription string
---@field IconPath string
---@field TargetDuringTime number
FRailAIBuffParams = {}


---@class USpawnManagerStrategy_Day: USpawnManagerStrategyBase
---@field bRecordSpawnTime boolean
---@field SchemeTableName string
---@field AttrTableName string
local USpawnManagerStrategy_Day = {}


---@class USpawnManagerStrategy_Night: USpawnManagerStrategy_Direct
---@field SchemeTableName string
---@field AttrTableName string
---@field RoundOffset number
local USpawnManagerStrategy_Night = {}


---@class ARailSpawnManagerActor: ASTSpawnManagerActor
---@field MonsterMaxSpawnNum ULuaMapHelper<number, number>
---@field BuffTime number
---@field BuffList ULuaArrayHelper<FRailAIBuffParams>
---@field ClientBuffTipList ULuaArrayHelper<FRailAIBuffParams>
---@field bInstance boolean
local ARailSpawnManagerActor = {}

---@param Buff FRailAIBuffParams
function ARailSpawnManagerActor:AddBuffToAllAI(Buff) end

---@param IsBoss boolean
function ARailSpawnManagerActor:GetCurAIBuff(IsBoss) end

---@param BuffParam FRailAIBuffParams
function ARailSpawnManagerActor:NotifyAddGlobalBuff(BuffParam) end

---@param BuffParam FRailAIBuffParams
function ARailSpawnManagerActor:Client_NotifyNewBuffList(BuffParam) end

---@param ID number
---@param Spawner ASTSpawnerBase
function ARailSpawnManagerActor:AddSpawnerToSpawnMap(ID, Spawner) end

---@param BuffParam FRailAIBuffParams
---@return number
function ARailSpawnManagerActor:GetBuffRemainTime(BuffParam) end

function ARailSpawnManagerActor:OnRep_TipBuffListChange() end

---@param SpawnActor ARailSpawnManagerActor
function ARailSpawnManagerActor:LuaReceiveNewBuffList(SpawnActor) end

---@param NewActive boolean
function ARailSpawnManagerActor:BPReceiveManagerActiveChange(NewActive) end

---@param BuffName string
---@return boolean
function ARailSpawnManagerActor:HasBuffUsed(BuffName) end

---@param BossBuffNames ULuaArrayHelper<string>
---@param NormalBuffNames ULuaArrayHelper<string>
---@param Weights ULuaArrayHelper<number>
---@return number
function ARailSpawnManagerActor:RandomAndAddBuff(BossBuffNames, NormalBuffNames, Weights) end
