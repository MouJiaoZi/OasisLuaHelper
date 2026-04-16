---@meta

---@class ETrailMarkType
---@field Normal number @Ĭ��
---@field Slipping number @��
---@field Broken number @����
ETrailMarkType = {}


---@class FTrailMarkInputData
---@field bContainValidData boolean
---@field Trans FTransform
---@field Normal FVector
---@field Type ETrailMarkType
---@field bBackWheel boolean
FTrailMarkInputData = {}


---@class ATrailMarkActor: AActor
---@field MaxQuadNum number
---@field MaxQuadLength number
---@field QuadDirectionAcceptAngle number
---@field DefaultTrailWidth number
---@field bUseTrailLength boolean
---@field DefaultTrailLength number
---@field TextureLength number
---@field USegmentNum number
---@field CoordU number
---@field SlippingCoordU number
---@field BrokenCoordU number
---@field bUseAdditionalType boolean
---@field AdditionalTrailWidth number
---@field AdditionalTextureLength number
---@field AdditionalCoordU number
---@field AdditionalSlippingCoordU number
---@field AdditionalBrokenCoordU number
---@field bDeferUpdateTrailMark boolean
local ATrailMarkActor = {}

---@param NewInput ULuaArrayHelper<FTrailMarkInputData>
function ATrailMarkActor:UpdateInput(NewInput) end

function ATrailMarkActor:StopUpdate() end

---@return boolean
function ATrailMarkActor:IsUpdating() end

function ATrailMarkActor:ClearTrail() end
