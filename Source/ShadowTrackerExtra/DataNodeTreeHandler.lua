---@meta

---@class UDataNodeTreeHandler: UObject
---@field NodeTreeRootTag string
---@field NodeTreeDesc string
---@field bIsTreeCreated boolean
---@field NodeTree FDataNodeTree
local UDataNodeTreeHandler = {}

---@param InOwnerActor AActor
function UDataNodeTreeHandler:InitTreeHandler(InOwnerActor) end

function UDataNodeTreeHandler:DestroyTreeHandler() end

function UDataNodeTreeHandler:LoadTreeData() end

function UDataNodeTreeHandler:ReleaseTreeData() end

function UDataNodeTreeHandler:BP_OnLoadTreeData() end

---@param NodeFullTag string
---@param NodeValueType ENodeDataValueType
---@param TagConfigID number
function UDataNodeTreeHandler:AddNewNode(NodeFullTag, NodeValueType, TagConfigID) end

---@param OutInfo FNodeShowingInfo
---@param InNodeFullTag string
---@param bIncludeChildren boolean
function UDataNodeTreeHandler:GetNodeShowingInfo(OutInfo, InNodeFullTag, bIncludeChildren) end

---@param OutInfos ULuaArrayHelper<FNodeShowingInfo>
---@param InNodeFullTag string
---@param bSkipDefaultItem boolean
---@param bIncludeChildren boolean
function UDataNodeTreeHandler:GetNodeChildrenShowingInfos(OutInfos, InNodeFullTag, bSkipDefaultItem, bIncludeChildren) end

---@param OutInfos ULuaArrayHelper<FNodeShowingInfo>
---@param bSkipDefaultItem boolean
---@param bIncludeChildren boolean
function UDataNodeTreeHandler:GetAllNodeShowingInfos(OutInfos, bSkipDefaultItem, bIncludeChildren) end
