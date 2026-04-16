---@meta

---@class UMultipleCheckClickActorComponent: UClickActorComponentBase
---@field CheckDelta number
---@field MaxTimeToSplitCheckProcess number
---@field CheckComponentList ULuaArrayHelper<UShapeComponent>
---@field CurrentQueryIndex number
---@field ActualCheckDelta number
---@field EachTickQueryNum number
local UMultipleCheckClickActorComponent = {}

function UMultipleCheckClickActorComponent:HandleEnable() end

function UMultipleCheckClickActorComponent:HandleDisable() end

---@param NewCheckComponent UShapeComponent
function UMultipleCheckClickActorComponent:AddCheckComponent(NewCheckComponent) end
