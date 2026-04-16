---@meta

---@class FCommonEntityTypeConfig
---@field EntityTypeName FGameplayTag
---@field ActorClasses ULuaArrayHelper<AActor>
---@field CollisionChannels ULuaArrayHelper<ECollisionChannel>
FCommonEntityTypeConfig = {}


---@class UCommonEntityTypeConfigDataAsset: UDataAsset
---@field EntityTypeConfigs ULuaArrayHelper<FCommonEntityTypeConfig>
local UCommonEntityTypeConfigDataAsset = {}


---@class UCommonEntityTypeFuncLib: UBlueprintFunctionLibrary
local UCommonEntityTypeFuncLib = {}

---判断Actor是否属于指定的实体类型
---@param Actor AActor
---@param EntityTypeName string
---@return boolean
function UCommonEntityTypeFuncLib:IsActorOfEntityType(Actor, EntityTypeName) end

---获取Actor的实体类型（返回第一个匹配的）
---@param Actor AActor
---@return string
function UCommonEntityTypeFuncLib:GetActorEntityType(Actor) end

---获取Actor的所有匹配的实体类型
---@param Actor AActor
function UCommonEntityTypeFuncLib:GetActorEntityTypes(Actor) end

---检测指定EntityType的Actor - Box
---@param WorldContext UObject
---@param EntityTypeName string
---@param Location FVector
---@param HalfExtent FVector
---@param Rotation FRotator
function UCommonEntityTypeFuncLib:OverlapBoxByEntityType(WorldContext, EntityTypeName, Location, HalfExtent, Rotation) end

---检测指定EntityType的Actor - Sphere
---@param WorldContext UObject
---@param EntityTypeName string
---@param Location FVector
---@param Radius number
function UCommonEntityTypeFuncLib:OverlapSphereByEntityType(WorldContext, EntityTypeName, Location, Radius) end

---检测指定EntityType的Actor - Capsule
---@param WorldContext UObject
---@param EntityTypeName string
---@param Location FVector
---@param Radius number
---@param HalfHeight number
---@param Rotation FRotator
function UCommonEntityTypeFuncLib:OverlapCapsuleByEntityType(WorldContext, EntityTypeName, Location, Radius, HalfHeight, Rotation) end

---获取所有已配置的实体类型名称
function UCommonEntityTypeFuncLib:GetAllEntityTypeNames() end

---设置自定义配置DataAsset路径 如果不调用此函数，将使用默认路径
---@param ConfigDataAssetPath string
function UCommonEntityTypeFuncLib:SetConfigDataAssetPath(ConfigDataAssetPath) end

---强制重新加载配置 配合SetConfigDataAssetPath使用，建议设置完路径后调用一次
function UCommonEntityTypeFuncLib:ForceReloadConfig() end

---检查Actor是否为指定的类类型
---@param Actor AActor
---@param ActorClass AActor
---@return boolean
function UCommonEntityTypeFuncLib:IsActorOfClassType(Actor, ActorClass) end

---检查Actor是否为指定类类型数组中的任意一种
---@param Actor AActor
---@param ActorClasses ULuaArrayHelper<AActor>
---@return boolean
function UCommonEntityTypeFuncLib:IsActorOfAnyClassTypes(Actor, ActorClasses) end

---@param Actor AActor
---@param EntityTypeTag FGameplayTag
---@return boolean
function UCommonEntityTypeFuncLib:IsActorOfEntityTypeByTag(Actor, EntityTypeTag) end

---@param Actor AActor
---@param EntityTypeTags FGameplayTagContainer
---@return boolean
function UCommonEntityTypeFuncLib:IsActorOfEntityTypeByTags(Actor, EntityTypeTags) end

---@param Actor AActor
---@return FGameplayTag
function UCommonEntityTypeFuncLib:GetActorEntityTypeAsGameplayTag(Actor) end

---@param Actor AActor
---@return FGameplayTagContainer
function UCommonEntityTypeFuncLib:GetActorEntityTypesAsGameplayTagContainer(Actor) end

---@param WorldContext UObject
---@param EntityTypeTag FGameplayTag
---@param Location FVector
---@param HalfExtent FVector
---@param Rotation FRotator
function UCommonEntityTypeFuncLib:OverlapBoxByEntityTypeTag(WorldContext, EntityTypeTag, Location, HalfExtent, Rotation) end

---@param WorldContext UObject
---@param EntityTypeTags FGameplayTagContainer
---@param Location FVector
---@param HalfExtent FVector
---@param Rotation FRotator
function UCommonEntityTypeFuncLib:OverlapBoxByEntityTypeTags(WorldContext, EntityTypeTags, Location, HalfExtent, Rotation) end

---@param WorldContext UObject
---@param EntityTypeTag FGameplayTag
---@param Location FVector
---@param Radius number
function UCommonEntityTypeFuncLib:OverlapSphereByEntityTypeTag(WorldContext, EntityTypeTag, Location, Radius) end

---@param WorldContext UObject
---@param EntityTypeTags FGameplayTagContainer
---@param Location FVector
---@param Radius number
function UCommonEntityTypeFuncLib:OverlapSphereByEntityTypeTags(WorldContext, EntityTypeTags, Location, Radius) end

---@param WorldContext UObject
---@param EntityTypeTag FGameplayTag
---@param Location FVector
---@param Radius number
---@param HalfHeight number
---@param Rotation FRotator
function UCommonEntityTypeFuncLib:OverlapCapsuleByEntityTypeTag(WorldContext, EntityTypeTag, Location, Radius, HalfHeight, Rotation) end

---@param WorldContext UObject
---@param EntityTypeTags FGameplayTagContainer
---@param Location FVector
---@param Radius number
---@param HalfHeight number
---@param Rotation FRotator
function UCommonEntityTypeFuncLib:OverlapCapsuleByEntityTypeTags(WorldContext, EntityTypeTags, Location, Radius, HalfHeight, Rotation) end

---@return FGameplayTagContainer
function UCommonEntityTypeFuncLib:GetAllEntityTypesAsGameplayTagContainer() end

---@param EntityTypeName string
---@return FGameplayTag
function UCommonEntityTypeFuncLib:ConvertEntityTypeNameToGameplayTag(EntityTypeName) end

---@param EntityTypeTag FGameplayTag
---@return string
function UCommonEntityTypeFuncLib:ConvertGameplayTagToEntityTypeName(EntityTypeTag) end
