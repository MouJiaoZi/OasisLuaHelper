---@meta

---@class ESkyboxControlDeviceType
---@field None number
---@field WinRelease number
---@field Mobile number
ESkyboxControlDeviceType = {}


---@class FPreviewWeatherTimeSlider
---@field Value number
---@field CurValue number
---@field MinTime number
---@field MaxTime number
FPreviewWeatherTimeSlider = {}


---@class FBackgroundWeatherSetting
---@field Weight number
FBackgroundWeatherSetting = {}


---@class FDayNightConfig
---@field DayStartHour number
---@field NightStartHour number
---@field DayDurationRealMinutes number
---@field NightDurationRealMinutes number
---@field InitialHour number
FDayNightConfig = {}


---@class FDayNightTipsConfig
---@field DayTipsID number
---@field NightTipsID number
---@field TimeProgress number
FDayNightTipsConfig = {}


---和平精英天空盒  当PC / 手机 匹配进一个ds的时候 ds会有两个天空盒
---@class ASTExtraSkyBox: AAtmosphericSkyBoxActor
---@field bStaticWeather boolean @优化配置
---@field bUseGolbalTOD boolean @TOD 时间配置
---@field bEnableFade boolean
---@field bLockSunDirection boolean
---@field DayNightConfig FDayNightConfig
---@field TipsConfig FDayNightTipsConfig
---@field BlendDNWeatherParameters FBlendWeatherParameters
---@field DayWeatherSettings ULuaArrayHelper<FBackgroundWeatherSetting>
---@field NightWeatherSettings ULuaArrayHelper<FBackgroundWeatherSetting>
---@field CurrentHour number
---@field FixedCurrentHour number
---@field DaysPassed number
---@field RemainingCycleTimeRatio number
---@field HasDaysPassedReplicated boolean
---@field LerpCurrentHour number
---@field BlendDeltaTime number
---@field IsBlending boolean
---@field DayWeatherPrefixSum ULuaArrayHelper<number>
---@field TotalDayWeatherWeight number
---@field NightWeatherPrefixSum ULuaArrayHelper<number>
---@field TotalNightWeatherWeight number
---@field bIsDaytime boolean
---@field InAllPlayers ULuaArrayHelper<ASTExtraPlayerController>
---@field IsInitialWeather boolean
---@field IsGameStart boolean
---@field LastUpdateTime number
---@field GMbFixedTime boolean
---@field bCanDayTips boolean
---@field bCanNightTips boolean
---@field bTipsEnabled boolean
---@field NeedUpdateHandle FTimerHandle
---@field BackgroundWeatherSettings ULuaArrayHelper<FBackgroundWeatherSetting> @TOD 时间配置 end
---@field bEnablePostProcess boolean
---@field TimeOfDay_PREVIEW number
---@field PostProcessComponents ULuaArrayHelper<UPostProcessComponent>
---@field SoftMaterialInstance UMaterialInstance
---@field LastParameterUpdateTime number
---@field bEnableSequencePreview boolean
---@field bEnableGolbalTODPreview boolean
---@field bIsPlayingSequencePreview boolean
---@field SequencePreviewSpeed number
---@field SequencePreviewSlider FPreviewWeatherTimeSlider
---@field WeatherParameters_Runtime_PREVIEW FWeatherParameters
---@field WeatherParameters_BEGINPLAY FWeatherParameters
---@field WeatherParameters_PREVIEW FWeatherParameters
---@field WeatherParameterCurves_PREVIEW FWeatherParameterCurves
---@field bIsRerunningConstructionScripts boolean
---@field SkyBoxControlDeviceType ESkyboxControlDeviceType
local ASTExtraSkyBox = {}

---@param InWeatherParameters FWeatherParameters
function ASTExtraSkyBox:BlendCompleted(InWeatherParameters) end

function ASTExtraSkyBox:ClearNeedTimer() end

function ASTExtraSkyBox:RefreshAtmosphereUpdate() end

function ASTExtraSkyBox:InitBackgroundWeather() end

---@param InPlayer APlayerController
function ASTExtraSkyBox:OnPlayerPostLogin(InPlayer) end

---@param InPlayer APlayerController
function ASTExtraSkyBox:LoadBackgroundWeather(InPlayer) end

function ASTExtraSkyBox:NeedUpdatePlayback() end

function ASTExtraSkyBox:OnRep_CurrentHour() end

function ASTExtraSkyBox:OnRep_FixedCurrentHour() end

function ASTExtraSkyBox:OnRep_DaysPassed() end

function ASTExtraSkyBox:OnRep_RemainingCycleTimeRatio() end

function ASTExtraSkyBox:UpdateSkyBoxHour() end

function ASTExtraSkyBox:InitTimeOfDay() end

function ASTExtraSkyBox:InitDayNightWeatherWeightData() end

---@param DeltaSeconds number
function ASTExtraSkyBox:UpdateTimeOfDay(DeltaSeconds) end

---@param Hour number
---@return boolean
function ASTExtraSkyBox:IsHourInDay(Hour) end

---@return number
function ASTExtraSkyBox:CalculateTimeProportions() end

function ASTExtraSkyBox:OnEnterDay() end

function ASTExtraSkyBox:OnEnterNight() end

---@param WeatherSequence UWeatherSequence
function ASTExtraSkyBox:UpdateAllPlayerWeather(WeatherSequence) end

---@param GameState string
function ASTExtraSkyBox:OnGameModeStateChanged(GameState) end

---@param IsDaytime boolean
---@param Index number
function ASTExtraSkyBox:GM_SetFixedWeatherTODSequence(IsDaytime, Index) end

---@param Time number
---@param bFixedTime boolean
function ASTExtraSkyBox:GM_SetTODCurTime(Time, bFixedTime) end

---@param Num number
function ASTExtraSkyBox:GM_SetTODDaysPassed(Num) end

---@param Index number
function ASTExtraSkyBox:GM_SetBackgroundWeather(Index) end

function ASTExtraSkyBox:SaveWeatherStyle() end

function ASTExtraSkyBox:LoadWeatherStyle() end

---@return boolean
function ASTExtraSkyBox:CheckPostProcessComponentsBisHaveDuplicateTags() end

function ASTExtraSkyBox:InitSkyBox() end

---@param InPlayer APlayerController
---@return boolean
function ASTExtraSkyBox:CheckBisCanChangePlayerWeatherSequence(InPlayer) end

---@param InFilterParams FWeatherParameters_PostProcess
---@param InFilterOpacity number
function ASTExtraSkyBox:ApplyFilterParameters(InFilterParams, InFilterOpacity) end

---@param InFilterParams FWeatherParameters_PostProcess
function ASTExtraSkyBox:SetFilterPostProcess(InFilterParams) end
