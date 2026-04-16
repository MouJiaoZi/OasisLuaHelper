---@meta

---A node in a named hierarchy
---@class FNodeObject
---@field Name string @The name of this node
---@field ParentName string @The name of this node's parent
FNodeObject = {}


---Hierarchy of nodes
---@class FNodeHierarchyData
---@field Nodes ULuaArrayHelper<FNodeObject> @Node hierarchy data
---@field Transforms ULuaArrayHelper<FTransform> @Node transform data
---@field NodeNameToIndexMapping ULuaMapHelper<string, number> @Transient look up mapping from name to index to array
FNodeHierarchyData = {}


---@class FNodeHierarchyWithUserData
---@field Hierarchy FNodeHierarchyData
FNodeHierarchyWithUserData = {}
