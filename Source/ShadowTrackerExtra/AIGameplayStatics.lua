---@meta

---AI模块静态函数
---@class UAIGameplayStatics: UBlueprintFunctionLibrary
local UAIGameplayStatics = {}

---在玩家周围寻找可以容纳对象的位置 1.先通过FindStandLocation_SweepForward在前方通过Sweep寻找 2.再通过FindStandLocation_OverlapAround在周围寻找 3.再通过FindStandLocation_Navmesh在Navmesh上寻找 4.上述三种方法中，同时满足可见性和在Navmesh上立刻返回，否则优先返回可见的结果，再次优先返回在Navmesh上的结果，最后返回不可见和不在Navmesh上的结果 返回值: true表示成功，位置存储在PlaceLocation，是否可见存储在bVisible，是否在Navmesh上存储在bOnNavmesh AIPawn: AI对象，用来寻找合适NavigationData DebugPC: 将调试图像绘制到玩家所在端 IgnoreActors: 忽略Actor集合 SourceLocation: 寻找原点 ForwardDirection: 寻找前方 TraceDistance: X-向前方Sweep长度，Y-向下找地板长度 StandRadius, StandHalfHeight：对象胶囊体大小 TraceChannel: 碰撞通道 bVisibleCheck: 是否在原点和目标点之间进行可见性测试 bNavmeshCheck: 是否检测目标点在Navmesh上 AngleRange: 寻找角度范围 RandomAngle: 起始角度偏移 StepAngle: 寻找角度步长 NavmeshRange: X-目标点和原点最小距离(太近了可能会重叠在一起)；Y-在Navmesh上寻找点的范围，比X大 NavmeshTryMaxNum: 在Navmesh上寻找时尝试最大次数 bNotWater: 地板不能是水体 bNotHouse: 地板不能是房子 bLog: 是否打印日志
---@param World UWorld
---@param AIPawn APawn
---@param DebugPC ASTExtraPlayerController
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param SourceLocation FVector
---@param ForwardDirection FVector
---@param TraceDistance FVector2D
---@param StandRadius number
---@param StandHalfHeight number
---@param TraceChannel ECollisionChannel
---@param bVisibleCheck boolean
---@param bNavmeshCheck boolean
---@param AngleRange ULuaArrayHelper<FVector2D>
---@param RandomAngle number
---@param StepAngle number
---@param NavmeshRange FVector2D
---@param NavmeshTryMaxNum number
---@param bNotWater boolean
---@param bNotHouse boolean
---@param bLog boolean
---@param PlaceLocation FVector
---@param bVisible boolean
---@param bOnNavmesh boolean
---@return boolean
function UAIGameplayStatics:FindStandLocationAroundPlayer(World, AIPawn, DebugPC, IgnoreActors, SourceLocation, ForwardDirection, TraceDistance, StandRadius, StandHalfHeight, TraceChannel, bVisibleCheck, bNavmeshCheck, AngleRange, RandomAngle, StepAngle, NavmeshRange, NavmeshTryMaxNum, bNotWater, bNotHouse, bLog, PlaceLocation, bVisible, bOnNavmesh) end

---寻找可以容纳对象的位置: 在前方一段距离寻找 1.先向前方Sweep，保证没有阻挡 2.再向下找地板 返回值: true表示成功，位置存储在PlaceLocation ForwardDirection: 寻找方向
---@param World UWorld
---@param DebugPC ASTExtraPlayerController
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param SourceLocation FVector
---@param ForwardDirection FVector
---@param TraceDistance FVector2D
---@param StandRadius number
---@param StandHalfHeight number
---@param TraceChannel ECollisionChannel
---@param bNotWater boolean
---@param bNotHouse boolean
---@param bLog boolean
---@param PlaceLocation FVector
---@return boolean
function UAIGameplayStatics:FindStandLocation_SweepForward(World, DebugPC, IgnoreActors, SourceLocation, ForwardDirection, TraceDistance, StandRadius, StandHalfHeight, TraceChannel, bNotWater, bNotHouse, bLog, PlaceLocation) end

