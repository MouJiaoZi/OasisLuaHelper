---@meta

---SensingComponent encapsulates sensory (ie sight and hearing) settings and functionality for an Actor, allowing the actor to see/hear Pawns in the world. It does nothing on network clients.
---@class UPawnSensingComponent: UActorComponent
---@field HearingThreshold number @Max distance at which a makenoise(1.0) loudness sound can be heard, regardless of occlusion
---@field LOSHearingThreshold number @Max distance at which a makenoise(1.0) loudness sound can be heard if unoccluded (LOSHearingThreshold should be > HearingThreshold)
---@field SightRadius number @Maximum sight distance.
---@field SensingInterval number @Amount of time between pawn sensing updates. Use SetSensingInterval() to adjust this at runtime. A value <= 0 prevents any updates.
---@field HearingMaxSoundAge number
---@field bEnableSensingUpdates number @If true, component will perform sensing updates. At runtime change this using SetSensingUpdatesEnabled().
---@field bOnlySensePlayers number @If true, will only sense player-controlled pawns in the world. Default: true
---@field bSeePawns number @If true, we will perform visibility tests and will trigger notifications when a Pawn is visible. Default: true
---@field bHearNoises number @If true, we will perform audibility tests and will be notified when a Pawn makes a noise that can be heard. Default: true IMPORTANT NOTE: If we can see pawns (bSeePawns is true), and the pawn is visible, noise notifications are not triggered.
---@field OnSeePawn FSeePawnDelegate @Delegate to execute when we see a Pawn.
---@field OnHearNoise FHearNoiseDelegate @Delegate to execute when we hear a noise from a Pawn's PawnNoiseEmitterComponent.
---@field PeripheralVisionAngle number @How far to the side AI can see, in degrees. Use SetPeripheralVisionAngle to change the value at runtime.
---@field PeripheralVisionCosine number @Cosine of limits of peripheral vision. Computed from PeripheralVisionAngle.
local UPawnSensingComponent = {}

---Changes the SensingInterval. If we are currently waiting for an interval, this can either extend or shorten that interval. A value <= 0 prevents any updates.
---@param NewSensingInterval number
function UPawnSensingComponent:SetSensingInterval(NewSensingInterval) end

---Enables or disables sensing updates. The timer is reset in either case.
---@param bEnabled boolean
function UPawnSensingComponent:SetSensingUpdatesEnabled(bEnabled) end

---Sets PeripheralVisionAngle. Calculates PeripheralVisionCosine from PeripheralVisionAngle
---@param NewPeripheralVisionAngle number
function UPawnSensingComponent:SetPeripheralVisionAngle(NewPeripheralVisionAngle) end

---@return number
function UPawnSensingComponent:GetPeripheralVisionAngle() end

---@return number
function UPawnSensingComponent:GetPeripheralVisionCosine() end
