---@meta

---@class UGSListener_BtnEvent: USTNewbieGuideSuccessListenerBase
---@field UIClass UUAEUserWidget
---@field ButtonName string
---@field BindType number
local UGSListener_BtnEvent = {}

---@param UAEWidget UUAEUserWidget
---@param InWorld UWorld
function UGSListener_BtnEvent:OnUAEUserWdigetNativeConstruct(UAEWidget, InWorld) end

function UGSListener_BtnEvent:OnButtonClick() end
