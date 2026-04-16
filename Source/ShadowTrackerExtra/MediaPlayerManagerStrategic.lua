---@meta

---@class EMediaplayType
---@field None number
---@field MediaActorPlay number
---@field MediaUIPlay number
---@field PVActorPlay number
---@field PVUIPlay number
EMediaplayType = {}


---@class EMediaplayStatus
---@field None number
---@field Playing number
---@field Stop number
EMediaplayStatus = {}


---@class FMediaPlayerCacheData
---@field StopTimeStamp number
FMediaPlayerCacheData = {}


---@class FMediaPlayerData
---@field URLPath string
---@field PlayType EMediaplayType
---@field PlayStatus EMediaplayStatus
FMediaPlayerData = {}


---@class FOnMediaEndReached : ULuaSingleDelegate
FOnMediaEndReached = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMediaEndReached:Bind(Callback, Obj) end

---执行委托
function FOnMediaEndReached:Execute() end


---@class FOnMediaUIClosed : ULuaSingleDelegate
FOnMediaUIClosed = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMediaUIClosed:Bind(Callback, Obj) end

---执行委托
function FOnMediaUIClosed:Execute() end


---@class FOnMediaPlayFailed : ULuaSingleDelegate
FOnMediaPlayFailed = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMediaPlayFailed:Bind(Callback, Obj) end

---执行委托
function FOnMediaPlayFailed:Execute() end


---@class IMediaplayerInterface
IMediaplayerInterface = {}

---@param MoviePath string
---@param GameInstance UGameInstance
---@return string
function IMediaplayerInterface:GetRealVideoPath(MoviePath, GameInstance) end


---@class UMediaPlayerManagerStrategic: UAssetRefStrategicBase
---@field MaxPlayingCount number
---@field OnMediaEndReached FOnMediaEndReached
---@field OnMediaUIClosed FOnMediaUIClosed
---@field OnMediaPlayFailed FOnMediaPlayFailed
---@field OnMediaPlayFirstFrame FOnMediaPlayerMediaEvent
---@field RequestQueue ULuaArrayHelper<FMediaPlayerData>
---@field MediaPlayArray ULuaArrayHelper<FMediaPlayerData>
---@field MediaplayerPath string
---@field MediaTexturePath string
---@field MediaUITexturePath string
---@field MediaTextureDynamicPath string
---@field MediaDefaultTexture string
---@field PVMediaMaterialPath string
---@field VideoUIName string
---@field AKAudioEventPath string
---@field PVCachePath string
---@field CheckCacheDeltaTime number
---@field CachedTime number
---@field MediaCacheArray ULuaArrayHelper<FMediaPlayerCacheData>
local UMediaPlayerManagerStrategic = {}

---@param Object UObject
function UMediaPlayerManagerStrategic:StopPlayVidio(Object) end

---@param PlayID number
---@param InTime FTimespan
---@return boolean
function UMediaPlayerManagerStrategic:Seek(PlayID, InTime) end

function UMediaPlayerManagerStrategic:ClearPlayArray() end

---@param Object UObject
function UMediaPlayerManagerStrategic:StopPlayVideo_Inner(Object) end

---@param Url string
---@param ShowExitTime number
---@param LowDevice UTexture
---@param IsLoop boolean
---@return boolean
function UMediaPlayerManagerStrategic:PlayMediaOnUI(Url, ShowExitTime, LowDevice, IsLoop) end

---@return boolean
function UMediaPlayerManagerStrategic:CloseMediaUI() end

---@param EventCode number
---@param nParam1 number
---@param nParam2 number
---@param strMsg string
function UMediaPlayerManagerStrategic:OnPVMediaEventChanged(EventCode, nParam1, nParam2, strMsg) end

---@param OpenedUrl string
function UMediaPlayerManagerStrategic:OnMediaHasLoaded(OpenedUrl) end

function UMediaPlayerManagerStrategic:OnMediaEndReach() end

---@param OpenedUrl string
function UMediaPlayerManagerStrategic:OnMediaOpenFailed(OpenedUrl) end

function UMediaPlayerManagerStrategic:OnMediaFirstFrame() end

function UMediaPlayerManagerStrategic:LoadMeterialObject() end

---@param AssetRef FSoftObjectPath
function UMediaPlayerManagerStrategic:OnAsyncLoadPVMat(AssetRef) end

function UMediaPlayerManagerStrategic:CleanMediaCacheArray() end

---@return string
function UMediaPlayerManagerStrategic:GetCachePVPath() end

---@param URLPath string
---@return string
function UMediaPlayerManagerStrategic:GetMediaRealPath(URLPath) end

---@param obj UObject
---@param URLPath string
---@return FMediaPlayerData
function UMediaPlayerManagerStrategic:GenerateDynamicInstance(obj, URLPath) end
