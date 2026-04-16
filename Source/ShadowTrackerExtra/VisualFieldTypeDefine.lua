---@meta

---@class FVisualFieldLayer
---@field LayerFloorHeight number
---@field LayerRoofHeight number
---@field LayerID number
FVisualFieldLayer = {}


---@class FVisualFieldLayerConfig
---@field VisualLayerList ULuaArrayHelper<FVisualFieldLayer>
FVisualFieldLayerConfig = {}


---@class FVisualFieldMetaInfo
---@field Location FVector
---@field LayerID number
FVisualFieldMetaInfo = {}


---@class FVisibleActorInfo
---@field VisibleActorMetaInfo FVisualFieldMetaInfo
---@field VisibleActor AActor
FVisibleActorInfo = {}


---@class FVisualFieldCamp
---@field VisibleActorList ULuaArrayHelper<FVisibleActorInfo>
FVisualFieldCamp = {}


---@class FVisualFieldFrame
---@field VisualFieldFrameMap ULuaMapHelper<number, FVisualFieldCamp>
FVisualFieldFrame = {}


---@class FVisualFieldInfo
---@field ViewerLayerID number
---@field VisualFieldMetaInfoList ULuaArrayHelper<FVisualFieldMetaInfo>
FVisualFieldInfo = {}


---@class FVisualFieldFeatureParam
---@field VisualFieldFeatureClass UVisualFieldFeature
---@field VisualFieldUpdateInterval number
---@field MaxVisualFieldDistanceSquared number
---@field VisualCheckBoneList ULuaArrayHelper<string>
---@field DefaultFOVAngle number
---@field VisualCheckChanelList ULuaArrayHelper<ECollisionChannel>
FVisualFieldFeatureParam = {}


---@class FVisualField_FakeBoneLocTranslation
---@field BoneName string
---@field SimulateTranslationToRoot FVector
---@field SimulateAdaptionTranslation FVector
FVisualField_FakeBoneLocTranslation = {}


---@class FVisualField_FakeBoneSet
---@field FakeBoneSet ULuaArrayHelper<FVisualField_FakeBoneLocTranslation>
FVisualField_FakeBoneSet = {}


---@class FVisualFieldFeatureParam_AI
---@field VisualFieldFeatureClass UVisualFieldFeature
---@field bUseFakeBoneData boolean
---@field FakeEyeBoneName string
---@field FakeBoneLocTranslationMap ULuaMapHelper<EPawnState, FVisualField_FakeBoneSet>
FVisualFieldFeatureParam_AI = {}
