---@meta

---@class UGSListener_OnButtonClick: USTNewbieGuideSuccessListenerBase
---@field WidgetName ULuaArrayHelper<string>
---@field bIsListeningOnPressed boolean
---@field OuterName string
---@field bUseContains boolean
---@field LogicManger string
---@field DebugUploadKeyStr string
---@field BindedButton ULuaArrayHelper<UButton>
local UGSListener_OnButtonClick = {}

function UGSListener_OnButtonClick:TimerCallback() end

function UGSListener_OnButtonClick:OnButtonClick() end
