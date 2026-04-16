---@meta

---Actor接口库
---@class UGCActorComponentUtility
UGCActorComponentUtility = {}

---在游戏世界中生成指定类型的 Actor
---生效范围：服务器&客户端
---@param WorldContextObject UObject @世界上下文对象
---@param ActorClass UClass @要生成的 Actor 类型，需通过 UGCObjectUtility.LoadClass 加载类引用
---@param Location Vector @生成位置坐标，推荐使用 {X=1,Y=1,Z=1} 构造
---@param Rotation Rotator @生成旋转角度，推荐使用 {X=0,Y=0,Z=0} 构造
---@param Scale3D Vector @可生成缩放比例，推荐使用 {X=1,Y=1,Z=1} 构造，默认值: Vector(0,0,0)，建议使用Vector(1,1,1)保持原始比例
---@param Owner Actor @新生成 Actor 的所属对象
---@return Actor @新生成的 Actor 实例
function UGCActorComponentUtility.SpawnActor(WorldContextObject, ActorClass, Location, Rotation, Scale3D, Owner) end

---销毁Actor
---生效范围：服务器&客户端
---@param InActor AActor @Actor
function UGCActorComponentUtility.DestroyActor(InActor) end

---获取Actor的ToString
---生效范围：客户端&服务器
---@param InActor AActor @Actor
---@return string @ToString
function UGCActorComponentUtility.ToString(InActor) end

---获取Actor的Owner
---生效范围：客户端&服务器
---@param InActor AActor @Actor
---@return AActor @Owner
function UGCActorComponentUtility.GetOwner(InActor) end

---设置Actor的Owner
---生效范围：服务器
---@param InActor AActor @Actor
---@param InOwner AActor @Owner
function UGCActorComponentUtility.SetOwner(InActor, InOwner) end

---获取技能，武器，Buff等持有者acotr
---生效范围：客户端&服务器
---@param InActor AActor @Actor
---@return AActor @Owner
function UGCActorComponentUtility.GetUltimateOwnerActor(InActor) end

---获取技能，武器，Buff等持有者的Controller
---生效范围：客户端&服务器
---@param InActor AActor @Actor
---@return AActor @Owner
function UGCActorComponentUtility.GetUltimateController(InActor) end

---附着到Actor上
---生效范围：服务器
---@param InActor AActor @Actor
---@param InAttachTo AActor @需要附着到的Actor
---@param LocationRule EAttachmentRule @附着位置规则
---@param RotationRule EAttachmentRule @附着旋转规则
---@param ScaleRule EAttachmentRule @附着缩放规则
---@param InSocketName string @需要附着到的SocketName
function UGCActorComponentUtility.AttachToActor(InActor, InAttachTo, LocationRule, RotationRule, ScaleRule, InSocketName) end

---附着到Component上
---生效范围：服务器
---@param InActor AActor @Actor
---@param InAttachTo USceneComponent @需要附着到的Actor
---@param LocationRule EAttachmentRule @附着位置规则
---@param RotationRule EAttachmentRule @附着旋转规则
---@param ScaleRule EAttachmentRule @附着缩放规则
---@param InSocketName string @需要附着到的SocketName
---@param bWeldSimulatedBodies boolean @是否保持相对位置不变/是否焊接为模拟刚体
function UGCActorComponentUtility.AttachToComponent(InActor, InAttachTo, LocationRule, RotationRule, ScaleRule, InSocketName, bWeldSimulatedBodies) end

---将Component从父Actor上拆离
---生效范围：服务器
---@param InComponent USceneComponent @Actor
---@param bMaintainWorldPosition boolean @是否保持位置不变
---@param bCallModify boolean @是否调用Modify
function UGCActorComponentUtility.DetachFromParent(InComponent, bMaintainWorldPosition, bCallModify) end

---获取根组件
---生效范围：客户端&服务器
---@param InActor AActor @Actor
---@return USceneComponent @根组件
function UGCActorComponentUtility.GetRootComponent(InActor) end

