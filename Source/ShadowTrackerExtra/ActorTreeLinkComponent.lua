---@meta

---@class UActorTreeLinkComponent: UActorComponent
---@field Id number
---@field Links ULuaSetHelper<AActor>
local UActorTreeLinkComponent = {}

function UActorTreeLinkComponent:TrimUniqueLinksToArray() end

function UActorTreeLinkComponent:RetriveLinksToSet() end
