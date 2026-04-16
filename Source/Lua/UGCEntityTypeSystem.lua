---@meta

---实体类型查询系统接口库
---@class UGCEntityTypeSystem
UGCEntityTypeSystem = {}

---判断Actor是否属于指定的实体类型
---生效范围：服务器&客户端
---@param Actor AActor @要检查的Actor
---@param EntityTypeName string @实体类型名称
---@return boolean @是否属于指定类型
function UGCEntityTypeSystem.IsActorOfEntityType(Actor, EntityTypeName) end

---获取Actor的实体类型（返回第一个匹配的）
---生效范围：服务器&客户端
---@param Actor AActor @要检查的Actor
---@return string @实体类型名称，如果没有匹配则返回空字符串
function UGCEntityTypeSystem.GetActorEntityType(Actor) end

---获取Actor的所有匹配的实体类型
---生效范围：服务器&客户端
---@param Actor AActor @要检查的Actor
---@return string[] @实体类型名称数组
function UGCEntityTypeSystem.GetActorEntityTypes(Actor) end

---获取所有已配置的实体类型名称
---生效范围：服务器&客户端
---@return string[] @所有实体类型名称数组
function UGCEntityTypeSystem.GetAllEntityTypeNames() end

---使用Box形状检测指定EntityType的Actor
---生效范围：服务器&客户端
---@param WorldContext UObject @世界上下文对象
---@param EntityTypeName string @实体类型名称
---@param Location FVector @检测位置
---@param HalfExtent FVector @Box的半尺寸（默认值：{X=50, Y=50, Z=50}）
---@param Rotation FRotator @旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
---@return AActor[] @找到的Actor数组
function UGCEntityTypeSystem.OverlapBoxByEntityType(WorldContext, EntityTypeName, Location, HalfExtent, Rotation) end

---使用Sphere形状检测指定EntityType的Actor
---生效范围：服务器&客户端
---@param WorldContext UObject @世界上下文对象
---@param EntityTypeName string @实体类型名称
---@param Location FVector @检测位置
---@param Radius number @球体半径（默认值：100）
---@return AActor[] @找到的Actor数组
function UGCEntityTypeSystem.OverlapSphereByEntityType(WorldContext, EntityTypeName, Location, Radius) end

---使用Capsule形状检测指定EntityType的Actor
---生效范围：服务器&客户端
---@param WorldContext UObject @世界上下文对象
---@param EntityTypeName string @实体类型名称
---@param Location FVector @检测位置
---@param Radius number @胶囊体半径（默认值：100）
---@param HalfHeight number @胶囊体半高（默认值：100）
---@param Rotation FRotator @旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
---@return AActor[] @找到的Actor数组
function UGCEntityTypeSystem.OverlapCapsuleByEntityType(WorldContext, EntityTypeName, Location, Radius, HalfHeight, Rotation) end

---检查Actor是否为指定的类类型
---生效范围：服务器&客户端
---@param Actor AActor @要检查的Actor
---@param ActorClassPath string @Actor类的路径
---@return boolean @是否为指定类型
function UGCEntityTypeSystem.IsActorOfClassType(Actor, ActorClassPath) end

---检查Actor是否为指定类类型数组中的任意一种
---生效范围：服务器&客户端
---@param Actor AActor @要检查的Actor
---@param ActorClassPaths string[] @Actor类路径数组
---@return boolean @是否为指定类型之一
function UGCEntityTypeSystem.IsActorOfAnyClassTypes(Actor, ActorClassPaths) end

---判断Actor是否属于指定的实体类型（使用GameplayTag）
---生效范围：服务器&客户端
---@param Actor AActor @要检查的Actor
---@param EntityTypeTag FGameplayTag @实体类型GameplayTag
---@return boolean @是否属于指定类型
function UGCEntityTypeSystem.IsActorOfEntityTypeByTag(Actor, EntityTypeTag) end

---判断Actor是否属于指定的实体类型（使用GameplayTagContainer）
---生效范围：服务器&客户端
---@param Actor AActor @要检查的Actor
---@param EntityTypeTags FGameplayTagContainer @实体类型GameplayTag容器
---@return boolean @是否属于指定类型之一
function UGCEntityTypeSystem.IsActorOfEntityTypeByTags(Actor, EntityTypeTags) end

---获取Actor的实体类型（返回GameplayTag）
---生效范围：服务器&客户端
---@param Actor AActor @要检查的Actor
---@return FGameplayTag @实体类型GameplayTag
function UGCEntityTypeSystem.GetActorEntityTypeAsGameplayTag(Actor) end

---获取Actor的所有匹配的实体类型（返回GameplayTagContainer）
---生效范围：服务器&客户端
---@param Actor AActor @要检查的Actor
---@return FGameplayTagContainer @实体类型GameplayTag容器
function UGCEntityTypeSystem.GetActorEntityTypesAsGameplayTagContainer(Actor) end

