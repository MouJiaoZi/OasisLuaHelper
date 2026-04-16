---@meta

---@class FCrawlData
---@field CrawlFlag boolean
---@field TempTime number
FCrawlData = {}


---@class FMutualAidData
---@field RescuedPlayer ULuaArrayHelper<number>
---@field RescuedNum ULuaArrayHelper<number>
FMutualAidData = {}


---@class UEmotionalMemoryComponent: UGameModeBaseComponent
---@field TerminatorAreaID number
---@field MutualAid ULuaMapHelper<number, FMutualAidData>
---@field CrawlData ULuaMapHelper<number, FCrawlData>
local UEmotionalMemoryComponent = {}

---@param SavorKey number
---@param RescuerKey number
function UEmotionalMemoryComponent:AddRescuedPlayerUID(SavorKey, RescuerKey) end

---@param PlayerKey number
function UEmotionalMemoryComponent:AddParachutePlayerUID(PlayerKey) end

---@param PlayerKey number
---@param MsgID number
function UEmotionalMemoryComponent:AddVoiceType(PlayerKey, MsgID) end

---@param PlayerKey number
---@param Damage number
function UEmotionalMemoryComponent:CalculateTotalDamage(PlayerKey, Damage) end

---@param PlayerKey number
function UEmotionalMemoryComponent:CalculateKillNum(PlayerKey) end

---@param PlayerKey number
---@param NewPoseState number
---@param bIsGameEnd boolean
function UEmotionalMemoryComponent:CalculateProneAndCrawlTime(PlayerKey, NewPoseState, bIsGameEnd) end

---@param PlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function UEmotionalMemoryComponent:AddDeathType(PlayerKey, KillerKey, bIsAI) end

---@param PlayerKey number
---@param VehicleID number
function UEmotionalMemoryComponent:AddDestroyedVehicleType(PlayerKey, VehicleID) end

---@param PlayerKey number
---@param KillDistance number
function UEmotionalMemoryComponent:CalculateKillDistance(PlayerKey, KillDistance) end

---@param PlayerKey number
---@param InjuredKey number
---@param TreatmentAmount number
function UEmotionalMemoryComponent:CalculateTreatmentAmount(PlayerKey, InjuredKey, TreatmentAmount) end

---@param PlayerKey number
---@param KillType number
function UEmotionalMemoryComponent:CalculateKillType(PlayerKey, KillType) end

---@param PlayerKey number
function UEmotionalMemoryComponent:CalculateKnockDownTimes(PlayerKey) end

---@param PlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function UEmotionalMemoryComponent:CalculateRemainPlayer(PlayerKey, KillerKey, bIsAI) end

---@param PlayerKey number
---@param ObjectID number
---@param Num number
function UEmotionalMemoryComponent:AddDestroyedObject(PlayerKey, ObjectID, Num) end

---@param SavorKey number
---@param RescuerKey number
function UEmotionalMemoryComponent:CalculateMutualAid(SavorKey, RescuerKey) end

---@param PlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function UEmotionalMemoryComponent:RecordMutualAid(PlayerKey, KillerKey, bIsAI) end

---@param PlayerKey number
function UEmotionalMemoryComponent:AddWinnerTeammates(PlayerKey) end

---@param SavorKey number
---@param RescuedKey number
function UEmotionalMemoryComponent:RecordWhoRescuedMe(SavorKey, RescuedKey) end

---@param PlayerKey number
---@return number
function UEmotionalMemoryComponent:GetAreaID(PlayerKey) end

---@param PlayerKey number
---@param Type ERecordType
---@param Value string
---@param Num number
---@param ChangeValue number
function UEmotionalMemoryComponent:RecordData(PlayerKey, Type, Value, Num, ChangeValue) end

---@param AreaID number
---@param PlayerKey number
---@param Type ERecordType
---@param Value string
---@param Num number
---@param ChangeValue number
function UEmotionalMemoryComponent:RecordDataWithAreaID(AreaID, PlayerKey, Type, Value, Num, ChangeValue) end
