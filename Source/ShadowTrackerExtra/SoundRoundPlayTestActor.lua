---@meta

---@class ASoundRoundPlayTestActor: AActor
---@field Radius number
---@field PlayInterval number
---@field HorizontalNum number
---@field VertialNum number
---@field CaptureFileName string
local ASoundRoundPlayTestActor = {}

---@param Radius number
---@param Interval number
---@param HorizontalNum number
---@param VertialNum number
function ASoundRoundPlayTestActor:StartRoundPlay(Radius, Interval, HorizontalNum, VertialNum) end

function ASoundRoundPlayTestActor:StopRoundPlay() end

---@param path string
function ASoundRoundPlayTestActor:SetAudoToPlay(path) end
