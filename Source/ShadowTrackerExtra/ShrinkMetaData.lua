---@meta

---@class FCircleMeta
---@field Location FVector
---@field bTerminated boolean
FCircleMeta = {}


---@class UShrinkMetaData: UObject
---@field ShrinkCircleList ULuaArrayHelper<FCircleMeta>
---@field ShrinkRadius number
---@field bShowShrinkCircles boolean
local UShrinkMetaData = {}

function UShrinkMetaData:OnRep_ShrinkCircleList() end

function UShrinkMetaData:OnRep_ShrinkRadius() end