---寻找可以容纳对象的位置: 在周围一定角度寻找 1.以StepAngle为角度步长在周围做overlap检测，是否可以放置对象(没有判断和原点之间是否有障碍了) 2.再向下找地板 返回值: true表示成功，位置存储在PlaceLocation，可见性存储在bVisible SourceDirection: 在周围寻找的起始方向
---@param World UWorld
---@param AIPawn APawn
---@param DebugPC ASTExtraPlayerController
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param SourceLocation FVector
---@param SourceDirection FVector
---@param AngleRange ULuaArrayHelper<FVector2D>
---@param RandomAngle number
---@param StepAngle number
---@param TraceDistance FVector2D
---@param StandRadius number
---@param StandHalfHeight number
---@param TraceChannel ECollisionChannel
---@param bVisibleCheck boolean
---@param bNavmeshCheck boolean
---@param bNotWater boolean
---@param bNotHouse boolean
---@param bLog boolean
---@param StandLocation FVector
---@param bVisible boolean
---@param bOnNavmesh boolean
---@return boolean
function UAIGameplayStatics:FindStandLocation_OverlapAround(World, AIPawn, DebugPC, IgnoreActors, SourceLocation, SourceDirection, AngleRange, RandomAngle, StepAngle, TraceDistance, StandRadius, StandHalfHeight, TraceChannel, bVisibleCheck, bNavmeshCheck, bNotWater, bNotHouse, bLog, StandLocation, bVisible, bOnNavmesh) end

---寻找可以容纳对象的位置: 在周围navmesh上寻找 1.通过AIPawn胶囊体寻找合适的ANavigationData FindRange的X最近距离(太近了容纳不下)，Y为随机范围 注意：返回值会无视可见性检测，而是将结果存储在bVisible中 2.在Navmesh的SourceLocation周围寻找可联通点 3.如果失败了，在Navmesh的SourceLocation周围随机找点 4.在该点上抬一定高度，做overlap检测判定是否可以容纳对象 5.向下找地板 6.可选项：在原点和目标点之间进行可见性测试。注意：返回值会无视可见性检测，而是将结果存储在bVisible中 返回值: true表示成功，位置存储在PlaceLocation，可见性存储在bVisible
---@param World UWorld
---@param AIPawn APawn
---@param DebugPC ASTExtraPlayerController
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param SourceLocation FVector
---@param FindRange FVector2D
---@param FindFloorDistance number
---@param StandRadius number
---@param StandHalfHeight number
---@param TraceChannel ECollisionChannel
---@param bVisibleCheck boolean
---@param bNotWater boolean
---@param bNotHouse boolean
---@param bLog boolean
---@param TryMaxNum number
---@param StandLocation FVector
---@param bVisible boolean
---@return boolean
function UAIGameplayStatics:FindStandLocation_Navmesh(World, AIPawn, DebugPC, IgnoreActors, SourceLocation, FindRange, FindFloorDistance, StandRadius, StandHalfHeight, TraceChannel, bVisibleCheck, bNotWater, bNotHouse, bLog, TryMaxNum, StandLocation, bVisible) end

---@param World UWorld
---@param DebugPC ASTExtraPlayerController
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param SourceLocation FVector
---@param StandRadius number
---@param StandHalfHeight number
---@param TraceChannel ECollisionChannel
---@param bLog boolean
---@return boolean
function UAIGameplayStatics:OverlapAtLocation(World, DebugPC, IgnoreActors, SourceLocation, StandRadius, StandHalfHeight, TraceChannel, bLog) end

---@param World UWorld
---@param DebugPC ASTExtraPlayerController
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param Start FVector
---@param End FVector
---@param StandRadius number
---@param StandHalfHeight number
---@param TraceChannel ECollisionChannel
---@param bNotWater boolean
---@param bNotHouse boolean
---@param bLog boolean
---@param FloorLocation FVector
---@return boolean
function UAIGameplayStatics:SweepFindFloor(World, DebugPC, IgnoreActors, Start, End, StandRadius, StandHalfHeight, TraceChannel, bNotWater, bNotHouse, bLog, FloorLocation) end

---@param AIPawn APawn
---@param TargetLocation FVector
---@return boolean
function UAIGameplayStatics:IsLocationOnNavmesh(AIPawn, TargetLocation) end

---查询死亡盒子 Origin: 查询起点 Direction: 查询方向 Distance: 查询距离 Radius: 查询点离查询方向垂直距离多远认为在范围内
---@param World UWorld
---@param Origin FVector
---@param Direction FVector
---@param Distance number
---@param Radius number
function UAIGameplayStatics:QueryPlayerTombBoxes(World, Origin, Direction, Distance, Radius) end

