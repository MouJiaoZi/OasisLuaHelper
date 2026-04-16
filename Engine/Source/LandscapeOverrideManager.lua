---@meta

---@class FLBLandscapeVertexRef
---@field X number
---@field Y number
---@field SubX number
---@field SubY number
FLBLandscapeVertexRef = {}


---@class FLBLODHeights
FLBLODHeights = {}


---@class FLBVertexMap
---@field VertexMap ULuaMapHelper<FLBLandscapeVertexRef, FLBLODHeights>
FLBVertexMap = {}


---@class FLBRedirectStruct
---@field MaterialRedirect ULuaArrayHelper<UMaterialInterface>
FLBRedirectStruct = {}


---@class FLandscapeOverrideInstance
FLandscapeOverrideInstance = {}


---@class ULandscapeOverrideManager: UObject
---@field Landscape TLazyObjectPtr<ALandscape>
---@field LandscapeGuid FGuid
---@field LandscapeDataRectMin FIntPoint
---@field LandscapeDataRectMax FIntPoint
---@field LandscapeData FLevelBlockLandscapeData
---@field MaterialMap_Mobile ULuaMapHelper<FIntPoint, UMaterialInterface>
---@field MaterialMapRedirectIndex ULuaMapHelper<FIntPoint, number>
---@field MaterialRedirects ULuaArrayHelper<FLBRedirectStruct>
---@field BlendLayersMask number
---@field BlendLayersMask_Mobile number
---@field BlendLayersMask_PC number
---@field VisibilityLayerIndex number
---@field WeightmapLayerAllocations ULuaArrayHelper<FWeightmapLayerAllocationInfo>
---@field WeightmapLayerAllocations_Mobile ULuaArrayHelper<FWeightmapLayerAllocationInfo>
---@field WeightmapLayerAllocations_PC ULuaArrayHelper<FWeightmapLayerAllocationInfo>
---@field GeneratedInstances ULuaArrayHelper<FLandscapeOverrideInstance>
---@field VertexOrder ULuaArrayHelper<FLBLandscapeVertexRef>
---@field BorderVertexMap ULuaMapHelper<FIntPoint, FLBVertexMap>
---@field BorderVertexMapUsed ULuaMapHelper<FIntPoint, FLBVertexMap>
---@field bContainPCData boolean
local ULandscapeOverrideManager = {}
