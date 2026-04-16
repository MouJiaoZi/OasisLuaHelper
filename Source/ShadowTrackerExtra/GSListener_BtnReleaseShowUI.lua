---@meta

---@class UGSListener_BtnReleaseShowUI: USTNewbieGuideSuccessListenerBase
---@field WidgetName ULuaArrayHelper<string>
---@field OuterName string
---@field bUseContains boolean
---@field LogicManger string
---@field BindedButton ULuaArrayHelper<UButton>
---@field CurGuideIndex number
---@field leaveAsSuccess boolean
---@field NeedShowWidgetName string
---@field NeedShowOuterName string
local UGSListener_BtnReleaseShowUI = {}

function UGSListener_BtnReleaseShowUI:OnButtonClick() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UGSListener_BtnReleaseShowUI:OnOnLeaveVehicle(Character, SeatType, IsSucc) end
