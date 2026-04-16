---@meta

---@class AElectricArcSelectBuildActor: ASelectBuildActor
---@field TraceMiniLength number
---@field TraceMaxLength number
---@field ViewOffsetZ number
---@field DefaultRotator FRotator
---@field ElectricArcOffset number
---@field TraceChannel ECollisionChannel
local AElectricArcSelectBuildActor = {}

---@param DeltaTime number
function AElectricArcSelectBuildActor:TickElectricArc(DeltaTime) end

---@param FirstHitResult FHitResult
---@param SecondHitResult FHitResult
function AElectricArcSelectBuildActor:SetElectricHitResult(FirstHitResult, SecondHitResult) end

---@param Length number
function AElectricArcSelectBuildActor:SetElectricLength(Length) end

---@param bForceUpdate boolean
function AElectricArcSelectBuildActor:UpdatePlacementEnable(bForceUpdate) end
