---@meta

---@class EDrivingCheckPointState
---@field DCPS_Invalid number
---@field DCPS_Unpass number
---@field DCPS_Pass number
EDrivingCheckPointState = {}


---@class ATriggerItem_DrivingCheckPoint: ATriggerBox
---@field ExtraMsgInfo string
---@field CheckPointState EDrivingCheckPointState
---@field bIsActive boolean
local ATriggerItem_DrivingCheckPoint = {}

function ATriggerItem_DrivingCheckPoint:Activate() end

function ATriggerItem_DrivingCheckPoint:Deactivate() end

---@param OverlappedActor AActor
---@param Other AActor
function ATriggerItem_DrivingCheckPoint:OnTriggerEnter(OverlappedActor, Other) end

---@param OverlappedActor AActor
---@param other AActor
function ATriggerItem_DrivingCheckPoint:OnTriggerExit(OverlappedActor, other) end

function ATriggerItem_DrivingCheckPoint:OnRep_ChangeShow() end
