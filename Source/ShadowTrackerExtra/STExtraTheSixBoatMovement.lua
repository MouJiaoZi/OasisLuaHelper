---@meta

---@class USTExtraTheSixBoatMovement: UPawnMovementComponent
---@field LandTraceInterval number
---@field LandTraceStartOffset number
---@field LandTraceMaxHeight number
---@field CheckHeightChannel ECollisionChannel
---@field bEnableCppPowerOutput boolean
---@field bEnableBlueprintPowerOutput boolean
---@field MinDistToLand number
---@field MaxDistToLand number
---@field SpeedFrictionRate number
---@field PowerAccelerate number
---@field TurnAngleRate number
---@field MaxHorizonSpeed number
---@field MaxVerticalSpeed number
---@field VerticalFrictionRate number
---@field AutoDescendSpeed number
---@field AutoAscendSpeed number
---@field AngularFrictionRate number
---@field WaterContactPointThreshold number
---@field UpInputRate number
---@field ForwardInputRate number
---@field RightInputRate number
---@field STUpInputRate number
---@field STForwardInputRate number
---@field STRightInputRate number
---@field bIsEnableGravity boolean
---@field LandHitResult FHitResult
---@field CurTurnRightAngleSpeed number
---@field LandTraceCountTime number
---@field DistanceToLand number
---@field DistanceToSurface number
---@field bIsCloserToWater boolean
local USTExtraTheSixBoatMovement = {}

---@param bIsEnable boolean
function USTExtraTheSixBoatMovement:SetEnableGravity(bIsEnable) end

---@return number
function USTExtraTheSixBoatMovement:GetNowSpeed() end

---@param ForwardInput number
---@param RightInput number
---@param UpInput number
function USTExtraTheSixBoatMovement:ServerUpdateInput(ForwardInput, RightInput, UpInput) end

function USTExtraTheSixBoatMovement:OnRep_IsEnableGravity() end

function USTExtraTheSixBoatMovement:UpdateDistanceToLand() end

---@param DeltaTime number
function USTExtraTheSixBoatMovement:BP_UpdatePowerOutput(DeltaTime) end
