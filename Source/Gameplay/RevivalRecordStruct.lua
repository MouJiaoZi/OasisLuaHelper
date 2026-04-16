---@meta

---@class ERevivalFailedReasonType
---@field ERFRT_Succeed number
---@field ERFRT_PlayerDead number
---@field ERFRT_Cancel number
---@field ERFRT_IDCardDestroyed number
---@field ERFRT_Interrupt number
---@field ERFRT_BeHit number
---@field ERFRT_Max_DoNothing number
ERevivalFailedReasonType = {}


---@class EIDCardDestroyReasonType
---@field EDRT_Revived number
---@field EDRT_Timeout number
---@field EDRT_PlayerExit number
---@field EDRT_TeamTerminated number
EIDCardDestroyReasonType = {}


---@class FPlayerRevivalInfo
---@field RevivedPlayerUID number
---@field PickerUID number
---@field TimeAfterIDCardPicked number
FPlayerRevivalInfo = {}


---@class FReportRevivalFlow
---@field RoleID number
---@field RevivalFailedReason number
---@field TowerLocation string
---@field RevivalTime string
---@field PlayerRevivalInfos ULuaArrayHelper<FPlayerRevivalInfo>
FReportRevivalFlow = {}


---@class FReportIDCardProduceFlow
---@field RoleID number
---@field DeathTime string
FReportIDCardProduceFlow = {}


---@class FReportIDCardPickUpFlow
---@field RoleID number
---@field PickerUID number
---@field RemainingCountDown number
FReportIDCardPickUpFlow = {}


---@class FReportIDCardDestroyFlow
---@field RoleID number
---@field DestroyReason number
---@field DestroyTime string
FReportIDCardDestroyFlow = {}
