---@meta

---@class FOnGameUserSettingsUINeedsUpdate : ULuaSingleDelegate
FOnGameUserSettingsUINeedsUpdate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameUserSettingsUINeedsUpdate:Bind(Callback, Obj) end

---执行委托
function FOnGameUserSettingsUINeedsUpdate:Execute() end


---Stores user settings for a game (for example graphics and sound settings), with the ability to save and load to and from a file.
---@class UGameUserSettings: UObject
---@field bUseVSync boolean @Whether to use VSync or not. (public to allow UI to connect to it)
---@field ResolutionSizeX number @Game screen resolution width, in pixels.
---@field ResolutionSizeY number @Game screen resolution height, in pixels.
---@field LastUserConfirmedResolutionSizeX number @Game screen resolution width, in pixels.
---@field LastUserConfirmedResolutionSizeY number @Game screen resolution height, in pixels.
---@field IsBorderless boolean @Is game window borderless added by windzjliu
---@field BorderlessMode number
---@field WindowPosX number @Window PosX
---@field WindowPosY number @Window PosY
---@field FullscreenMode number @Game window fullscreen mode 0 = Fullscreen 1 = Windowed fullscreen 2 = Windowed
---@field LastConfirmedFullscreenMode number @Last user confirmed fullscreen mode setting.
---@field PreferredFullscreenMode number @Fullscreen mode to use when toggling between windowed and fullscreen. Same values as r.FullScreenMode.
---@field Version number @All settings will be wiped and set to default if the serialized version differs from UE_GAMEUSERSETTINGS_VERSION.
---@field AudioQualityLevel number
---@field FrameRateLimit number @Frame rate cap
---@field DesiredScreenWidth number @Desired screen width used to calculate the resolution scale when user changes display mode
---@field bUseDesiredScreenHeight boolean @If true, the desired screen height will be used to scale the render resolution automatically.
---@field DesiredScreenHeight number @Desired screen height used to calculate the resolution scale when user changes display mode
---@field LastRecommendedScreenWidth number @Result of the last benchmark; calculated resolution to use.
---@field LastRecommendedScreenHeight number @Result of the last benchmark; calculated resolution to use.
---@field LastCPUBenchmarkResult number @Result of the last benchmark (CPU); -1 if there has not been a benchmark run
---@field LastGPUBenchmarkResult number @Result of the last benchmark (GPU); -1 if there has not been a benchmark run
---@field LastCPUBenchmarkSteps ULuaArrayHelper<number> @Result of each individual sub-section of the last CPU benchmark; empty if there has not been a benchmark run
---@field LastGPUBenchmarkSteps ULuaArrayHelper<number> @Result of each individual sub-section of the last GPU benchmark; empty if there has not been a benchmark run
---@field LastGPUBenchmarkMultiplier number @Multiplier used against the last GPU benchmark
---@field bUseHDRDisplayOutput boolean @HDR
---@field HDRDisplayOutputNits number @HDR
---@field OnGameUserSettingsUINeedsUpdate FOnGameUserSettingsUINeedsUpdate
local UGameUserSettings = {}

---Applies all current user settings to the game and saves to permanent storage (e.g. file), optionally checking for command line overrides.
---@param bCheckForCommandLineOverrides boolean
function UGameUserSettings:ApplySettings(bCheckForCommandLineOverrides) end

function UGameUserSettings:ApplyNonResolutionSettings() end

---@param bCheckForCommandLineOverrides boolean
function UGameUserSettings:ApplyResolutionSettings(bCheckForCommandLineOverrides) end

---Returns the user setting for game screen resolution, in pixels.
---@return FIntPoint
function UGameUserSettings:GetScreenResolution() end

---Returns the last confirmed user setting for game screen resolution, in pixels.
---@return FIntPoint
function UGameUserSettings:GetLastConfirmedScreenResolution() end

---Returns user's desktop resolution, in pixels.
---@return FIntPoint
function UGameUserSettings:GetDesktopResolution() end

---Sets the user setting for game screen resolution, in pixels.
---@param Resolution FIntPoint
function UGameUserSettings:SetScreenResolution(Resolution) end

---IsBorderless getter and setter added by windzjliu
---@return boolean
function UGameUserSettings:GetIsBorderless() end

---@param InIsBorderless boolean
function UGameUserSettings:SetIsBorderless(InIsBorderless) end

---@return number
function UGameUserSettings:GetBorderlessMode() end

---@param InBorderlessMode number
function UGameUserSettings:SetBorderlessMode(InBorderlessMode) end

---Returns the user setting for game window fullscreen mode.
---@return EWindowMode
function UGameUserSettings:GetFullscreenMode() end

---Returns the last confirmed user setting for game window fullscreen mode.
---@return EWindowMode
function UGameUserSettings:GetLastConfirmedFullscreenMode() end

---Sets the user setting for the game window fullscreen mode. See UGameUserSettings::FullscreenMode.
---@param InFullscreenMode EWindowMode
function UGameUserSettings:SetFullscreenMode(InFullscreenMode) end

---Returns the user setting for game window fullscreen mode.
---@return EWindowMode
function UGameUserSettings:GetPreferredFullscreenMode() end

---Sets the user setting for vsync. See UGameUserSettings::bUseVSync.
---@param bEnable boolean
function UGameUserSettings:SetVSyncEnabled(bEnable) end

---Returns the user setting for vsync.
---@return boolean
function UGameUserSettings:IsVSyncEnabled() end

---Checks if the Screen Resolution user setting is different from current
---@return boolean
function UGameUserSettings:IsScreenResolutionDirty() end