---@param PlayerTombBox APlayerTombBox
---@return boolean
function UAIGameplayStatics:CanInteractWithPlayerTombBox(PlayerTombBox) end

---查询拾取物 Origin: 查询起点 Direction: 查询方向 Distance: 查询距离 Radius: 查询点离查询方向垂直距离多远认为在范围内
---@param World UWorld
---@param Origin FVector
---@param Direction FVector
---@param Distance number
---@param Radius number
function UAIGameplayStatics:QueryPickUpWrapperActor(World, Origin, Direction, Distance, Radius) end

---查询物资 Types，SubTypes，TypeSpecificIDs为物品信息数组，依次为物品主类型，子类型，物品ID。满足这一组的物品都会被查询。比如E玩法中，护甲有很多个物品 Origin: 查询起点 Radius: 查询范围 Type: 指定的拾取物主类型。-1为空投箱，-2为死亡盒子 SubType: 指定的拾取物子类型 TypeSpecificID: 指定的拾取物ID 返回数组，按照距离排序
---@param World UWorld
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param Origin FVector
---@param Radius number
---@param MaxCount number
function UAIGameplayStatics:QuerySuppliesFromTypes(World, Types, SubTypes, TypeSpecificIDs, Origin, Radius, MaxCount) end

---@param PickUpWrapperActor APickUpWrapperActor
---@return boolean
function UAIGameplayStatics:CanInteractWithPickUpWrapperActor(PickUpWrapperActor) end

---@param AirDropBoxActor AAirDropBoxActor
---@return boolean
function UAIGameplayStatics:CanInteractWithAirDropBoxActor(AirDropBoxActor) end

---是否可以背负玩家
---@param OwnerPawn ASTExtraBaseCharacter
---@param AIPawn ASTExtraCharacter
---@param CarriedPawn ASTExtraBaseCharacter
---@param TraceChannel ECollisionChannel
---@param TraceDistance number
---@param bCheckVisible boolean
---@param bLog boolean
---@return boolean
function UAIGameplayStatics:CanCarryPlayer(OwnerPawn, AIPawn, CarriedPawn, TraceChannel, TraceDistance, bCheckVisible, bLog) end

---是否可以背负死亡盒子
---@param OwnerPawn ASTExtraBaseCharacter
---@param AIPawn ASTExtraCharacter
---@param CarriedPlayerTombBox APlayerTombBox
---@param TraceChannel ECollisionChannel
---@param TraceDistance number
---@param bCheckVisible boolean
---@param bLog boolean
---@return boolean
function UAIGameplayStatics:CanCarryPlayerTombBox(OwnerPawn, AIPawn, CarriedPlayerTombBox, TraceChannel, TraceDistance, bCheckVisible, bLog) end

---是否可以背负拾取物
---@param OwnerPawn ASTExtraBaseCharacter
---@param AIPawn ASTExtraCharacter
---@param CarriedPickUpWrapperActor APickUpWrapperActor
---@param TraceChannel ECollisionChannel
---@param TraceDistance number
---@param bCheckVisible boolean
---@param bLog boolean
---@return boolean
function UAIGameplayStatics:CanCarryAPickUpWrapperActor(OwnerPawn, AIPawn, CarriedPickUpWrapperActor, TraceChannel, TraceDistance, bCheckVisible, bLog) end

---是否可以背负空投箱
---@param OwnerPawn ASTExtraBaseCharacter
---@param AIPawn ASTExtraCharacter
---@param CarriedAirDropBox AAirDropBoxActor
---@param TraceChannel ECollisionChannel
---@param TraceDistance number
---@param bCheckVisible boolean
---@param bLog boolean
---@return boolean
function UAIGameplayStatics:CanCarryAirDropBox(OwnerPawn, AIPawn, CarriedAirDropBox, TraceChannel, TraceDistance, bCheckVisible, bLog) end

---检测AI是否可以背负玩家
---@param OwnerPawn ASTExtraBaseCharacter
---@param AIPawn ASTExtraCharacter
---@param CarriedPawn ASTExtraBaseCharacter
---@param bLog boolean
---@return boolean
function UAIGameplayStatics:CheckPlayerCanBeenCarried(OwnerPawn, AIPawn, CarriedPawn, bLog) end

