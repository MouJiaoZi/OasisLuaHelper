---@meta

---@class FLevelBlockSetting
---@field LevelBlockGroups ULuaArrayHelper<FLevelBlockGroup>
FLevelBlockSetting = {}


---@class FPostLevelBlockGenerateRuntimeData : ULuaSingleDelegate
FPostLevelBlockGenerateRuntimeData = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPostLevelBlockGenerateRuntimeData:Bind(Callback, Obj) end

---执行委托
function FPostLevelBlockGenerateRuntimeData:Execute() end


---@class ULevelBlocksDataComponent: UActorComponent
---@field LevelBlockLocations ULuaMapHelper<FLevelBlockGroup, FVector>
---@field LevelBlocksSpawnTransforms ULuaArrayHelper<FTransform>
---@field LevelBlockDataContainers ULuaArrayHelper<ULevelBlocksDataContainer>
---@field MaxExtent FVector2D
---@field LevelBlockGroups ULuaArrayHelper<FLevelBlockGroup>
---@field LandscapeMaterial FStringAssetReference
---@field LandscapeMaterial_PC FStringAssetReference
---@field LandscapeGeometry FStringAssetReference
---@field LandscapeGeometryMaterial FStringAssetReference
---@field TreesFlyLevel FStringAssetReference
---@field SurroundingTreesLevels ULuaArrayHelper<FStringAssetReference>
local ULevelBlocksDataComponent = {}
