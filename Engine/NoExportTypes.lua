---@meta

-- ============================================================================
-- Unreal Engine NoExportTypes - 内置基础类型定义
-- 
-- 本文件由 Rosetta 自动生成，包含 UE 引擎内置的基础类型。
-- 这些类型通常在 NoExportTypes.h 中定义，但由于 MinimalAPI 限制，
-- 无法通过常规解析流程导出。
-- 
-- 警告：请勿手动修改此文件，修改将在下次导出时被覆盖。
-- 如需添加或修改类型定义，请编辑 config/noexport_types.yaml
-- ============================================================================

-- ============================================================================
-- 核心类
-- ============================================================================

---所有 Unreal Engine 对象的基类
---@class UObject
UObject = {}

---获取对象的 UClass
---@return UClass
function UObject:GetClass() end

---获取对象名称
---@return string
function UObject:GetName() end

---获取对象完整名称（包含路径）
---@return string
function UObject:GetFullName() end

---获取对象路径名称
---@return string
function UObject:GetPathName() end

---获取外部对象
---@return UObject
function UObject:GetOuter() end

---获取所属的 World
---@return UWorld
function UObject:GetWorld() end

---检查对象是否是指定类或其子类的实例
---@param Class UClass @要检查的类
---@return boolean
function UObject:IsA(Class) end

---检查对象是否有效
---@return boolean
function UObject:IsValid() end

---UE 类的元数据对象，描述一个 UCLASS 的结构
---@class UClass: UObject
UClass = {}

---获取类的默认对象（CDO）
---@return UObject
function UClass:GetDefaultObject() end

---获取父类
---@return UClass
function UClass:GetSuperClass() end

---检查是否是指定类的子类
---@param ParentClass UClass @父类
---@return boolean
function UClass:IsChildOf(ParentClass) end

---可放置在关卡中的游戏对象基类
---@class AActor: UObject
---@field RootComponent USceneComponent @根组件
---@field bHidden boolean @是否隐藏
---@field bCanBeDamaged boolean @是否可被伤害
AActor = {}

---获取 Actor 世界坐标
---@return FVector
function AActor:GetActorLocation() end

---设置 Actor 世界坐标
---@param NewLocation FVector @新坐标
---@param bSweep boolean @是否扫描碰撞
---@param bTeleport boolean @是否传送模式
---@return boolean
function AActor:SetActorLocation(NewLocation, bSweep, bTeleport) end

---获取 Actor 旋转
---@return FRotator
function AActor:GetActorRotation() end

---设置 Actor 旋转
---@param NewRotation FRotator @新旋转
---@param bTeleport boolean @是否传送模式
---@return boolean
function AActor:SetActorRotation(NewRotation, bTeleport) end

---获取 Actor 缩放
---@return FVector
function AActor:GetActorScale3D() end

---设置 Actor 缩放
---@param NewScale FVector @新缩放
function AActor:SetActorScale3D(NewScale) end

---获取 Actor 前向向量
---@return FVector
function AActor:GetActorForwardVector() end

---获取 Actor 右向向量
---@return FVector
function AActor:GetActorRightVector() end

---获取 Actor 上向向量
---@return FVector
function AActor:GetActorUpVector() end

---获取 Actor 速度
---@return FVector
function AActor:GetVelocity() end

---销毁 Actor
---@return boolean
function AActor:Destroy() end

---销毁 Actor（蓝图调用）
function AActor:K2_DestroyActor() end

---设置游戏中是否隐藏
---@param bNewHidden boolean @是否隐藏
function AActor:SetActorHiddenInGame(bNewHidden) end

---设置是否启用碰撞
---@param bNewActorEnableCollision boolean @是否启用碰撞
function AActor:SetActorEnableCollision(bNewActorEnableCollision) end

---按类获取组件
---@param ComponentClass UClass @组件类
---@return UActorComponent
function AActor:GetComponentByClass(ComponentClass) end

