---@meta

---@class UWarDogActionExecuteComponent: UActorComponent
---@field bIsMLAI boolean
---@field VehicleInteractClass USTQuadrupedCharacterVehicleInteract
---@field SearchUseVehicleRadius number
---@field SearchPickupItemRadius number
---@field SearchPickupItemMaxBox number
---@field SearchPickupItemMaxItems number
---@field MoveSpeedType EAIFollowSpeedType
---@field MoveTargetSpeed number
---@field SpeedChangePerSecond number
---@field SpeedError number
local UWarDogActionExecuteComponent = {}

---@param DeltaTime number
function UWarDogActionExecuteComponent:TickExecute(DeltaTime) end

function UWarDogActionExecuteComponent:OnMLDeposit() end

function UWarDogActionExecuteComponent:OnMLUnDeposit() end

---@param Forward number
---@param Right number
---@param Up number
---@param InSpeedType EAIFollowSpeedType
---@param InTargetSpeed number
---@param CurveName string
function UWarDogActionExecuteComponent:StartMove(Forward, Right, Up, InSpeedType, InTargetSpeed, CurveName) end

---@param CurveName string
function UWarDogActionExecuteComponent:StopMove(CurveName) end

---@param InYaw number
---@param InPitch number
---@param InRoll number
function UWarDogActionExecuteComponent:SetFocus(InYaw, InPitch, InRoll) end

---@param bOpen boolean
function UWarDogActionExecuteComponent:DoorSwitch(bOpen) end

function UWarDogActionExecuteComponent:JumpWall() end

---@param GasOn number
---@param Turn number
---@param Up number
---@param bBrake boolean
---@param bBoosting boolean
function UWarDogActionExecuteComponent:VehicleMove(GasOn, Turn, Up, bBrake, bBoosting) end

---@param InRadius number
function UWarDogActionExecuteComponent:GetNearbyBoxes(InRadius) end

---@param Actor AActor
---@return number
function UWarDogActionExecuteComponent:GetActorUniqueID(Actor) end

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function UWarDogActionExecuteComponent:OnWarDogSideDoge(Character, PrevMovementMode, PreviousCustomMode) end