---Checks if the FullscreenMode user setting is different from current
---@return boolean
function UGameUserSettings:IsFullscreenModeDirty() end

---Checks if the vsync user setting is different from current system setting
---@return boolean
function UGameUserSettings:IsVSyncDirty() end

---Mark current video mode settings (fullscreenmode/resolution) as being confirmed by the user
function UGameUserSettings:ConfirmVideoMode() end

---Revert video mode (fullscreenmode/resolution) back to the last user confirmed values
function UGameUserSettings:RevertVideoMode() end

---Set scalability settings to sensible fallback values, for use when the benchmark fails or potentially causes a crash
function UGameUserSettings:SetBenchmarkFallbackValues() end

---Sets the user's audio quality level setting
---@param QualityLevel number
function UGameUserSettings:SetAudioQualityLevel(QualityLevel) end

---Sets the user's frame rate limit (0 will disable frame rate limiting)
---@param NewLimit number
function UGameUserSettings:SetFrameRateLimit(NewLimit) end

---Gets the user's frame rate limit (0 indiciates the frame rate limit is disabled)
---@return number
function UGameUserSettings:GetFrameRateLimit() end

---@param Value number
function UGameUserSettings:SetOverallScalabilityLevel(Value) end

---@return number
function UGameUserSettings:GetOverallScalabilityLevel() end

---@param CurrentScaleNormalized number
---@param CurrentScaleValue number
---@param MinScaleValue number
---@param MaxScaleValue number
function UGameUserSettings:GetResolutionScaleInformation(CurrentScaleNormalized, CurrentScaleValue, MinScaleValue, MaxScaleValue) end

---@param CurrentScaleNormalized number
---@param CurrentScaleValue number
---@param MinScaleValue number
---@param MaxScaleValue number
function UGameUserSettings:GetResolutionScaleInformationEx(CurrentScaleNormalized, CurrentScaleValue, MinScaleValue, MaxScaleValue) end

---@param NewScaleValue number
function UGameUserSettings:SetResolutionScaleValue(NewScaleValue) end

---@param NewScaleValue number
function UGameUserSettings:SetResolutionScaleValueEx(NewScaleValue) end

---@param NewScaleNormalized number
function UGameUserSettings:SetResolutionScaleNormalized(NewScaleNormalized) end

---@param Value number
function UGameUserSettings:SetViewDistanceQuality(Value) end

---@return number
function UGameUserSettings:GetViewDistanceQuality() end

---@param Value number
function UGameUserSettings:SetShadowQuality(Value) end

---@return number
function UGameUserSettings:GetShadowQuality() end

---@param Value number
function UGameUserSettings:SetAntiAliasingQuality(Value) end

---@return number
function UGameUserSettings:GetAntiAliasingQuality() end

---@param Value number
function UGameUserSettings:SetTextureQuality(Value) end

---@return number
function UGameUserSettings:GetTextureQuality() end

---@param Value number
function UGameUserSettings:SetVisualEffectQuality(Value) end

---@return number
function UGameUserSettings:GetVisualEffectQuality() end

---@param Value number
function UGameUserSettings:SetPostProcessingQuality(Value) end

---@return number
function UGameUserSettings:GetPostProcessingQuality() end

---@param Value number
function UGameUserSettings:SetFoliageQuality(Value) end

---@return number
function UGameUserSettings:GetFoliageQuality() end

---Checks if any user settings is different from current
---@return boolean
function UGameUserSettings:IsDirty() end

---Validates and resets bad user settings to default. Deletes stale user settings file if necessary.
function UGameUserSettings:ValidateSettings() end

---Loads the user settings from persistent storage
---@param bForceReload boolean
function UGameUserSettings:LoadSettings(bForceReload) end

---Save the user settings to persistent storage (automatically happens as part of ApplySettings)
function UGameUserSettings:SaveSettings() end

---This function resets all settings to the current system settings
function UGameUserSettings:ResetToCurrentSettings() end

function UGameUserSettings:SetToDefaults() end

---Gets the desired resolution quality based on DesiredScreenWidth/Height and the current screen resolution
---@return number
function UGameUserSettings:GetDefaultResolutionScale() end

---Gets the recommended resolution quality based on LastRecommendedScreenWidth/Height and the current screen resolution
---@return number
function UGameUserSettings:GetRecommendedResolutionScale() end

---@return FIntPoint
function UGameUserSettings:GetDefaultResolution() end

---@return FIntPoint
function UGameUserSettings:GetDefaultWindowPosition() end

---@return EWindowMode
function UGameUserSettings:GetDefaultWindowMode() end

---Runs the hardware benchmark and populates ScalabilityQuality as well as the last benchmark results config members, but does not apply the settings it determines. Designed to be called in conjunction with ApplyHardwareBenchmarkResults
---@param WorkScale number
---@param CPUMultiplier number
---@param GPUMultiplier number
function UGameUserSettings:RunHardwareBenchmark(WorkScale, CPUMultiplier, GPUMultiplier) end

---Applies the settings stored in ScalabilityQuality and saves settings
function UGameUserSettings:ApplyHardwareBenchmarkResults() end

---Whether the curently running system supports HDR display output
---@return boolean
function UGameUserSettings:SupportsHDRDisplayOutput() end

---Enables or disables HDR display output. Can be called again to change the desired nit level
---@param bEnable boolean
---@param DisplayNits number
function UGameUserSettings:EnableHDRDisplayOutput(bEnable, DisplayNits) end

---Returns 0 if HDR isn't supported or is turned off
---@return number
function UGameUserSettings:GetCurrentHDRDisplayNits() end

---@return boolean
function UGameUserSettings:IsHDREnabled() end