---按类获取所有组件
---@param ComponentClass UClass @组件类
---@return ULuaArrayHelper<UActorComponent>
function AActor:GetComponentsByClass(ComponentClass) end

---添加世界坐标偏移
---@param DeltaLocation FVector @偏移量
---@param bSweep boolean @是否扫描碰撞
---@param bTeleport boolean @是否传送模式
function AActor:AddActorWorldOffset(DeltaLocation, bSweep, bTeleport) end

---添加世界旋转偏移
---@param DeltaRotation FRotator @旋转偏移
---@param bSweep boolean @是否扫描碰撞
---@param bTeleport boolean @是否传送模式
function AActor:AddActorWorldRotation(DeltaRotation, bSweep, bTeleport) end

---获取所有者 Actor
---@return AActor
function AActor:GetOwner() end

---设置所有者 Actor
---@param NewOwner AActor @新所有者
function AActor:SetOwner(NewOwner) end

---获取 Instigator
---@return APawn
function AActor:GetInstigator() end

---获取 Instigator 的控制器
---@return AController
function AActor:GetInstigatorController() end

---检查是否有网络权限
---@return boolean
function AActor:HasAuthority() end

---获取本地网络角色
---@return number
function AActor:GetLocalRole() end

---获取远程网络角色
---@return number
function AActor:GetRemoteRole() end

---可被 Controller 控制的 Actor 基类
---@class APawn: AActor
---@field bUseControllerRotationPitch boolean @是否使用控制器的 Pitch 旋转
---@field bUseControllerRotationYaw boolean @是否使用控制器的 Yaw 旋转
---@field bUseControllerRotationRoll boolean @是否使用控制器的 Roll 旋转
APawn = {}

---获取控制器
---@return AController
function APawn:GetController() end

---获取移动组件
---@return UPawnMovementComponent
function APawn:GetMovementComponent() end

---是否被控制
---@return boolean
function APawn:IsControlled() end

---是否被玩家控制
---@return boolean
function APawn:IsPlayerControlled() end

---是否被 AI 控制
---@return boolean
function APawn:IsBotControlled() end

---获取控制旋转
---@return FRotator
function APawn:GetControlRotation() end

---添加移动输入
---@param WorldDirection FVector @世界方向
---@param ScaleValue number @缩放值
---@param bForce boolean @是否强制
function APawn:AddMovementInput(WorldDirection, ScaleValue, bForce) end

---添加控制器 Pitch 输入
---@param Val number @输入值
function APawn:AddControllerPitchInput(Val) end

---添加控制器 Yaw 输入
---@param Val number @输入值
function APawn:AddControllerYawInput(Val) end

---添加控制器 Roll 输入
---@param Val number @输入值
function APawn:AddControllerRollInput(Val) end

---具有移动和动画能力的角色基类
---@class ACharacter: APawn
---@field Mesh USkeletalMeshComponent @角色网格组件
---@field CharacterMovement UCharacterMovementComponent @角色移动组件
---@field CapsuleComponent UCapsuleComponent @胶囊体碰撞组件
ACharacter = {}

---跳跃
function ACharacter:Jump() end

---停止跳跃
function ACharacter:StopJumping() end

---是否可以跳跃
---@return boolean
function ACharacter:CanJump() end

---是否正在提供跳跃力
---@return boolean
function ACharacter:IsJumpProvidingForce() end

---发射角色（添加瞬时速度）
---@param LaunchVelocity FVector @发射速度
---@param bXYOverride boolean @是否覆盖 XY 速度
---@param bZOverride boolean @是否覆盖 Z 速度
function ACharacter:LaunchCharacter(LaunchVelocity, bXYOverride, bZOverride) end

---蹲下
---@param bClientSimulation boolean @是否客户端模拟
function ACharacter:Crouch(bClientSimulation) end

---站起
---@param bClientSimulation boolean @是否客户端模拟
function ACharacter:UnCrouch(bClientSimulation) end

---是否可以蹲下
---@return boolean
function ACharacter:CanCrouch() end

---是否蹲下状态
---@return boolean
function ACharacter:IsCrouched() end