---检测玩家和对象之间是否可见
---@param OwnerPawn ASTExtraBaseCharacter
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param CarriedActor AActor
---@param TraceChannel ECollisionChannel
---@param bLog boolean
---@return boolean
function UAIGameplayStatics:CheckPlayerTargetVisible(OwnerPawn, IgnoreActors, CarriedActor, TraceChannel, bLog) end

---@param AIPawn ACharacter
---@param CarriedActor AActor
---@param AttachSocket string
---@param RelativeLocation FVector
---@param RelativeRotator FRotator
---@return boolean
function UAIGameplayStatics:CarryActor(AIPawn, CarriedActor, AttachSocket, RelativeLocation, RelativeRotator) end

---AI放下背负的Actor
---@param AIPawn ACharacter
---@param CarriedActor AActor
---@param PutDownLocation FVector
---@return boolean
function UAIGameplayStatics:PutDownCarriedActor(AIPawn, CarriedActor, PutDownLocation) end

---让客户端能热更调用APickUpWrapperActor::SetAttachedInfo
---@param World UWorld
---@param PickUpWrapperActor APickUpWrapperActor
---@param targetActor AActor
---@param DetachLocation FVector
---@param locationRule EAttachmentRule
---@param rotationRule EAttachmentRule
---@param scaleRule EAttachmentRule
---@param bWeldSimulatedBodies boolean
---@param socketName string
---@return boolean
function UAIGameplayStatics:SetPickUpWrapperActorAttachedInfo(World, PickUpWrapperActor, targetActor, DetachLocation, locationRule, rotationRule, scaleRule, bWeldSimulatedBodies, socketName) end

---AI背负玩家
---@param AIPawn ACharacter
---@param CarriedCharacter ASTExtraBaseCharacter
---@param AttachSocket string
---@param RelativeLocation FVector
---@param RelativeRotator FRotator
---@return boolean
function UAIGameplayStatics:CarryCharacter(AIPawn, CarriedCharacter, AttachSocket, RelativeLocation, RelativeRotator) end

---AI放下背负的玩家
---@param AIPawn ACharacter
---@param CarriedCharacter ASTExtraBaseCharacter
---@param PutDownLocation FVector
---@return boolean
function UAIGameplayStatics:PutDownCarriedCharacter(AIPawn, CarriedCharacter, PutDownLocation) end

---改变Pawn胶囊体大小
---@param Pawn ACharacter
---@param CapsuleRadius number
---@param CapsuleHalfHeight number
---@param bSetAgentType boolean
---@param AgentType number
---@param SetCapsuleFunctionName string
---@return boolean
function UAIGameplayStatics:ChangeCapsuleSize(Pawn, CapsuleRadius, CapsuleHalfHeight, bSetAgentType, AgentType, SetCapsuleFunctionName) end

---AI受到伤害
---@param AIPawn ACharacter
---@param Damage number
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function UAIGameplayStatics:AITakeDamage(AIPawn, Damage, EventInstigator, DamageCauser) end

---播放移动特效
---@param AIPawn ACharacter
---@param WalkEffect UParticleSystem
---@param WalkEffectOffset FVector
---@param WalkEffectPlayMaxDistance number
---@param WalkEffectMinSpeed number
---@param WalkEffectStayTime number
---@param bLog boolean
---@param WalkEffectComp UCustomParticleSystemComponent
function UAIGameplayStatics:PlayWalkEffect(AIPawn, WalkEffect, WalkEffectOffset, WalkEffectPlayMaxDistance, WalkEffectMinSpeed, WalkEffectStayTime, bLog, WalkEffectComp) end

---播放移动音效
---@param AIPawn ACharacter
---@param WalkSound UAkAudioEvent
---@param RTPC string
---@param WalkSoundPlayMaxDistance number
---@param WalkSoundMinSpeed number
---@param WalkSoundStayTime number
---@param LastRenderTimeCheckTime number
---@param bLog boolean
---@param SoundEventID number
function UAIGameplayStatics:PlayWalkSound(AIPawn, WalkSound, RTPC, WalkSoundPlayMaxDistance, WalkSoundMinSpeed, WalkSoundStayTime, LastRenderTimeCheckTime, bLog, SoundEventID) end

