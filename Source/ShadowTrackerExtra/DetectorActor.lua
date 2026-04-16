---@meta

---@class FSyncDetectActorsDataStruct
---@field DetectTime number
---@field DetectPawns ULuaArrayHelper<APawn>
---@field DetectActors ULuaArrayHelper<AActor>
FSyncDetectActorsDataStruct = {}


---@class ADetectorActor: AActor
---@field DetectResult FSyncDetectActorsDataStruct
---@field bDoDetectWhenBegin boolean
---@field IntervalTime number
---@field MaxDetectionNum number
---@field PawnClass APawn
---@field MaxDistance number
---@field bExcludeSelf boolean
---@field bExcludeSameCamp boolean
---@field bExcludeDead boolean
---@field bExcludePawnState boolean
---@field ExcludePawnStates ULuaArrayHelper<EPawnState>
local ADetectorActor = {}

---@return boolean
function ADetectorActor:IsLifeConditionOK() end

function ADetectorActor:OnRep_DetectResult() end

---@param ResultsNum number
function ADetectorActor:DetectingEffect(ResultsNum) end

---@param TargetActor AActor
function ADetectorActor:DoDetectedEffect(TargetActor) end