---获取动画实例
---@return UAnimInstance
function ACharacter:GetAnimInstance() end

---控制 Pawn 的控制器基类
---@class AController: AActor
AController = {}

---获取控制的 Pawn
---@return APawn
function AController:GetPawn() end

---获取控制的 Character
---@return ACharacter
function AController:GetCharacter() end

---控制指定 Pawn
---@param InPawn APawn @要控制的 Pawn
function AController:Possess(InPawn) end

---释放控制的 Pawn
function AController:UnPossess() end

---获取控制旋转
---@return FRotator
function AController:GetControlRotation() end

---设置控制旋转
---@param NewRotation FRotator @新旋转
function AController:SetControlRotation(NewRotation) end

---获取视角目标
---@return AActor
function AController:GetViewTarget() end

---设置是否忽略移动输入
---@param bNewMoveInput boolean @是否忽略
function AController:SetIgnoreMoveInput(bNewMoveInput) end

---设置是否忽略视角输入
---@param bNewLookInput boolean @是否忽略
function AController:SetIgnoreLookInput(bNewLookInput) end

---是否是本地控制器
---@return boolean
function AController:IsLocalController() end

---是否是玩家控制器
---@return boolean
function AController:IsPlayerController() end

---检查与目标的视线
---@param Other AActor @目标 Actor
---@param ViewPoint FVector @视点
---@param bAlternateChecks boolean @是否使用备选检查
---@return boolean
function AController:LineOfSightTo(Other, ViewPoint, bAlternateChecks) end

---玩家控制器，处理玩家输入
---@class APlayerController: AController
APlayerController = {}

---获取相机管理器
---@return APlayerCameraManager
function APlayerController:GetPlayerCameraManager() end

---获取 HUD
---@return AHUD
function APlayerController:GetHUD() end

---设置视角目标（带混合）
---@param NewViewTarget AActor @新视角目标
---@param BlendTime number @混合时间
---@param BlendFunc number @混合函数
---@param BlendExp number @混合指数
---@param bLockOutgoing boolean @是否锁定输出
function APlayerController:SetViewTargetWithBlend(NewViewTarget, BlendTime, BlendFunc, BlendExp, bLockOutgoing) end

---获取视口大小
---@param SizeX number @宽度（输出）
---@param SizeY number @高度（输出）
function APlayerController:GetViewportSize(SizeX, SizeY) end

---将世界坐标投影到屏幕
---@param WorldLocation FVector @世界坐标
---@param ScreenLocation FVector2D @屏幕坐标（输出）
---@param bPlayerViewportRelative boolean @是否相对于玩家视口
---@return boolean
function APlayerController:ProjectWorldLocationToScreen(WorldLocation, ScreenLocation, bPlayerViewportRelative) end

---将屏幕坐标反投影到世界
---@param ScreenX number @屏幕 X
---@param ScreenY number @屏幕 Y
---@param WorldLocation FVector @世界坐标（输出）
---@param WorldDirection FVector @世界方向（输出）
---@return boolean
function APlayerController:DeprojectScreenPositionToWorld(ScreenX, ScreenY, WorldLocation, WorldDirection) end

---获取鼠标位置
---@param LocationX number @X 坐标（输出）
---@param LocationY number @Y 坐标（输出）
---@return boolean
function APlayerController:GetMousePosition(LocationX, LocationY) end

---设置是否显示鼠标光标
---@param bShow boolean @是否显示
function APlayerController:SetShowMouseCursor(bShow) end

---设置输入模式
---@param InData FInputModeDataBase @输入模式数据
function APlayerController:SetInputMode(InData) end

---启用输入
---@param PlayerController APlayerController @玩家控制器
function APlayerController:EnableInput(PlayerController) end

---禁用输入
---@param PlayerController APlayerController @玩家控制器
function APlayerController:DisableInput(PlayerController) end

---客户端旅行到新地图
---@param URL string @地图 URL
---@param TravelType number @旅行类型
---@param bSeamless boolean @是否无缝
function APlayerController:ClientTravel(URL, TravelType, bSeamless) end