---获取Actor上的所有Component
---生效范围：客户端&服务器
---@param InActor AActor @Actor
---@return UActorComponent[] @Actor上的所有Component
function UGCActorComponentUtility.GetComponentsByOwner(InActor) end

---获取Actor上指定类的Component
---生效范围：客户端&服务器
---@param InActor AActor @Actor
---@param InComonentClass UClass @指定Component的Class
---@return UActorComponent[] @Actor上特定类型的Components
function UGCActorComponentUtility.GetComponentsByClass(InActor, InComonentClass) end

---获取Actor上指定Tag的Component
---生效范围：客户端&服务器
---@param InActor AActor @Actor
---@param InComonentClass UClass @ComponentClass
---@param Tag string @Tag
---@return UActorComponent[] @Components
function UGCActorComponentUtility.GetComponentsByTag(InActor, InComonentClass, Tag) end

---获取指定Class在场景里的所有Actor
---生效范围：客户端&服务器
---@param WorldContextObject UObject @WorldContextObject
---@param ActorClass UClass @ActorClass
---@return AActor[] @Actor列表
function UGCActorComponentUtility.GetAllActorsOfClass(WorldContextObject, ActorClass) end

---获取指定Tag在场景里的所有Actor
---生效范围：客户端&服务器
---@param WorldContextObject UObject @WorldContextObject
---@param Tag string @Tag
---@return AActor[] @Actor列表
function UGCActorComponentUtility.GetAllActorsWithTag(WorldContextObject, Tag) end

---获取Actor的Transform
---生效范围：客户端&服务器
---@param InActor AActor @Actor
---@return FTransform @Transform
function UGCActorComponentUtility.GetActorTransform(InActor) end

---获取场景组件的世界Transform
---生效范围：客户端&服务器
---@param InSceneComponent USceneComponent @场景组件
---@return FTransform @Transform
function UGCActorComponentUtility.GetSceneComponentWorldTransform(InSceneComponent) end

---设置Actor的Transform
---生效范围：服务器
---@param InActor AActor @Actor
---@param InTransform FTransform @Transform
function UGCActorComponentUtility.SetActorTransform(InActor, InTransform) end

---判断是否为权威端
---生效范围：客户端&服务器
---@param InActor AActor @Actor
---@return boolean @当前端是否为权威端
function UGCActorComponentUtility.HasAuthority(InActor) end

---创建并注册组件
---生效范围：服务器
---@param InComponentClass UClass @要创建组件对应的Class
---@param InOuter UObject @Outer
---@param InComponentName string @要创建组件对应的Class对应的ObjectName
function UGCActorComponentUtility.CreateAndRegisterComponent(InComponentClass, InOuter, InComponentName) end

---销毁组件
---生效范围：服务器
---@param InActor AActor @Actor
---@param InComponent UActorComponent @要销毁的组件
function UGCActorComponentUtility.DestroyComponent(InActor, InComponent) end

---获取与PrimitiveComponent重叠的Actor
---生效范围：客户端&服务器
---@param InPrimitiveComponent UPrimitiveComponent @组件
---@param Transform FTransform @组件的Transform
---@param ObjectTypes ESceneQueryType[] @对象类型列表
---@param ActorClassFilter UClass @要检测的Actor类型（默认值：nil为全部类型的Actor）
---@param ActorsToIgnore AActor[] @需要忽略的Actor列表
---@return AActor[] @与目标Actor重叠的Actor列表
function UGCActorComponentUtility.GetOverlappingActorsWithPrimitiveComponent(InPrimitiveComponent, Transform, ObjectTypes, ActorClassFilter, ActorsToIgnore) end

---在运行时通过Actor实例路径获取Actor，对关卡编辑器实例列表里任意Actor右键，选择GetActorInstancePath即可获取路径
---生效范围：客户端&服务器
---路径格式：PackageName.ObjectPath，例如：UGCmap.test_8
---@param InstancePath string @实例路径
---@return AActor @Actor实例
function UGCActorComponentUtility.GetActorByActorInstancePath(InstancePath) end