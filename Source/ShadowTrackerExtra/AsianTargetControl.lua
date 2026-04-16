---@meta

---@class FProportionDate
---@field Prop number
FProportionDate = {}


---@class FTargetSpawnerArray
---@field SpawnerArray ULuaArrayHelper<AAsianTargetSpawner>
FTargetSpawnerArray = {}


---@class FTargetSpawnerShuffle
---@field ShuffleArray ULuaArrayHelper<number>
FTargetSpawnerShuffle = {}


---@class FMoveBaseRandomConflg
---@field Prop number
FMoveBaseRandomConflg = {}


---@class FMoveBaseActorArray
---@field MoveBaseActorArray ULuaArrayHelper<AAsianMoveBase>
FMoveBaseActorArray = {}


---@class AAsianTargetControl: AUAERegionActor
---@field MoveBaseRandomConfig ULuaMapHelper<number, FMoveBaseRandomConflg>
---@field AllTargetSpawner ULuaArrayHelper<AAsianTargetSpawner>
---@field AllTargetSpawnerMap_Min ULuaMapHelper<number, FTargetSpawnerArray>
---@field AllTargetSpawnerMap_Max ULuaMapHelper<number, FTargetSpawnerArray>
---@field AllShuffleArrayMap ULuaMapHelper<number, FTargetSpawnerShuffle>
---@field ActiveCheckMap ULuaMapHelper<number, number>
---@field SpawnProp number
---@field AllSpawnProp ULuaMapHelper<number, FProportionDate>
---@field MoveBaseActorMap ULuaMapHelper<number, FMoveBaseActorArray>
local AAsianTargetControl = {}

function AAsianTargetControl:LogImportantInfo() end

---@param TeamID number
---@param OldID number
---@param NewID number
function AAsianTargetControl:UpdateActiveChechMap(TeamID, OldID, NewID) end

function AAsianTargetControl:NotifyBisActive() end

---@param Tag number
---@return number
function AAsianTargetControl:GetSpawnNum(Tag) end

---@param key number
---@return number
function AAsianTargetControl:GetPropInMoveBaseRandomConfig(key) end

function AAsianTargetControl:InitShuffleArrayMap() end

---@param AsianMoveBase AAsianMoveBase
function AAsianTargetControl:AddMoveBaseActorToMap(AsianMoveBase) end