---AI 控制器，用于控制 AI Pawn
---@class AAIController: AController
AAIController = {}

---移动到目标 Actor
---@param Goal AActor @目标 Actor
---@param AcceptanceRadius number @接受半径
---@param bStopOnOverlap boolean @重叠时是否停止
---@param bUsePathfinding boolean @是否使用寻路
---@param bCanStrafe boolean @是否可以横移
---@return number
function AAIController:MoveToActor(Goal, AcceptanceRadius, bStopOnOverlap, bUsePathfinding, bCanStrafe) end

---移动到目标位置
---@param Dest FVector @目标位置
---@param AcceptanceRadius number @接受半径
---@param bStopOnOverlap boolean @重叠时是否停止
---@param bUsePathfinding boolean @是否使用寻路
---@param bProjectDestinationToNavigation boolean @是否投影到导航网格
---@param bCanStrafe boolean @是否可以横移
---@return number
function AAIController:MoveToLocation(Dest, AcceptanceRadius, bStopOnOverlap, bUsePathfinding, bProjectDestinationToNavigation, bCanStrafe) end

---停止移动
function AAIController:StopMovement() end

---获取焦点 Actor
---@return AActor
function AAIController:GetFocusActor() end

---设置焦点 Actor
---@param NewFocus AActor @新焦点
function AAIController:SetFocus(NewFocus) end

---清除焦点
---@param InPriority number @优先级
function AAIController:ClearFocus(InPriority) end

---获取路径跟随组件
---@return UPathFollowingComponent
function AAIController:GetPathFollowingComponent() end

---运行行为树
---@param BTAsset UBehaviorTree @行为树资产
---@return boolean
function AAIController:RunBehaviorTree(BTAsset) end

---所有组件的基类
---@class UActorComponent: UObject
UActorComponent = {}

---获取所属 Actor
---@return AActor
function UActorComponent:GetOwner() end

---获取所属 World
---@return UWorld
function UActorComponent:GetWorld() end

---是否激活
---@return boolean
function UActorComponent:IsActive() end

---激活组件
---@param bReset boolean @是否重置
function UActorComponent:Activate(bReset) end

---停用组件
function UActorComponent:Deactivate() end

---设置激活状态
---@param bNewActive boolean @是否激活
---@param bReset boolean @是否重置
function UActorComponent:SetActive(bNewActive, bReset) end

---切换激活状态
function UActorComponent:ToggleActive() end

---设置是否启用 Tick
---@param bEnabled boolean @是否启用
function UActorComponent:SetComponentTickEnabled(bEnabled) end

---是否启用 Tick
---@return boolean
function UActorComponent:IsComponentTickEnabled() end

---设置 Tick 组
---@param NewTickGroup number @Tick 组
function UActorComponent:SetTickGroup(NewTickGroup) end

---销毁组件
---@param bPromoteChildren boolean @是否提升子组件
function UActorComponent:DestroyComponent(bPromoteChildren) end

---获取 Tick 间隔
---@return number
function UActorComponent:GetComponentTickInterval() end

---设置 Tick 间隔
---@param TickInterval number @Tick 间隔（秒）
function UActorComponent:SetComponentTickInterval(TickInterval) end

---具有变换（位置、旋转、缩放）的组件
---@class USceneComponent: UActorComponent
---@field bAbsoluteLocation boolean @是否使用绝对位置
---@field bAbsoluteRotation boolean @是否使用绝对旋转
---@field bAbsoluteScale boolean @是否使用绝对缩放
---@field bVisible boolean @是否可见
---@field bHiddenInGame boolean @游戏中是否隐藏
USceneComponent = {}

---获取相对位置
---@return FVector
function USceneComponent:GetRelativeLocation() end

---设置相对位置
---@param NewLocation FVector @新位置
---@param bSweep boolean @是否扫描碰撞
---@param bTeleport boolean @是否传送
function USceneComponent:SetRelativeLocation(NewLocation, bSweep, bTeleport) end

