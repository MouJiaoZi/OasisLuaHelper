---@meta

---@class FKillEventInfo
FKillEventInfo = {}


---@class FKillingEventState
FKillingEventState = {}


---@class FWeaponKillTime
FWeaponKillTime = {}


---@class FWonderfulReplayHeadInfo
---@field picurl string
---@field uid string
---@field curAvatarBoxid number
---@field VsTeamLevel number
---@field BadgeID ULuaArrayHelper<number>
---@field sex number
---@field PlayerLevel number
---@field Name string
FWonderfulReplayHeadInfo = {}


---@class FWonderfulReplayUIRelease : ULuaSingleDelegate
FWonderfulReplayUIRelease = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWonderfulReplayUIRelease:Bind(Callback, Obj) end

---执行委托
function FWonderfulReplayUIRelease:Execute() end


---@class FOnWonderfulReplayFastforwardFinished : ULuaSingleDelegate
FOnWonderfulReplayFastforwardFinished = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWonderfulReplayFastforwardFinished:Bind(Callback, Obj) end

---执行委托
function FOnWonderfulReplayFastforwardFinished:Execute() end


---@class FWonderfulReplayGameStateReadyDelegate : ULuaSingleDelegate
FWonderfulReplayGameStateReadyDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWonderfulReplayGameStateReadyDelegate:Bind(Callback, Obj) end

---执行委托
function FWonderfulReplayGameStateReadyDelegate:Execute() end


---@class UWonderfulPlayback: UGameReplay
---@field bWonderfulPlaybackEnable boolean
---@field curPlayerTemaID number
---@field IsOpenWonderfulReplay boolean
---@field headinfolist ULuaMapHelper<string, FWonderfulReplayHeadInfo>
---@field OnWonderfulReplayUIRelease FWonderfulReplayUIRelease
---@field OnWonderfulReplayFastforwardFinished FOnWonderfulReplayFastforwardFinished
---@field WonderfulReplayGameStateReadyHandler FWonderfulReplayGameStateReadyDelegate
local UWonderfulPlayback = {}

---@param MVPPlayerUID string
function UWonderfulPlayback:SetPlayListPerReplay(MVPPlayerUID) end
