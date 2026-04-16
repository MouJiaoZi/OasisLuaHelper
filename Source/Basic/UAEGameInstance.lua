---@meta

---@class EPlaybackType
---@field NoReplay number
---@field CompletePlayback number
---@field DeathPlayback number
---@field ClientCompletePlayback number
---@field WonderfulPlayback number
---@field ObPlayback number
---@field LivePlayback number
---@field Max number
EPlaybackType = {}


---@class EPBRecordCond
---@field Default number
---@field RatingID number
---@field IDIP_OpenID number
---@field MatchRoom number
---@field IDIP_All number
---@field Security number
---@field IDIP_Single number
---@field CompetitionOnline number
---@field WeishiWonderful number
---@field WechatLive number
---@field IsRoomMode number
---@field WechatSocial number
---@field MachineLearningAI number
---@field TrueSight number
---@field Security_LiveReplay number
---@field IDIP_Live number
---@field Camp number
---@field LiveReplayParser number
---@field CampLive number
---@field DS_SecurityLive number
---@field UGCReplay number
---@field DeathReplay number
---@field ClientCompleteReplay number
---@field Max number
EPBRecordCond = {}


---@class FClientBaseInfo
---@field OpenID string
---@field RoleID number
---@field GameSvrId string
---@field GameAppID string
---@field AreaID number
---@field PlatID number
---@field ZoneID string
---@field BattleID number
---@field GameID number
---@field BattleServerIP string
---@field BattleServerPort number
---@field UserName string
---@field PicUrl string
---@field PlayerKey number
---@field PlayerName string
---@field SubModeId number
---@field PacketKey string
---@field AuthKey string
---@field WeatherID number
---@field WeatherLevelName string
---@field PCWeatherID number
---@field PCWeatherLevelName string
---@field WeatherTime number
---@field MrpcsData ULuaArrayHelper<number>
---@field loginChannel number
FClientBaseInfo = {}


---@class FGameInstanceInit : ULuaMulticastDelegate
FGameInstanceInit = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UGameInstance) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameInstanceInit:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UGameInstance
function FGameInstanceInit:Broadcast(Param1) end


---@class FGameInstanceShutdown : ULuaMulticastDelegate
FGameInstanceShutdown = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UGameInstance) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameInstanceShutdown:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UGameInstance
function FGameInstanceShutdown:Broadcast(Param1) end


---@class FOnBattleResult : ULuaMulticastDelegate
FOnBattleResult = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FBattleResultData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBattleResult:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FBattleResultData
function FOnBattleResult:Broadcast(Param1) end


---@class FOnPreBattleResult : ULuaSingleDelegate
FOnPreBattleResult = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPreBattleResult:Bind(Callback, Obj) end

---执行委托
function FOnPreBattleResult:Execute() end


---@class FOnGvoiceRoomCreate : ULuaSingleDelegate
FOnGvoiceRoomCreate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGvoiceRoomCreate:Bind(Callback, Obj) end

---执行委托
function FOnGvoiceRoomCreate:Execute() end


---@class FOnGvoiceRoomQuit : ULuaSingleDelegate
FOnGvoiceRoomQuit = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGvoiceRoomQuit:Bind(Callback, Obj) end

---执行委托
function FOnGvoiceRoomQuit:Execute() end


---@class FOnFlashFXChanged : ULuaSingleDelegate
FOnFlashFXChanged = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFlashFXChanged:Bind(Callback, Obj) end

---执行委托
function FOnFlashFXChanged:Execute() end


---@class FOnPreReturnToLobby : ULuaSingleDelegate
FOnPreReturnToLobby = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPreReturnToLobby:Bind(Callback, Obj) end

---执行委托
function FOnPreReturnToLobby:Execute() end


---@class FOnEnterBattleSuccess : ULuaSingleDelegate
FOnEnterBattleSuccess = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEnterBattleSuccess:Bind(Callback, Obj) end

---执行委托
function FOnEnterBattleSuccess:Execute() end


---@class UUAEGameInstance: UGameInstance
---@field ClientBaseInfo FClientBaseInfo
---@field OnPlayerBegin FOnPlayerBeginOrEnd
---@field OnPlayerEnd FOnPlayerBeginOrEnd
---@field DynamicLevelsID ULuaArrayHelper<number>
local UUAEGameInstance = {}

---@return number
function UUAEGameInstance:GetDeviceLevel() end

function UUAEGameInstance:AkEvents() end

function UUAEGameInstance:AkBanks() end

function UUAEGameInstance:StartLocalReplayContex() end

---@param ReplayFile string
function UUAEGameInstance:LocalReplayRecording(ReplayFile) end

function UUAEGameInstance:LocalReplayRecordingStop() end

---@param ReplayFile string
function UUAEGameInstance:LocalReplayPlaying(ReplayFile) end

---@param InCmd string
function UUAEGameInstance:AddCmd(InCmd) end

---@param ExtraStr string
---@param FilePath string
function UUAEGameInstance:PostFileToTGPA(ExtraStr, FilePath) end
