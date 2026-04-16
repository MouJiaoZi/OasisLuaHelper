---@meta

---@class EAdManagerDelegate
---@field AMD_ClickedBanner number
---@field AMD_UserClosedAd number
---@field AMD_MAX number
EAdManagerDelegate = {}


---Delegate called when user clicks on an banner ad. Base class already handles pausing, so a delegate is only needed if you need extra handling. If you set it to a PC or other actor function, make sure to set it back when switching levels.
---@class FOnUserClickedBanner : ULuaSingleDelegate
FOnUserClickedBanner = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUserClickedBanner:Bind(Callback, Obj) end

---执行委托
function FOnUserClickedBanner:Execute() end


---Delegate called when user closes an ad (after clicking on banner). Base class already handles pausing, so a delegate is only needed if you need extra handling.  If you set it to a PC or other actor function, make sure to set it back when switching levels.
---@class FOnUserClosedAdvertisement : ULuaSingleDelegate
FOnUserClosedAdvertisement = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUserClosedAdvertisement:Bind(Callback, Obj) end

---执行委托
function FOnUserClosedAdvertisement:Execute() end


---@class UInGameAdManager: UPlatformInterfaceBase
---@field bShouldPauseWhileAdOpen number @If true, the game will pause when the user clicks on the ad, which could take over the screen
---@field ClickedBannerDelegates ULuaArrayHelper<FOnUserClickedBanner>
---@field ClosedAdDelegates ULuaArrayHelper<FOnUserClosedAdvertisement>
local UInGameAdManager = {}
