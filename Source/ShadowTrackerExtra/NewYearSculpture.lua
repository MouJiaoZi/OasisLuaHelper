---@meta

---@class FBalloonState
---@field bBroken boolean
FBalloonState = {}


---@class ANewYearSculpture: AActor
---@field BalloonsState ULuaArrayHelper<FBalloonState>
---@field BalloonCount number
---@field bAllBalloonsBroken boolean
local ANewYearSculpture = {}

---@param Index number
function ANewYearSculpture:UpdateBalloonBrokenCount(Index) end

function ANewYearSculpture:OnRep_AllBalloonsBroken() end

---@param LastBalloonsState ULuaArrayHelper<FBalloonState>
function ANewYearSculpture:OnRep_BalloonsState(LastBalloonsState) end

---@param Index number
function ANewYearSculpture:BroadcastBalloonBroken(Index) end

---@param Index number
---@param bPlayAnimation boolean
function ANewYearSculpture:BalloonExplsion(Index, bPlayAnimation) end

function ANewYearSculpture:BroadcastAllBalloonsExplsion() end

---@param bPlayAnimation boolean
function ANewYearSculpture:BoxExplsion(bPlayAnimation) end