---使用Box形状检测指定EntityType的Actor（使用GameplayTag）
---生效范围：服务器&客户端
---@param WorldContext UObject @世界上下文对象
---@param EntityTypeTag FGameplayTag @实体类型GameplayTag
---@param Location FVector @检测位置
---@param HalfExtent FVector @Box的半尺寸（默认值：{X=50, Y=50, Z=50}）
---@param Rotation FRotator @旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
---@return AActor[] @找到的Actor数组
function UGCEntityTypeSystem.OverlapBoxByEntityTypeTag(WorldContext, EntityTypeTag, Location, HalfExtent, Rotation) end

---使用Box形状检测指定EntityType的Actor（使用GameplayTagContainer）
---生效范围：服务器&客户端
---@param WorldContext UObject @世界上下文对象
---@param EntityTypeTags FGameplayTagContainer @实体类型GameplayTag容器
---@param Location FVector @检测位置
---@param HalfExtent FVector @Box的半尺寸（默认值：{X=50, Y=50, Z=50}）
---@param Rotation FRotator @旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
---@return AActor[] @找到的Actor数组
function UGCEntityTypeSystem.OverlapBoxByEntityTypeTags(WorldContext, EntityTypeTags, Location, HalfExtent, Rotation) end

---使用Sphere形状检测指定EntityType的Actor（使用GameplayTag）
---生效范围：服务器&客户端
---@param WorldContext UObject @世界上下文对象
---@param EntityTypeTag FGameplayTag @实体类型GameplayTag
---@param Location FVector @检测位置
---@param Radius number @球体半径（默认值：100）
---@return AActor[] @找到的Actor数组
function UGCEntityTypeSystem.OverlapSphereByEntityTypeTag(WorldContext, EntityTypeTag, Location, Radius) end

---使用Sphere形状检测指定EntityType的Actor（使用GameplayTagContainer）
---生效范围：服务器&客户端
---@param WorldContext UObject @世界上下文对象
---@param EntityTypeTags FGameplayTagContainer @实体类型GameplayTag容器
---@param Location FVector @检测位置
---@param Radius number @球体半径（默认值：100）
---@return AActor[] @找到的Actor数组
function UGCEntityTypeSystem.OverlapSphereByEntityTypeTags(WorldContext, EntityTypeTags, Location, Radius) end

---使用Capsule形状检测指定EntityType的Actor（使用GameplayTag）
---生效范围：服务器&客户端
---@param WorldContext UObject @世界上下文对象
---@param EntityTypeTag FGameplayTag @实体类型GameplayTag
---@param Location FVector @检测位置
---@param Radius number @胶囊体半径（默认值：100）
---@param HalfHeight number @胶囊体半高（默认值：100）
---@param Rotation FRotator @旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
---@return AActor[] @找到的Actor数组
function UGCEntityTypeSystem.OverlapCapsuleByEntityTypeTag(WorldContext, EntityTypeTag, Location, Radius, HalfHeight, Rotation) end

---使用Capsule形状检测指定EntityType的Actor（使用GameplayTagContainer）
---生效范围：服务器&客户端
---@param WorldContext UObject @世界上下文对象
---@param EntityTypeTags FGameplayTagContainer @实体类型GameplayTag容器
---@param Location FVector @检测位置
---@param Radius number @胶囊体半径（默认值：100）
---@param HalfHeight number @胶囊体半高（默认值：100）
---@param Rotation FRotator @旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
---@return AActor[] @找到的Actor数组
function UGCEntityTypeSystem.OverlapCapsuleByEntityTypeTags(WorldContext, EntityTypeTags, Location, Radius, HalfHeight, Rotation) end

---获取所有已配置的实体类型（返回GameplayTagContainer）
---生效范围：服务器&客户端
---@return FGameplayTagContainer @所有实体类型GameplayTag容器
function UGCEntityTypeSystem.GetAllEntityTypesAsGameplayTagContainer() end

---将实体类型名称转换为GameplayTag
---生效范围：服务器&客户端
---@param EntityTypeName string @实体类型名称
---@return FGameplayTag @对应的GameplayTag
function UGCEntityTypeSystem.ConvertEntityTypeNameToGameplayTag(EntityTypeName) end

---将GameplayTag转换为实体类型名称
---生效范围：服务器&客户端
---@param EntityTypeTag FGameplayTag @实体类型GameplayTag
---@return string @对应的实体类型名称
function UGCEntityTypeSystem.ConvertGameplayTagToEntityTypeName(EntityTypeTag) end

---设置自定义配置DataAsset路径
---如果不调用此函数，将使用默认路径
---生效范围：服务器&客户端
---@param ConfigDataAssetPath string @配置DataAsset的路径
function UGCEntityTypeSystem.SetConfigDataAssetPath(ConfigDataAssetPath) end

---强制重新加载配置
---配合SetConfigDataAssetPath使用，建议设置完路径后调用一次
---生效范围：服务器&客户端
function UGCEntityTypeSystem.ForceReloadConfig() end