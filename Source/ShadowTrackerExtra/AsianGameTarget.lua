---@meta

---@class AAsianGameTarget: AAsianGameBaseTarget
---@field LoopType ETargetLoopType
---@field CurTargetMoveData FTargetMoveData
---@field CurWhirlData FWhirlData
---@field SmoothAlphaScale number
---@field LocationLerpTolerance number
---@field BisUseRelative boolean
---@field RelativeVector FVector
local AAsianGameTarget = {}

---@param DeltaTime number
function AAsianGameTarget:UpdateFakeMoveData(DeltaTime) end

---@param DeltaTime number
function AAsianGameTarget:ClientUpdateMoveLocation(DeltaTime) end

---@param DeltaTime number
function AAsianGameTarget:ClientUpdateLocation(DeltaTime) end

function AAsianGameTarget:BP_UpdateClientWhirlData() end

function AAsianGameTarget:JumpToBeginPoint() end

---@param DeltaTime number
function AAsianGameTarget:ServerUpdateWhirlData(DeltaTime) end

function AAsianGameTarget:WhirlBackToBeginPoint() end

---@param DeltaTime number
function AAsianGameTarget:ClientUpdateWhirlData(DeltaTime) end