---获取相对旋转
---@return FRotator
function USceneComponent:GetRelativeRotation() end

---设置相对旋转
---@param NewRotation FRotator @新旋转
---@param bSweep boolean @是否扫描碰撞
---@param bTeleport boolean @是否传送
function USceneComponent:SetRelativeRotation(NewRotation, bSweep, bTeleport) end

---获取相对缩放
---@return FVector
function USceneComponent:GetRelativeScale3D() end

---设置相对缩放
---@param NewScale FVector @新缩放
function USceneComponent:SetRelativeScale3D(NewScale) end

---获取组件世界位置
---@return FVector
function USceneComponent:GetComponentLocation() end

---获取组件世界旋转
---@return FRotator
function USceneComponent:GetComponentRotation() end

---获取组件世界缩放
---@return FVector
function USceneComponent:GetComponentScale() end

---设置世界位置
---@param NewLocation FVector @新位置
---@param bSweep boolean @是否扫描碰撞
---@param bTeleport boolean @是否传送
function USceneComponent:SetWorldLocation(NewLocation, bSweep, bTeleport) end

---设置世界旋转
---@param NewRotation FRotator @新旋转
---@param bSweep boolean @是否扫描碰撞
---@param bTeleport boolean @是否传送
function USceneComponent:SetWorldRotation(NewRotation, bSweep, bTeleport) end

---设置世界缩放
---@param NewScale FVector @新缩放
function USceneComponent:SetWorldScale3D(NewScale) end

---获取前向向量
---@return FVector
function USceneComponent:GetForwardVector() end

---获取右向向量
---@return FVector
function USceneComponent:GetRightVector() end

---获取上向向量
---@return FVector
function USceneComponent:GetUpVector() end

---获取附加的父组件
---@return USceneComponent
function USceneComponent:GetAttachParent() end

---获取附加的插槽名称
---@return string
function USceneComponent:GetAttachSocketName() end

---附加到指定组件
---@param Parent USceneComponent @父组件
---@param SocketName string @插槽名称
---@param AttachmentRules number @附加规则
---@return boolean
function USceneComponent:AttachToComponent(Parent, SocketName, AttachmentRules) end

---从父组件分离
---@param DetachmentRules number @分离规则
function USceneComponent:DetachFromComponent(DetachmentRules) end

---设置可见性
---@param bNewVisibility boolean @是否可见
---@param bPropagateToChildren boolean @是否传播到子组件
function USceneComponent:SetVisibility(bNewVisibility, bPropagateToChildren) end

---设置游戏中是否隐藏
---@param NewHidden boolean @是否隐藏
---@param bPropagateToChildren boolean @是否传播到子组件
function USceneComponent:SetHiddenInGame(NewHidden, bPropagateToChildren) end

---获取子组件列表
---@param bIncludeAllDescendants boolean @是否包含所有后代
---@return ULuaArrayHelper<USceneComponent>
function USceneComponent:GetChildrenComponents(bIncludeAllDescendants) end

---具有渲染和碰撞的组件基类
---@class UPrimitiveComponent: USceneComponent
---@field bGenerateOverlapEvents boolean @是否生成重叠事件
---@field CastShadow boolean @是否投射阴影
UPrimitiveComponent = {}

---设置碰撞启用状态
---@param NewType number @碰撞类型
function UPrimitiveComponent:SetCollisionEnabled(NewType) end

---设置碰撞配置名称
---@param InCollisionProfileName string @碰撞配置名称
function UPrimitiveComponent:SetCollisionProfileName(InCollisionProfileName) end

---设置对指定通道的碰撞响应
---@param Channel number @碰撞通道
---@param NewResponse number @碰撞响应
function UPrimitiveComponent:SetCollisionResponseToChannel(Channel, NewResponse) end

---设置对所有通道的碰撞响应
---@param NewResponse number @碰撞响应
function UPrimitiveComponent:SetCollisionResponseToAllChannels(NewResponse) end

