---@meta

---@class AEscapeParamoVolcanicAshRegion: AActor
---@field RegionMinHeight number
---@field RegionMaxHeight number
---@field ScreenAppearanceName string
---@field AshDensityParameterName string
---@field ScreenAppearanceProviderClass UScreenAppearanceProvider
---@field ScreenAppearanceDuration number
---@field FogDuration number
---@field bDetectPerFrame boolean
---@field DetectRate number
---@field bParachuteNotShowScreenAppearance boolean
---@field NotShowScreenAppearanceStates ULuaArrayHelper<EPawnState>
---@field NotShowScreenAppearanceDynamicStates FGameplayTagContainer
---@field ElevatorClassPath FSoftClassPath
---@field bVolcanoErupted boolean
---@field VolcanoEruptTime number
---@field NotShowEffectsBoxes ULuaArrayHelper<UBoxComponent>
---@field HideScreenAppearanceReasons ULuaSetHelper<string>
---@field HideFogReasons ULuaSetHelper<string>
local AEscapeParamoVolcanicAshRegion = {}

function AEscapeParamoVolcanicAshRegion:UpdateClientEffects() end

---@param PC ASTExtraPlayerController
---@return boolean
function AEscapeParamoVolcanicAshRegion:ShouldShowEffectsCommon(PC) end

---@param PC ASTExtraPlayerController
---@return boolean
function AEscapeParamoVolcanicAshRegion:ShouldShowScreenAppearance(PC) end

---@param PC ASTExtraPlayerController
---@return boolean
function AEscapeParamoVolcanicAshRegion:ShouldShowAshFog(PC) end

---@param bNewHidden boolean
---@param Reason string
---@param bUpdateImmediately boolean
function AEscapeParamoVolcanicAshRegion:SetScreenAppearanceHidden(bNewHidden, Reason, bUpdateImmediately) end

---@param bNewHidden boolean
---@param Reason string
---@param bUpdateImmediately boolean
function AEscapeParamoVolcanicAshRegion:SetFogHidden(bNewHidden, Reason, bUpdateImmediately) end

function AEscapeParamoVolcanicAshRegion:OnVolcanicAshFogShow() end

function AEscapeParamoVolcanicAshRegion:OnVolcanicAshFogHide() end
