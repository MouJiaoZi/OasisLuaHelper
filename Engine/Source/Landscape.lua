---@meta

---@class ELandscapeSetupErrors
---@field LSE_None number
---@field LSE_NoLandscapeInfo number @No Landscape Info available.
---@field LSE_CollsionXY number @There was already component with same X,Y.
---@field LSE_NoLayerInfo number @No Layer Info, need to add proper layers.
---@field LSE_MAX number
ELandscapeSetupErrors = {}


---@class EMyLandscapePlatfromConfiguration
---@field PC number
---@field Mobile number
EMyLandscapePlatfromConfiguration = {}


---@class FMyLandscapeConfigurationParams
---@field SaveAssetNameBSM string
---@field SaveAssetPathBSM string
---@field ImproveLODToBuild boolean
---@field SaveExtendDataBSM boolean
---@field IniLODLevelBSM number
---@field MinLODLevelBSM number
---@field FarFactorBSM number
---@field EnableCullingUnderHeightBSM boolean
---@field CullingUnderHeightBSM number
---@field SkirtDeepZBSM number
---@field SkirtAngleBSM number
---@field BorderUVOffsetBSM number
---@field ComponentSizeQuadsReducedBSM number
---@field HighQualityMesh UStaticMesh
---@field HighQualityMeshDestroyHight number
FMyLandscapeConfigurationParams = {}


---@class ALandscape: ALandscapeProxy
---@field bUseLandscapeDeform boolean
local ALandscape = {}
