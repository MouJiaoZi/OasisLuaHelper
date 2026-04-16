---@meta

---@class EVehicleParachutingState
---@field None number
---@field Acceleration number
---@field Idle number
---@field Deceleration number
---@field Ending number
EVehicleParachutingState = {}


---@class FVehicleParachutingStateData
---@field StateDuration number
---@field bUseSpeedCurve boolean
---@field ConstantSpeed number
---@field ToNextStateHeight number
FVehicleParachutingStateData = {}


---@class AParachutingVehicle: AActivityBaseActor
---@field CurStateTime number
---@field ParachuteCountdownMap ULuaMapHelper<ASTExtraBaseCharacter, number>
---@field ParachutingStateData ULuaMapHelper<EVehicleParachutingState, FVehicleParachutingStateData>
---@field ParachutingState EVehicleParachutingState
---@field LastParachutingState EVehicleParachutingState
---@field CurStateServerTime number
---@field LowestOpenParachuteHeight number
---@field CanOpenParachuteHeight number
---@field ForceOpenParachuteHeight number
---@field CloseParachuteHeight number
---@field ParachuteCountdown number
---@field LowHeightThreshold number
---@field LowTickTime number
---@field HighHeightThreshold number
---@field HighTickTime number
---@field VehicleTemplate ASTExtraVehicleBase
---@field RelativeTransformToAttach FTransform
---@field VehicleInitialHP number
---@field bCanInteractInitially boolean
---@field bInvincibleInitially boolean
---@field DisablePawnStatesInVehicle ULuaArrayHelper<EPawnState>
local AParachutingVehicle = {}

---@param NewState EVehicleParachutingState
function AParachutingVehicle:SetParachutingState(NewState) end

---@param Vehicle ASTExtraVehicleBase
function AParachutingVehicle:SetCachedVehicle(Vehicle) end

---@return EVehicleParachutingState
function AParachutingVehicle:GetNextState() end

---@return number
function AParachutingVehicle:GetCurHeight() end

---@param CheckingHeight number
---@return boolean
function AParachutingVehicle:CheckingHeight(CheckingHeight) end

---@param bCanEnter boolean
---@param bCanExit boolean
---@param Invincible boolean
function AParachutingVehicle:SetVehicleInteractEnableAndInvincible(bCanEnter, bCanExit, Invincible) end

---@return number
function AParachutingVehicle:GetCurrentFallingSpeed() end

---@param LastState EVehicleParachutingState
---@param NewState EVehicleParachutingState
function AParachutingVehicle:OnParachutingStateChanged(LastState, NewState) end

---@param bCanEnter boolean
---@param Invincible boolean
function AParachutingVehicle:OnVehicleEnterEnableAndInvincibleChanged(bCanEnter, Invincible) end

---@param PrevParachutingState EVehicleParachutingState
function AParachutingVehicle:Onrep_ParachutingState(PrevParachutingState) end

---@param PrevCachedVehicle ASTExtraVehicleBase
function AParachutingVehicle:Onrep_CachedVehicle(PrevCachedVehicle) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function AParachutingVehicle:OnVehicleEnterServerDelegate(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function AParachutingVehicle:OnVehicleEnterClientDelegate(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function AParachutingVehicle:OnVehicleExitServerDelegate(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function AParachutingVehicle:OnVehicleExitClientDelegate(Character, SeatType, IsSucc) end
