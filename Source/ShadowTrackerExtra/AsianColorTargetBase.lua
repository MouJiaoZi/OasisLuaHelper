---@meta

---@class AAsianColorTargetBase: AActivityBaseActor
---@field LeafArray ULuaArrayHelper<UChildActorComponent>
---@field bisAlive boolean
---@field MatchStageID number
---@field TargetTypeID number
---@field Points ULuaArrayHelper<number>
---@field CurPointIndex number
local AAsianColorTargetBase = {}

---@param IndexForTeam number
---@param ChildIndex number
function AAsianColorTargetBase:ControlLeafDied(IndexForTeam, ChildIndex) end

---@param IndexForTeam number
---@param ChildIndex number
---@param PC ASTExtraPlayerController
function AAsianColorTargetBase:ControlLeafDiedWithController(IndexForTeam, ChildIndex, PC) end

---@param IndexForTeam number
---@param ChildIndex number
---@param PC ASTExtraPlayerController
function AAsianColorTargetBase:BP_ControlLeafDied(IndexForTeam, ChildIndex, PC) end

function AAsianColorTargetBase:ResetAllLeaf() end

---@param Index number
---@param Point number
function AAsianColorTargetBase:AddPointToTeam(Index, Point) end

---@param LeafTeamIndex number
---@param Point number
---@param PC ASTExtraPlayerController
function AAsianColorTargetBase:PostToRealPlayerState(LeafTeamIndex, Point, PC) end

function AAsianColorTargetBase:DeactivePerformance() end

function AAsianColorTargetBase:OnRep_BisAlive() end
