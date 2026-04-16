---@meta

---@class FSleighRushInfo
---@field bInRushMode boolean
---@field RushStartTime number
---@field RushTotalTime number
---@field RushFactor number
---@field bRushTimeOver boolean
---@field StartLocZ number
---@field UpHeightLimit number
FSleighRushInfo = {}


---@class USTExtraSleighRushComponent: UVehicleComponent
---@field bEnableBlueprintPostCppTick boolean
---@field MaxChargeTime number
---@field MinValidChargeTime number
---@field RushTotalTime number
---@field RushJumpTime number
---@field MinRushJumpHeight number
---@field MaxRushJumpHeight number
---@field MinRushForwardVel number
---@field MaxRushForwardVel number
---@field MaxForwardVelAfterRushTime number
---@field AccForwardVelAfterRushTime number
---@field MaxVelZAfterRushTime number
---@field GravityFactorAfterRushTime number
---@field RushVelAcc number
---@field RushTurnAngleSpeed number
---@field RushCDTime number
---@field RushLandGroundDistThreshold number
---@field bEnableRushLaunchCameraEffect boolean
---@field bEnableRushNoGravityMode boolean
---@field bEnableRushServerAuthorize boolean
---@field bCanRushInWater boolean
---@field bEnableUpdateRushCpp boolean
---@field bEnableUpdateRushBP boolean
---@field UpCheckDownOffset number
---@field UpCheckCollisionChannel ECollisionChannel
---@field AirCompCheckIntervalTime number
---@field bAirCompCheckRelativeWaterAltitude boolean
---@field AirCompCheckFloorDistance number
---@field bPlayRushSoundIgnoreRushTime boolean
---@field bClientChargePressed boolean
---@field bServerChargePressed boolean
---@field SleighRushInfo FSleighRushInfo
---@field CurRushCD number
---@field ChargePressTime number
---@field bClientWaitServerRespond boolean
---@field RushDurationTime number
---@field LastCheckAirHeightTime number
---@field LastCheckAirHeightValue number
---@field RushEngineSfxLoop FSTExtraVehicleSfxLoop
---@field bNeedInitAudio boolean
---@field IDIP_Sleigh_HP number
local USTExtraSleighRushComponent = {}

---@param DeltaTime number
function USTExtraSleighRushComponent:PostCppTick(DeltaTime) end

---@return number
function USTExtraSleighRushComponent:GetServerTime() end

---@param DeltaTime number
function USTExtraSleighRushComponent:UpdateRush(DeltaTime) end

---@param DeltaTime number
function USTExtraSleighRushComponent:BP_UpdateRush(DeltaTime) end

---@param bPressed boolean
function USTExtraSleighRushComponent:OnPressChargeBtn(bPressed) end

function USTExtraSleighRushComponent:OnPressCancelBtn() end

---@param bPressed boolean
function USTExtraSleighRushComponent:NotifyServerPressChargeBtn(bPressed) end

function USTExtraSleighRushComponent:NotifyServerCancelCharge() end

---@param bPressed boolean
function USTExtraSleighRushComponent:OnServerPressChargeBtn(bPressed) end

function USTExtraSleighRushComponent:OnServerCancelCharge() end

function USTExtraSleighRushComponent:RspClientAfterCharge() end

function USTExtraSleighRushComponent:OnRep_ServerChargePressed() end

---@param OldInfo FSleighRushInfo
function USTExtraSleighRushComponent:OnRep_SleighRushInfo(OldInfo) end

---@param NewRot FRotator
function USTExtraSleighRushComponent:ForceSetRigidBodyRotation(NewRot) end

---@param NewVel FVector
function USTExtraSleighRushComponent:ForceSetPhysicsLinearVelocity(NewVel) end

---@param NewValue FSleighRushInfo
function USTExtraSleighRushComponent:SetSleighRushInfo(NewValue) end

---@param NewValue number
function USTExtraSleighRushComponent:SetCurRushCD(NewValue) end

function USTExtraSleighRushComponent:UpdateRushCameraEffect() end

---@param DeltaTime number
function USTExtraSleighRushComponent:TickAudio(DeltaTime) end

---@return boolean
function USTExtraSleighRushComponent:HasPower() end

---@return number
function USTExtraSleighRushComponent:CheckUpCollisionHeightLimit() end
