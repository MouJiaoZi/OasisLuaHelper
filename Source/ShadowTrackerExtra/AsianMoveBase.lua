---@meta

---@class AAsianMoveBase: AActivityBaseActor
---@field LoopType ETargetLoopType
---@field CurTargetMoveData FTargetMoveData
---@field CurWhirlData FWhirlData
---@field SmoothAlphaScale number
---@field LocationLerpTolerance number
---@field SeqSpeedRate number
---@field VisibleOnly_InstanceSpeed number
---@field BisUseRelative boolean
---@field RelativeVector FVector
---@field RandomGloup number
---@field BisRandom boolean
---@field BisHideInClient boolean
local AAsianMoveBase = {}

function AAsianMoveBase:ServerHideActor() end

function AAsianMoveBase:ClientHideActor() end

function AAsianMoveBase:OnRep_BisHideInClient() end

---@param DeltaTime number
function AAsianMoveBase:UpdateFakeMoveData(DeltaTime) end

---@param DeltaTime number
function AAsianMoveBase:ClientUpdateMoveLocation(DeltaTime) end

---@param DeltaTime number
function AAsianMoveBase:ClientUpdateLocation(DeltaTime) end

function AAsianMoveBase:BP_UpdateClientWhirlData() end

function AAsianMoveBase:JumpToBeginPoint() end

---@param DeltaTime number
function AAsianMoveBase:ServerUpdateWhirlData(DeltaTime) end

function AAsianMoveBase:WhirlBackToBeginPoint() end

---@param DeltaTime number
function AAsianMoveBase:ClientUpdateWhirlData(DeltaTime) end

---@return string
function AAsianMoveBase:GetSubLevelName() end
