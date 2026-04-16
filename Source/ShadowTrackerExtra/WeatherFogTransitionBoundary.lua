---@meta

---@class AWeatherFogTransitionBoundary: AUAERegionActor
local AWeatherFogTransitionBoundary = {}

---@param DeltaTime number
---@param ViewportViewLocation FVector
---@param ViewportViewRotation FRotator
function AWeatherFogTransitionBoundary:BP_SIE_Tick(DeltaTime, ViewportViewLocation, ViewportViewRotation) end

function AWeatherFogTransitionBoundary:BeginWeatherFogSIE() end

function AWeatherFogTransitionBoundary:EndWeatherFogSIE() end

---@param TargetDynamicFogCustomParam FDynamicFogCustomParam
---@param LerpValue number
function AWeatherFogTransitionBoundary:SetExponentialHeightFogParams(TargetDynamicFogCustomParam, LerpValue) end
