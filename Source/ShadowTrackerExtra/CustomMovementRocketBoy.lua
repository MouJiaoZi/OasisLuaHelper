---@meta

---@class UCustomMovementRocketBoy: UCustomMovementFlying
---@field BurstDuration number
---@field MaxVelocityZWhenJetCancled number
---@field BurstCD number
---@field JetCD number
---@field ForwardAngle number
---@field AdditiveAccOnFalling number
---@field FallingProtectActiveHeight number
---@field EnergyMax number
---@field EnergyRecoverySpeed number
---@field BurstEnergyCost number
---@field KeepFlyingEnergyCost number
---@field ReplicateCD number
---@field RisingTLogId number
---@field InAirTLogId number
---@field Energy number
---@field BurstElapsedTime number
---@field JetElapsedTime number
---@field FallingProtectSpeedThreshold number
---@field ScopeInTime number
---@field LastReplicatedTime number
---@field MaxJetCDReducePercent number
local UCustomMovementRocketBoy = {}

function UCustomMovementRocketBoy:OnCharScopeInComplete() end

function UCustomMovementRocketBoy:OnCharScopeOutComplete() end

---@return number
function UCustomMovementRocketBoy:GetBurstCDPercent() end

---@return number
function UCustomMovementRocketBoy:GetEnergyPercent() end

---@return number
function UCustomMovementRocketBoy:GetJetCD() end

---@return number
function UCustomMovementRocketBoy:GetJetCDPercent() end

---@return ECustomFlyingMoveFlag
function UCustomMovementRocketBoy:GetMoveFlag() end

---@param NewMoveMode ECustomFlyingMoveMode
---@param NewMoveFlag ECustomFlyingMoveFlag
---@param bTestSet boolean
---@return boolean
function UCustomMovementRocketBoy:TrySetMoveMode(NewMoveMode, NewMoveFlag, bTestSet) end

---@param Flag number
---@param bTestSet boolean
---@return boolean
function UCustomMovementRocketBoy:TrySetMoveFlag(Flag, bTestSet) end

---@param LocDiff FVector
---@return boolean
function UCustomMovementRocketBoy:ExceedsAllowablePositionError(LocDiff) end

---@return string
function UCustomMovementRocketBoy:GetToString() end

---@param Percent number
function UCustomMovementRocketBoy:SetMaxJetCDReducePercent(Percent) end

---@return number
function UCustomMovementRocketBoy:GetBurstCD() end

---@return number
function UCustomMovementRocketBoy:GetEnergyMax() end

---@return number
function UCustomMovementRocketBoy:GetEnergyRecoverySpeed() end

---@return number
function UCustomMovementRocketBoy:GetVelocityRatio() end

---@param MoveFlag ECustomFlyingMoveFlag
---@param ResetFlagEnterTime boolean
---@return boolean
function UCustomMovementRocketBoy:SetFlyingMoveFlag(MoveFlag, ResetFlagEnterTime) end

---@return boolean
function UCustomMovementRocketBoy:ReachFallingProtectHeight() end

---@param DeltaTime number
---@return number
function UCustomMovementRocketBoy:GetAccelerationZ(DeltaTime) end

---@param deltaTime number
---@return FVector
function UCustomMovementRocketBoy:GetFallingAcceleration(deltaTime) end

function UCustomMovementRocketBoy:FallingProtect() end
