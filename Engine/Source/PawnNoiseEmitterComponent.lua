---@meta

---PawnNoiseEmitterComponent tracks noise event data used by SensingComponents to hear a Pawn. This component is intended to exist on either a Pawn or its Controller. It does nothing on network clients.
---@class UPawnNoiseEmitterComponent: UActorComponent
---@field bAIPerceptionSystemCompatibilityMode number
---@field LastRemoteNoisePosition FVector
---@field NoiseLifetime number
---@field LastRemoteNoiseVolume number
---@field LastRemoteNoiseTime number
---@field LastLocalNoiseVolume number
---@field LastLocalNoiseTime number
local UPawnNoiseEmitterComponent = {}

---Cache noises instigated by the owning pawn for AI sensing
---@param NoiseMaker AActor
---@param Loudness number
---@param NoiseLocation FVector
function UPawnNoiseEmitterComponent:MakeNoise(NoiseMaker, Loudness, NoiseLocation) end
