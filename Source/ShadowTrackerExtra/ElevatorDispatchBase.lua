---@meta

---@class EElevatorOp
---@field EElevator_None number @无操作
---@field EElevator_Up number @上行
---@field EElevator_Down number @下行
EElevatorOp = {}


---@class EElevatorStatus
---@field EElevatorStatus_Wait number @等待中
---@field EElevatorStatus_Up number @上行中
---@field EElevatorStatus_Down number @下行中
EElevatorStatus = {}


---@class EElevatorOrderSortMode
---@field EEOSM_Ascending number @升序
---@field EEOSM_Descending number @降序
EElevatorOrderSortMode = {}


---@class FElevatorOrder
---@field ElevatorOp EElevatorOp
---@field DesiredFloor number
---@field bInside boolean
FElevatorOrder = {}


---@class UElevatorDispatchBase: UActorComponent
local UElevatorDispatchBase = {}

---@param PendingOrder FElevatorOrder
---@return boolean
function UElevatorDispatchBase:RemoveOneOrder(PendingOrder) end

---@param ElevatorOrderSortMode EElevatorOrderSortMode
function UElevatorDispatchBase:SortOrderList(ElevatorOrderSortMode) end