---获取碰撞启用状态
---@return number
function UPrimitiveComponent:GetCollisionEnabled() end

---设置是否模拟物理
---@param bSimulate boolean @是否模拟
function UPrimitiveComponent:SetSimulatePhysics(bSimulate) end

---是否正在模拟物理
---@return boolean
function UPrimitiveComponent:IsSimulatingPhysics() end

---添加力
---@param Force FVector @力向量
---@param BoneName string @骨骼名称
---@param bAccelChange boolean @是否作为加速度
function UPrimitiveComponent:AddForce(Force, BoneName, bAccelChange) end

---添加冲量
---@param Impulse FVector @冲量向量
---@param BoneName string @骨骼名称
---@param bVelChange boolean @是否作为速度变化
function UPrimitiveComponent:AddImpulse(Impulse, BoneName, bVelChange) end

---添加径向力
---@param Origin FVector @原点
---@param Radius number @半径
---@param Strength number @强度
---@param Falloff number @衰减类型
---@param bAccelChange boolean @是否作为加速度
function UPrimitiveComponent:AddRadialForce(Origin, Radius, Strength, Falloff, bAccelChange) end

---添加径向冲量
---@param Origin FVector @原点
---@param Radius number @半径
---@param Strength number @强度
---@param Falloff number @衰减类型
---@param bVelChange boolean @是否作为速度变化
function UPrimitiveComponent:AddRadialImpulse(Origin, Radius, Strength, Falloff, bVelChange) end

---设置材质
---@param ElementIndex number @元素索引
---@param Material UMaterialInterface @材质
function UPrimitiveComponent:SetMaterial(ElementIndex, Material) end

---获取材质
---@param ElementIndex number @元素索引
---@return UMaterialInterface
function UPrimitiveComponent:GetMaterial(ElementIndex) end

---创建动态材质实例
---@param ElementIndex number @元素索引
---@param SourceMaterial UMaterialInterface @源材质
---@return UMaterialInstanceDynamic
function UPrimitiveComponent:CreateDynamicMaterialInstance(ElementIndex, SourceMaterial) end

---游戏世界，包含所有 Actor 和关卡
---@class UWorld: UObject
UWorld = {}

---生成 Actor
---@param Class UClass @Actor 类
---@param Location FVector @位置
---@param Rotation FRotator @旋转
---@return AActor
function UWorld:SpawnActor(Class, Location, Rotation) end

---获取指定类的所有 Actor
---@param ActorClass UClass @Actor 类
---@return ULuaArrayHelper<AActor>
function UWorld:GetAllActorsOfClass(ActorClass) end

---获取第一个玩家控制器
---@return APlayerController
function UWorld:GetFirstPlayerController() end

---获取游戏状态
---@return AGameStateBase
function UWorld:GetGameState() end

---获取权威游戏模式
---@return AGameModeBase
function UWorld:GetAuthGameMode() end

---获取计时器管理器
---@return FTimerManager
function UWorld:GetTimerManager() end

---获取游戏时间（秒）
---@return number
function UWorld:GetTimeSeconds() end

---获取真实时间（秒）
---@return number
function UWorld:GetRealTimeSeconds() end

---获取帧时间（秒）
---@return number
function UWorld:GetDeltaSeconds() end

---按通道进行单线追踪
---@param Start FVector @起点
---@param End FVector @终点
---@param TraceChannel number @追踪通道
---@param bTraceComplex boolean @是否追踪复杂碰撞
---@param ActorsToIgnore ULuaArrayHelper<AActor> @忽略的 Actor 列表
---@param DrawDebugType number @调试绘制类型
---@param OutHit FHitResult @命中结果（输出）
---@param bIgnoreSelf boolean @是否忽略自身
---@return boolean
function UWorld:LineTraceSingleByChannel(Start, End, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf) end

