---@meta

---@class AFireworksActor: AActor
---@field TrailingSpeed number
---@field TrailingTime number
---@field TrailingHeight number
---@field TrailingGravity number
---@field TotalPlayTime number
---@field CurPlayTime number
---@field StartPos FVector
---@field ExplosionOffset FVector
---@field OffsetSpeed FVector
---@field OffsetAccle FVector
---@field AreaHeight number
---@field FireworksFinishDelegate FOnFireworksFinishDelegate
local AFireworksActor = {}

function AFireworksActor:PlayFireworks() end

---@param SizeScale number
---@param OffsetScale number
function AFireworksActor:SetEffectScale(SizeScale, OffsetScale) end

function AFireworksActor:FinishFireworks() end
