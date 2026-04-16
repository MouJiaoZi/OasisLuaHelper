---@meta

---@class UAsianGamesMapInfoBaseUI: UUAEUserWidget
---@field CheckPointLocationList ULuaArrayHelper<FVector>
---@field BinaryEquation ULuaArrayHelper<FVector>
---@field SegmentLength ULuaArrayHelper<number>
---@field JumpAnimationTimeMap ULuaArrayHelper<number>
---@field JumpAnimationTimeIncreasingMap ULuaArrayHelper<number>
local UAsianGamesMapInfoBaseUI = {}

function UAsianGamesMapInfoBaseUI:CalculateLinearFunction() end

function UAsianGamesMapInfoBaseUI:InitSegementInfo() end

function UAsianGamesMapInfoBaseUI:InitAnimationTime() end

---@param PlayerLocation FVector
---@param CheckPointIndex number
---@param Process number
---@return boolean
function UAsianGamesMapInfoBaseUI:CalculateProcess(PlayerLocation, CheckPointIndex, Process) end

---@param CurCheckPointIndex number
---@param CurProcess number
---@param OutputTime number
---@return boolean
function UAsianGamesMapInfoBaseUI:GetRealAnimationTime(CurCheckPointIndex, CurProcess, OutputTime) end
