---@meta

---@class AShootingRoomSubRange: AActivityBaseActor
---@field RangType ERoomRangeType
---@field TrainTime number
---@field CurTrainTime number
---@field BisTraining boolean
---@field LastTrainTime number
---@field CurShootID number
---@field HitNum number
local AShootingRoomSubRange = {}

function AShootingRoomSubRange:BeginTrain() end

function AShootingRoomSubRange:FinishTrain() end

function AShootingRoomSubRange:ResetTraing() end

---@return boolean
function AShootingRoomSubRange:GetBisTraining() end

---@param bis boolean
function AShootingRoomSubRange:UpdateBisTraining(bis) end

function AShootingRoomSubRange:OnRep_CurTrainTime() end

function AShootingRoomSubRange:OnRep_BisTraining() end

function AShootingRoomSubRange:OnRep_TrainTime() end
