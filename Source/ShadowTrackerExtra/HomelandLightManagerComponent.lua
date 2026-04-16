---@meta

---@class HomeLightType
---@field Lighting number
---@field Atmosphere number
---@field Else number
HomeLightType = {}


---@class FHomelandLightInfo
---@field Location FVector
---@field Intensity number
---@field LightComponent UPointLightComponent
---@field Type HomeLightType
---@field bHadPausePSO boolean
FHomelandLightInfo = {}


---@class UHomelandLightManagerComponent: UActorComponent
---@field PlayerRadius number
---@field PointLightMaxNum number
---@field Weight number
---@field Bias number
---@field TurnOnTime number
---@field bIsValid boolean
---@field WeightR number
---@field WeightG number
---@field WeightB number
---@field WeightAttenuation number
---@field WeightInternal number
---@field PlayerController ASTExtraPlayerController
---@field Lights ULuaMapHelper<AActor, FHomelandLightInfo>
---@field LightedLightingLamps ULuaSetHelper<AActor>
---@field LightedAtmosphereLamps ULuaSetHelper<AActor>
---@field LightedLightingLampInRange ULuaSetHelper<AActor>
---@field LightedAtmosphereLampInRange ULuaSetHelper<AActor>
---@field TurnOningLights ULuaSetHelper<AActor>
---@field TurnOffingLights ULuaSetHelper<AActor>
---@field CurrentLightNum number
---@field bAsyncPSOPause boolean
---@field OriginalAsyncPSOValue number
local UHomelandLightManagerComponent = {}

---@param Light AActor
---@param Type HomeLightType
function UHomelandLightManagerComponent:RegisterLight(Light, Type) end

---@param Light AActor
function UHomelandLightManagerComponent:UnRegisterLight(Light) end

---@param Light AActor
function UHomelandLightManagerComponent:PlayerTurnOn(Light) end

---@param Light AActor
function UHomelandLightManagerComponent:PlayerTurnOff(Light) end

function UHomelandLightManagerComponent:DetectPointLights() end

---@param DeltaTime number
function UHomelandLightManagerComponent:UpdateLightsIntensity(DeltaTime) end

---@param bValid boolean
function UHomelandLightManagerComponent:SetValid(bValid) end

---@param InPlayerState ASTExtraPlayerState
function UHomelandLightManagerComponent:OnPlayerStateInitialized(InPlayerState) end

function UHomelandLightManagerComponent:CheckAsyncPSO() end

function UHomelandLightManagerComponent:PrintLightsRank() end

function UHomelandLightManagerComponent:UpdateLightStates() end

function UHomelandLightManagerComponent:StateClear() end

---@param Light AActor
function UHomelandLightManagerComponent:RemoveLight(Light) end

---@param Light AActor
function UHomelandLightManagerComponent:TurnOn(Light) end

---@param Light AActor
function UHomelandLightManagerComponent:TurnOff(Light) end

function UHomelandLightManagerComponent:ClearInvalidLight() end
