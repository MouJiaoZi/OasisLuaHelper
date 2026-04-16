---@meta

---@class FDebugMapCircle
---@field Center FVector
---@field Radius number
FDebugMapCircle = {}


---@class FDebugMapLine
---@field Start FVector
---@field End FVector
FDebugMapLine = {}


---@class AInfluenceMapActor: AActor
---@field CellSize number
---@field MapExtent FVector2D
---@field SegmentHPadLength number
---@field SegmentVPadLength number
---@field SegmentVRadius number
---@field bFlipSegmentNormal boolean
---@field bRunOnServer boolean
---@field bRunOnClient boolean
---@field debugDrawHeightOffset number
local AInfluenceMapActor = {}

---@param center FVector
---@param radius number
---@param cost number
function AInfluenceMapActor:AddCircle(center, radius, cost) end

---@param lineStart FVector
---@param lineEnd FVector
---@param cost number
function AInfluenceMapActor:AddSegment(lineStart, lineEnd, cost) end

---@param dest FVector
function AInfluenceMapActor:SetDestination(dest) end

function AInfluenceMapActor:SyncToClients() end

---@param pos FVector
---@param _circles ULuaArrayHelper<FDebugMapCircle>
---@param _lines ULuaArrayHelper<FDebugMapLine>
---@param dest FVector
function AInfluenceMapActor:SyncInfulenceMapInfos(pos, _circles, _lines, dest) end
