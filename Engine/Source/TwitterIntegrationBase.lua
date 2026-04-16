---@meta

---The possible twitter request methods
---@class ETwitterRequestMethod
---@field TRM_Get number
---@field TRM_Post number
---@field TRM_Delete number
---@field TRM_MAX number
ETwitterRequestMethod = {}


---@class ETwitterIntegrationDelegate
---@field TID_AuthorizeComplete number
---@field TID_TweetUIComplete number
---@field TID_RequestComplete number
---@field TID_MAX number
ETwitterIntegrationDelegate = {}


---@class UTwitterIntegrationBase: UPlatformInterfaceBase
local UTwitterIntegrationBase = {}

---Perform any needed initialization
function UTwitterIntegrationBase:Init() end

---@return boolean
function UTwitterIntegrationBase:CanShowTweetUI() end

---Kicks off a tweet, using the platform to show the UI. If this returns false, or you are on a platform that doesn't support the UI, you can use the TwitterRequest method to perform a manual tweet using the Twitter API
---@param InitialMessage string
---@param URL string
---@param Picture string
---@return boolean
function UTwitterIntegrationBase:ShowTweetUI(InitialMessage, URL, Picture) end

---Starts the process of authorizing the local user(s). When TID_AuthorizeComplete is called, then GetNumAccounts() will return a valid number of accounts
---@return boolean
function UTwitterIntegrationBase:AuthorizeAccounts() end

---@return number
function UTwitterIntegrationBase:GetNumAccounts() end

---@param AccountIndex number
---@return string
function UTwitterIntegrationBase:GetAccountName(AccountIndex) end

---Kicks off a generic twitter request
---@param URL string
---@param ParamKeysAndValues ULuaArrayHelper<string>
---@param RequestMethod ETwitterRequestMethod
---@param AccountIndex number
---@return boolean
function UTwitterIntegrationBase:TwitterRequest(URL, ParamKeysAndValues, RequestMethod, AccountIndex) end
