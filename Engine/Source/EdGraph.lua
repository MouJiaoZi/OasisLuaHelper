---@meta

---@class FGraphReference
---@field GraphGuid FGuid
FGraphReference = {}


---@class UEdGraph: UObject
---@field Schema UEdGraphSchema @The schema that this graph obeys
---@field Nodes ULuaArrayHelper<UEdGraphNode> @Set of all nodes in this graph
---@field bEditable number @If true, graph can be edited by the user
---@field bAllowDeletion number @If true, graph can be deleted from the whatever container it is in. For FunctionGraphs this flag is reset to false on load (unless the function is the construction script or AnimGraph)
---@field bAllowRenaming number @If true, graph can be renamed; Note: Graph can also be renamed if bAllowDeletion is true currently
local UEdGraph = {}
