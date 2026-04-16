---@meta

---@class WeatherUICountDownType
---@field UINone number
---@field UISuperCold number
---@field UILiveMode number
---@field UIMidAutu number
---@field UIDayToNight number
WeatherUICountDownType = {}


---@class ADynamicWeatherMgr: AActor
---@field WeatherChangeConfig FWeatherChangeConfig
---@field CurUseFixWeatherIndex number
---@field WeatherChangeControl FWeatherChangeControl
---@field DynamicWeatherLookupTable ULuaMapHelper<EWeatherStatusType, UDynamicWeatherController>
---@field ControllerRepData FWeatherControllerRepData
---@field ControllerRepDataForReplay FWeatherControllerRepData
---@field ServerElapsedTime number
---@field bAllowRPCRequire boolean
---@field NextWeatherStatus EWeatherStatusType
---@field NextWeatherCountDownTime number
---@field bEnableWeatherPredictionUI boolean
---@field OnDynamicWeatherChangeDelegate FOnDynamicWeatherChangeDelegate
---@field bDisableModifyControllerRepData boolean
---@field UICountDownType WeatherUICountDownType
---@field ForbidServerHandleRepData boolean @Client consider change weather, feishen, 20190921
---@field bDisableEffect boolean
local ADynamicWeatherMgr = {}

---@param Event FWeatherChangeEvent
function ADynamicWeatherMgr:OnWeatherChangeStarted(Event) end

---@param Event FWeatherChangeEvent
function ADynamicWeatherMgr:OnWeatherChangeSaturated(Event) end

---@param Event FWeatherChangeEvent
function ADynamicWeatherMgr:OnWeatherChangeRestoreStarted(Event) end

---@param Event FWeatherChangeEvent
function ADynamicWeatherMgr:OnWeatherChangeRestoreEnded(Event) end

function ADynamicWeatherMgr:StartTransition() end

function ADynamicWeatherMgr:RPCRequireControl() end

function ADynamicWeatherMgr:RPCRequire() end

function ADynamicWeatherMgr:HandleClientHasReactivated() end

---@param PC AUAEPlayerController
function ADynamicWeatherMgr:SoftReconnectRecoverData(PC) end

function ADynamicWeatherMgr:OnRep_ControllerData() end

function ADynamicWeatherMgr:OnRep_ControllerDataForReplay() end

function ADynamicWeatherMgr:ReinitInDemoReplay() end

---@param InitDataIn FWeatherControllerRepData
function ADynamicWeatherMgr:ClientInit(InitDataIn) end

---@return FWeatherDetailStatus
function ADynamicWeatherMgr:GetCurrentWeatherDetailStatus() end

---@param OutData FWeatherChangeSequenceItem
---@return boolean
function ADynamicWeatherMgr:GetNextWeatherData(OutData) end

---@param OutData FWeatherChangeSequenceItem
---@param WeatherStatusType EWeatherStatusType
---@return boolean
function ADynamicWeatherMgr:GetNextWeatherDataByWeatherType(OutData, WeatherStatusType) end

---@return number
function ADynamicWeatherMgr:GetInProgressElapsedTimeSecWithWeather() end

---@param WeatherStatus EWeatherStatusType
function ADynamicWeatherMgr:RPC_S2C_UINotify(WeatherStatus) end

function ADynamicWeatherMgr:RefreshWeatherPredictionUI() end

function ADynamicWeatherMgr:ForceStopDynamicWeatherChangeOnServer() end

function ADynamicWeatherMgr:ForceStartNextWeatherChangeOnServer() end

---可以直接跳到指定索引的天气(仅用于固定序列天气)
---@param WeatherIndex number
function ADynamicWeatherMgr:GotoSpecificWeather(WeatherIndex) end

---@param Type EWeatherStatusType
---@return number
function ADynamicWeatherMgr:GetNextWeatherCountDownTimeByType(Type) end

---@return number
function ADynamicWeatherMgr:GetGlobalWeatherSystemTimeOnServer() end

function ADynamicWeatherMgr:RPC_S2C_ForceStopDynamicWeatherChange() end

function ADynamicWeatherMgr:OnRep_NextWeatherCountDownTime() end

function ADynamicWeatherMgr:OnRep_bEnableWeatherPredictionUI() end