---获得属性值（兼容MassiveEntity）
---@param ModifiedTarget UObject
---@param AttrContainer FGameAttributeContainer
---@return number
function UAIGameplayStatics:GetAttrValueIncludingAIByContainer(ModifiedTarget, AttrContainer) end

---设置ai mesh lod
---@param Mesh USkinnedMeshComponent
---@param MinLod number
---@param MaxLod number
---@return boolean
function UAIGameplayStatics:SetAIMeshLod(Mesh, MinLod, MaxLod) end

---对象是否是AI的敌人
---@param Owner AActor
---@param Target AActor
---@return boolean
function UAIGameplayStatics:IsEnemyToAI(Owner, Target) end

---查询附近的玩家敌人，按照距离进行排序 1.不考虑可见性 2.会将玩家、假人、怪物放在三个队列，按照距离排序，返回时会将三个队列合并
---@param AIPawn ACharacter
---@param OwnerPlayer ASTExtraBaseCharacter
---@param EnemyForbidAttackStates ULuaArrayHelper<EPawnState>
---@param EnemyForbidAttackDynamicStates FGameplayTagContainer
---@param SearchRange number
---@param SearchLocation FVector
function UAIGameplayStatics:QueryEnemyInRange(AIPawn, OwnerPlayer, EnemyForbidAttackStates, EnemyForbidAttackDynamicStates, SearchRange, SearchLocation) end

---检测路径是否可达 bLimitPathLength: 路径太长时认为不能抵达终点 PathMaxLength: 路径长度限制 bAllowPartialPath: 是否允许部分路径 ReachableTolerance: 路径终点距离目标多远以内认为联通
---@param AIController AAIController
---@param StartLoc FVector
---@param EndLoc FVector
---@param FilterClass UNavigationQueryFilter
---@param bLimitPathLength boolean
---@param PathMaxLength number
---@param bAllowPartialPath boolean
---@param ReachableTolerance number
---@return boolean
function UAIGameplayStatics:CheckPath(AIController, StartLoc, EndLoc, FilterClass, bLimitPathLength, PathMaxLength, bAllowPartialPath, ReachableTolerance) end

---获取剩余路径长度。不在移动时返回false
---@param AIController AAIController
---@param StartPos FVector
---@param Length number
---@return boolean
function UAIGameplayStatics:GetRemainingPathLength(AIController, StartPos, Length) end

---获取当前路径线段上的剩余距离。不在移动时返回false
---@param AIController AAIController
---@param StartPos FVector
---@param Length number
---@return boolean
function UAIGameplayStatics:GetPathSegmentRemainingLength(AIController, StartPos, Length) end

---获取到目标点的路径长度
---@param AIController AAIController
---@param StartLoc FVector
---@param EndLoc FVector
---@param FilterClass UNavigationQueryFilter
---@param PathLength number
---@return boolean
function UAIGameplayStatics:GetPathLengthToTarget(AIController, StartLoc, EndLoc, FilterClass, PathLength) end

---AI射击另一个AI时使用该AI所属玩家的计算方式，命中率和射击坐标
---@param CharacterEnemy ASTExtraCharacter
---@param OwnerPlayerController ASTExtraPlayerController
---@return boolean
function UAIGameplayStatics:ShootAIUseOwnerPlayerHitRate(CharacterEnemy, OwnerPlayerController) end

---获取Forward想目标朝向的角度，左负右正
---@param Forward FVector
---@param TargetDir FVector
---@return number
function UAIGameplayStatics:GetAngle(Forward, TargetDir) end

---检测对象前方路径是否直线可达且可见
---@param AIController AAIController
---@param AIPawn ACharacter
---@param CheckLen number
---@param TraceChannel ECollisionChannel
---@param bIgnorePawn boolean
---@return boolean
function UAIGameplayStatics:CheckForwardPathAndVisible(AIController, AIPawn, CheckLen, TraceChannel, bIgnorePawn) end

---@param Field string
---@return boolean
function UAIGameplayStatics:LSIncCounter(Field) end

---@param Name string
---@return boolean
function UAIGameplayStatics:LSAIBotRecvActionList(Name) end

---@param ZombieChar ASTExtraZombieCharacter
function UAIGameplayStatics:Suicide(ZombieChar) end
