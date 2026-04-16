---@meta

---@class AParachuteTrainingChair: AActivityBaseActor, ILiftControlInterface
---@field MaxPassengerNum number
---@field LiftOffset FVector
---@field Passengers ULuaArrayHelper<ASTExtraBaseCharacter>
---@field PassengersController ULuaArrayHelper<ASTExtraPlayerController>
local AParachuteTrainingChair = {}

---@param GISCCF_Param FGISCCF_Param
function AParachuteTrainingChair:InteractiveButton(GISCCF_Param) end

---@param GISCCF_Param FGISCCF_Param
---@return boolean
function AParachuteTrainingChair:InteractiveCondition(GISCCF_Param) end

---@param ArrivedLoc FVector
function AParachuteTrainingChair:OnArrivedLimitedLocDelegateEvent(ArrivedLoc) end

---@param _Passenger ASTExtraBaseCharacter
---@param _PassengerController ASTExtraPlayerController
function AParachuteTrainingChair:CancelInteraction(_Passenger, _PassengerController) end

---@param bUpLift boolean
---@return FVector
function AParachuteTrainingChair:GetInputVector(bUpLift) end

---@param Passenger ASTExtraBaseCharacter
---@param PassengerController ASTExtraPlayerController
---@return boolean
function AParachuteTrainingChair:AddPassenger(Passenger, PassengerController) end

---@param Passenger ASTExtraBaseCharacter
---@param PassengerController ASTExtraPlayerController
---@return boolean
function AParachuteTrainingChair:RemovePassenger(Passenger, PassengerController) end

---@return boolean
function AParachuteTrainingChair:IsFullOfPassengers() end
