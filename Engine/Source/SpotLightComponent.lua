---@meta

---A spot light component emits a directional cone shaped light (Eg a Torch).
---@class USpotLightComponent: UPointLightComponent
---@field InnerConeAngle number @Degrees.
---@field OuterConeAngle number @Degrees.
---@field bCastPhotonShadow number @#if WITH_PHOTON_SHADOW Whether the light should cast photon shadow for character #endif
---@field NearPlaneOffset number
---@field FarPlaneOffset number
---@field LightShaftConeAngle number @Degrees.
local USpotLightComponent = {}

---@param NewInnerConeAngle number
function USpotLightComponent:SetInnerConeAngle(NewInnerConeAngle) end

---@param NewOuterConeAngle number
function USpotLightComponent:SetOuterConeAngle(NewOuterConeAngle) end
