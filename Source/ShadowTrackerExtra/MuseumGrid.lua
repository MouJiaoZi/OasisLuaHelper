---@meta

---@class AMuseumGrid: AActivityBaseActor
---@field bSolidGrid boolean
---@field bRotateHalf boolean
---@field bRotating boolean
---@field RotatingTime number
---@field RotatingDegree number
---@field BornIndex number
local AMuseumGrid = {}

---@return boolean
function AMuseumGrid:IsCollidedPlayer() end

---@param DeltaTime number
function AMuseumGrid:UpdateRotatingState(DeltaTime) end

---@return boolean
function AMuseumGrid:IsRotatingEnd() end

---@param Target AMuseumGridFactory
---@param index number
---@param bSolid boolean
function AMuseumGrid:SetFactoryActor(Target, index, bSolid) end

---@param bEnable boolean
function AMuseumGrid:UpdateCollisionState(bEnable) end

---@param time number
function AMuseumGrid:UpdateRotatingHalf(time) end

function AMuseumGrid:EnterRotating() end

function AMuseumGrid:TriggerRotateGrid() end
