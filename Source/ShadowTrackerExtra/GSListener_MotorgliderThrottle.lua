---@meta

---滑翔机引导结束条件
---@class UGSListener_MotorgliderThrottle: USTNewbieGuideSuccessListenerBase
---@field OuterName string
---@field WidgetName string
---@field bUseContains boolean
---@field LogicManger string
---@field LeaveAsSuccess boolean
---@field CurGuideIndex number
---@field BindClickEvent boolean
---@field BindReleaseEvent boolean
local UGSListener_MotorgliderThrottle = {}

function UGSListener_MotorgliderThrottle:OnButtonClick() end

function UGSListener_MotorgliderThrottle:OnButtonRelease() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UGSListener_MotorgliderThrottle:OnLeaveVehicle(Character, SeatType, IsSucc) end
