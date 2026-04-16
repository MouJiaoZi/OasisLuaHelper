---@meta

---@class USimpleConstructionScript: UObject
---@field RootNodes ULuaArrayHelper<USCS_Node> @Root nodes of the construction script
---@field AllNodes ULuaArrayHelper<USCS_Node> @All nodes that exist in the hierarchy of this SimpleConstructionScript
---@field NodesRemovedInCompile ULuaArrayHelper<USCS_Node> @junyuandeng: temp container
---@field AllNodesIncludeEditorOnly ULuaArrayHelper<USCS_Node>
---@field ActorComponentNodes_DEPRECATED ULuaArrayHelper<USCS_Node> @(DEPRECATED) Actor Component based nodes are stored here.  They cannot be in the tree hierarchy
local USimpleConstructionScript = {}