---按通道进行多线追踪
---@param Start FVector @起点
---@param End FVector @终点
---@param TraceChannel number @追踪通道
---@param bTraceComplex boolean @是否追踪复杂碰撞
---@param ActorsToIgnore ULuaArrayHelper<AActor> @忽略的 Actor 列表
---@param DrawDebugType number @调试绘制类型
---@param OutHits ULuaArrayHelper<FHitResult> @命中结果列表（输出）
---@param bIgnoreSelf boolean @是否忽略自身
---@return boolean
function UWorld:LineTraceMultiByChannel(Start, End, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf) end

---按通道进行单次扫描
---@param Start FVector @起点
---@param End FVector @终点
---@param Rot FQuat @旋转
---@param TraceChannel number @追踪通道
---@param CollisionShape FCollisionShape @碰撞形状
---@param bTraceComplex boolean @是否追踪复杂碰撞
---@param ActorsToIgnore ULuaArrayHelper<AActor> @忽略的 Actor 列表
---@param DrawDebugType number @调试绘制类型
---@param OutHit FHitResult @命中结果（输出）
---@param bIgnoreSelf boolean @是否忽略自身
---@return boolean
function UWorld:SweepSingleByChannel(Start, End, Rot, TraceChannel, CollisionShape, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf) end

---游戏模式基类，定义游戏规则
---@class AGameModeBase: AActor
AGameModeBase = {}

---获取游戏状态
---@return AGameStateBase
function AGameModeBase:GetGameState() end

---重启游戏
function AGameModeBase:RestartGame() end

---返回主菜单
function AGameModeBase:ReturnToMainMenuHost() end

---比赛是否已开始
---@return boolean
function AGameModeBase:HasMatchStarted() end

---比赛是否已结束
---@return boolean
function AGameModeBase:HasMatchEnded() end

---开始游戏
function AGameModeBase:StartPlay() end

---初始化游戏
---@param MapName string @地图名称
---@param Options string @选项
---@param ErrorMessage string @错误信息（输出）
function AGameModeBase:InitGame(MapName, Options, ErrorMessage) end

---游戏状态基类，保存游戏状态信息
---@class AGameStateBase: AActor
AGameStateBase = {}

---获取服务器世界时间（秒）
---@return number
function AGameStateBase:GetServerWorldTimeSeconds() end

---获取玩家状态数组
---@return ULuaArrayHelper<APlayerState>
function AGameStateBase:GetPlayerArray() end

---获取默认游戏模式
---@return AGameModeBase
function AGameStateBase:GetDefaultGameMode() end

---玩家状态，保存玩家信息
---@class APlayerState: AActor
---@field Score number @分数
---@field PlayerId number @玩家 ID
---@field Ping number @网络延迟
APlayerState = {}

---获取玩家名称
---@return string
function APlayerState:GetPlayerName() end

---获取所属控制器
---@return AController
function APlayerState:GetOwningController() end

---获取玩家 Pawn
---@return APawn
function APlayerState:GetPawn() end

---是否是观察者
---@return boolean
function APlayerState:IsSpectator() end

---是否只是观察者
---@return boolean
function APlayerState:IsOnlyASpectator() end

-- ============================================================================
-- 常用结构体
-- ============================================================================

---三维向量，表示位置或方向
---@class FVector
---@field X number @X 分量
---@field Y number @Y 分量
---@field Z number @Z 分量
FVector = {}

---二维向量
---@class FVector2D
---@field X number @X 分量
---@field Y number @Y 分量
FVector2D = {}

---旋转（欧拉角）
---@class FRotator
---@field Pitch number @俯仰角（绕 Y 轴）
---@field Yaw number @偏航角（绕 Z 轴）
---@field Roll number @翻滚角（绕 X 轴）
FRotator = {}

---四元数，用于表示旋转
---@class FQuat
---@field X number @X 分量
---@field Y number @Y 分量
---@field Z number @Z 分量
---@field W number @W 分量
FQuat = {}

---变换，包含位置、旋转和缩放
---@class FTransform
---@field Translation FVector @位置
---@field Rotation FQuat @旋转
---@field Scale3D FVector @缩放
FTransform = {}

