---@meta

---@class EDoorSyncTriggerBoxType
---@field None number
---@field Offset number
---@field Expand number
EDoorSyncTriggerBoxType = {}


---@class FDoorLocationMoation
---@field IgnoreMotionState boolean
---@field bIsActive boolean
---@field bIsExDoor boolean
---@field FromState number
---@field ToState number
---@field LocationFrom number
---@field LocationTo number
---@field LocationCurrent number
---@field LocationTime number
---@field LocationLerpTime number
---@field LocationCurrentTime number
---@field MoveOffset number
---@field NormalDir FVector
---@field OriginRelative FVector
---@field DoorMesh UStaticMeshComponent
FDoorLocationMoation = {}


---@class APUBGDoor_Sliding: APUBGDoor
---@field SyncTriggerBoxType EDoorSyncTriggerBoxType
---@field DoorMoveLength number
---@field DoorMoveLengthEx number
---@field DoorMoveDir FVector
---@field DoorMoveDirEx FVector
---@field OriginRelativeLocation FVector
---@field OriginRelativeLocationEx FVector
---@field SimulateTriggerBoxExtentSliding FVector
---@field SimulateTriggerBoxCenterSliding FVector
---@field SimulateTriggerBoxExtentSlidingEx FVector
---@field SimulateTriggerBoxCenterSlidingEx FVector
---@field DoorLocationMotionList ULuaArrayHelper<FDoorLocationMoation>
local APUBGDoor_Sliding = {}

---@param InIsExDoor boolean
---@return FVector
function APUBGDoor_Sliding:GetDoorWorldOffset(InIsExDoor) end

---@param InIsExDoor boolean
---@return FVector
function APUBGDoor_Sliding:GetDoorOffset(InIsExDoor) end

---@param InIsExDoor boolean
---@return FVector
function APUBGDoor_Sliding:GetTriggerBoxCenter(InIsExDoor) end

---@param InIsExDoor boolean
---@return FVector
function APUBGDoor_Sliding:GetTriggerBoxExtent(InIsExDoor) end
