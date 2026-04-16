---@meta

---@class FPositionMarkMountINfo
---@field TempID number
---@field NetRole ENetRole
FPositionMarkMountINfo = {}


---@class UPositionMarksMountComponent: UActorComponent
---@field WantMountList ULuaArrayHelper<FPositionMarkMountINfo>
---@field AutoMountOnBeginPlay boolean
---@field AutoUnmountOnEndPlay boolean
local UPositionMarksMountComponent = {}

function UPositionMarksMountComponent:MountPositionMarkList() end

function UPositionMarksMountComponent:UnmountPositionMarkList() end
