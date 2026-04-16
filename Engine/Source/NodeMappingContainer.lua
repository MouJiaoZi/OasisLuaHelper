---@meta

---@class FNodeMap
---@field TargetNodeName string
---@field SourceToTargetTransform FTransform
FNodeMap = {}


---Animation Controller Mapping data container - this contains node mapping data
---@class UNodeMappingContainer: UObject
---@field NodeMapping ULuaMapHelper<string, FNodeMap>
---@field SourceAsset UBlueprint
local UNodeMappingContainer = {}