---线性颜色（浮点 RGBA）
---@class FLinearColor
---@field R number @红色分量（0-1）
---@field G number @绿色分量（0-1）
---@field B number @蓝色分量（0-1）
---@field A number @Alpha 分量（0-1）
FLinearColor = {}

---颜色（整数 RGBA）
---@class FColor
---@field R number @红色分量（0-255）
---@field G number @绿色分量（0-255）
---@field B number @蓝色分量（0-255）
---@field A number @Alpha 分量（0-255）
FColor = {}

---线追踪/扫描的命中结果
---@class FHitResult
---@field bBlockingHit boolean @是否是阻挡命中
---@field bStartPenetrating boolean @起点是否在物体内部
---@field Time number @命中时间（0-1）
---@field Distance number @命中距离
---@field Location FVector @命中位置（世界坐标）
---@field ImpactPoint FVector @实际接触点
---@field Normal FVector @命中表面法线
---@field ImpactNormal FVector @实际接触点法线
---@field TraceStart FVector @追踪起点
---@field TraceEnd FVector @追踪终点
---@field PenetrationDepth number @穿透深度
---@field Item number @命中元素索引
---@field FaceIndex number @命中面索引
---@field BoneName string @命中骨骼名称
FHitResult = {}

---碰撞形状
---@class FCollisionShape
---@field ShapeType number @形状类型
FCollisionShape = {}

-- ============================================================================
-- 常用枚举
-- ============================================================================

---碰撞通道枚举
---@class ECollisionChannel
---@field ECC_WorldStatic number @世界静态物体
---@field ECC_WorldDynamic number @世界动态物体
---@field ECC_Pawn number @Pawn
---@field ECC_Visibility number @可见性
---@field ECC_Camera number @相机
---@field ECC_PhysicsBody number @物理体
---@field ECC_Vehicle number @载具
---@field ECC_Destructible number @可破坏物
ECollisionChannel = {}

---碰撞启用类型枚举
---@class ECollisionEnabled
---@field NoCollision number @无碰撞
---@field QueryOnly number @仅查询
---@field PhysicsOnly number @仅物理
---@field QueryAndPhysics number @查询和物理
ECollisionEnabled = {}

---碰撞响应枚举
---@class ECollisionResponse
---@field ECR_Ignore number @忽略
---@field ECR_Overlap number @重叠
---@field ECR_Block number @阻挡
ECollisionResponse = {}

---网络角色枚举
---@class ENetRole
---@field ROLE_None number @无角色
---@field ROLE_SimulatedProxy number @模拟代理
---@field ROLE_AutonomousProxy number @自主代理
---@field ROLE_Authority number @权威
ENetRole = {}

---移动模式枚举
---@class EMovementMode
---@field MOVE_None number @无
---@field MOVE_Walking number @行走
---@field MOVE_NavWalking number @导航行走
---@field MOVE_Falling number @下落
---@field MOVE_Swimming number @游泳
---@field MOVE_Flying number @飞行
---@field MOVE_Custom number @自定义
EMovementMode = {}

---输入事件枚举
---@class EInputEvent
---@field IE_Pressed number @按下
---@field IE_Released number @释放
---@field IE_Repeat number @重复
---@field IE_DoubleClick number @双击
---@field IE_Axis number @轴
EInputEvent = {}

---地图旅行类型枚举
---@class ETravelType
---@field TRAVEL_Absolute number @绝对路径
---@field TRAVEL_Partial number @部分路径
---@field TRAVEL_Relative number @相对路径
ETravelType = {}

---Tick 组枚举
---@class ETickingGroup
---@field TG_PrePhysics number @物理前
---@field TG_StartPhysics number @物理开始
---@field TG_DuringPhysics number @物理中
---@field TG_EndPhysics number @物理结束
---@field TG_PostPhysics number @物理后
---@field TG_PostUpdateWork number @更新后
---@field TG_LastDemotable number @最后可降级
---@field TG_NewlySpawned number @新生成
ETickingGroup = {}
