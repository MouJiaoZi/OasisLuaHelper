---@meta

---异步任务接口库
---@class UGCGameplayTaskSystem
UGCGameplayTaskSystem = {}

---异步任务实例，创建出来的异步任务会自动启动
---@class UGCGameplayTaskInstance
---@field Definition UGCGameplayTaskDefinition @异步任务定义
---@field Params any[] @异步任务参数列表
---@field CompletionCallbacks table @异步任务的回调函数
---@field TaskOwner UObject @异步任务的所有者
---@field TaskObject UGameplaytTask @异步任务的UObject实例
---@field BeginTask fun() @启动异步任务
---@field EndTask fun() @结束异步任务
local UGCGameplayTaskInstance = {}

---通用异步任务
---@class General
UGCGameplayTaskSystem.General = {}

---通用异步任务：SpawnActor
---@class SpawnActor
UGCGameplayTaskSystem.General.SpawnActor = {}

---玩家异步任务
---@class Player
UGCGameplayTaskSystem.Player = {}

---玩家异步任务：添加自定义相机数据
---@class AddCustomCameraData
UGCGameplayTaskSystem.Player.AddCustomCameraData = {}

---玩家异步任务：添加自定义相机数据
---@class SetEyeRotationMode
UGCGameplayTaskSystem.Player.SetEyeRotationMode = {}

---玩家异步任务：注册一组状态互斥
---@class RegisterDynamicState
UGCGameplayTaskSystem.Player.RegisterDynamicState = {}

---通用异步任务：从小地图上获得一个选点
---@class SelectLocationFromMap
UGCGameplayTaskSystem.General.SelectLocationFromMap = {}

---玩家异步任务：切换武器
---@class SwitchWeapon
UGCGameplayTaskSystem.Player.SwitchWeapon = {}

---角色异步任务
---@class PlayerPawn
UGCGameplayTaskSystem.PlayerPawn = {}

---角色异步任务：传送角色
---@class TeleportPawn
UGCGameplayTaskSystem.PlayerPawn.TeleportPawn = {}

---角色异步任务：角色冲刺
---@class TeleportPawn
UGCGameplayTaskSystem.PlayerPawn.Sprint = {}

---角色异步任务：角色换材质
---@class SetMaterial
UGCGameplayTaskSystem.PlayerPawn.SetMaterial = {}

---角色异步任务：击退
---@class SetMaterial
UGCGameplayTaskSystem.PlayerPawn.HitBack = {}

---角色异步任务
---@class Character
UGCGameplayTaskSystem.PlayerPawn.AttachToCharacterScoket = {}

---角色异步任务: 替换动画
---@class Character
UGCGameplayTaskSystem.PlayerPawn.ReplaceAnim = {}

---GenericCharacter异步任务
---@class GenericCharacter
UGCGameplayTaskSystem.GenericCharacter = {}

---GenericCharacter异步任务：替换动画
---@class ReplaceAnim
UGCGameplayTaskSystem.GenericCharacter.ReplaceAnim = {}

---武器异步任务
---@class Weapon
UGCGameplayTaskSystem.Weapon = {}

---武器异步任务：自动瞄准
---@class AutoAim
UGCGameplayTaskSystem.Weapon.AutoAim = {}

---武器异步任务：发射抛体
---@class LaunchProjectile
UGCGameplayTaskSystem.Weapon.LaunchProjectile = {}

---通用通用异步任务：创建SpawnActor异步任务,在指定位置与朝向创建一个指定类型的Actor
---@param TaskOwner UObject @异步任务所有者, 必须是PlayerController、PersistEffect、PersistBaseComponent、ActivityBaseActor
---@param SpawnLocation FVector @生成的位置
---@param SpawnRotation FRotator @生成的朝向
---@param ClassToSpawn string | FSoftClassPath @生成的Actor类型
---@param CallbackOwner any @回调函数的self，可以为nil
---@param SuccessCallback fun(TaskInstance: UGCGameplayTaskInstance, SpawnedActor: AActor) @成功回调
---@param FailedCallback fun(TaskInstance: UGCGameplayTaskInstance, SpawnedActor: AActor) @失败回调
---@return UGCGameplayTaskInstance @异步任务实例
function UGCGameplayTaskSystem.General.SpawnActor.NewTask(TaskOwner, SpawnLocation, SpawnRotation, ClassToSpawn, CallbackOwner, SuccessCallback, FailedCallback) end

---玩家异步任务：创建AddCustomCameraData异步任务，能够设置相机的位置、Fov、SpringArm的长度等
---生效范围：客户端
---@param TaskOwner UObject @异步任务所有者, 必须是PlayerController、PersistEffect、PersistBaseComponent、ActivityBaseActor
---@param Pawn PlayerPawn @相机所观察的Pawn
---@param FadeInSpeed number @相机到达目标参数的渐进速度
---@param Offset FVector @相机相对Pawn的偏移量，可以为nil
---@param AdditiveOffsetFov number @相机Fov的增量，可为nil
---@param SpringArmLengthAdditive number @SpringArm的增量，可为nil
---@param SpringArmRotation FRotator @SpringArm的旋转同时锁定SpringArm只能沿Roll轴旋转，可为nil
---@return UGCGameplayTaskInstance @异步任务实例
function UGCGameplayTaskSystem.Player.AddCustomCameraData.NewTask(TaskOwner, Pawn, FadeInSpeed, Offset, AdditiveOffsetFov, SpringArmLengthAdditive, SpringArmRotation) end

---玩家异步任务：创建SetEyeRotationMode异步任务，能够设置相机和角色旋转关联的方式
---生效范围：客户端
---@param TaskOwner UObject @异步任务所有者, 必须是PlayerController、PersistEffect、PersistBaseComponent、ActivityBaseActor
---@param Pawn PlayerPawn @相机所观察的Pawn
---@param FreeCamera boolean @自由相机，即相机不控制角色旋转
---@param LockSwitch boolean @锁定视角切换按钮
---@param bSpringInhertRotation boolean @SpringArm是否从父组件继承旋转
---@param AutoRevert boolean @异步任务结束时是否自动还原
---@return UGCGameplayTaskInstance @异步任务实例
function UGCGameplayTaskSystem.Player.SetEyeRotationMode.NewTask(TaskOwner, Pawn, FreeCamera, LockSwitch, bSpringInhertRotation, AutoRevert) end

---玩家异步任务：创建RegisterDynamicState异步任务，能够为角色获取一组Tag标识的状态的互斥关系
---生效范围：服务器
---@param TaskOwner UObject @异步任务所有者, 必须是PlayerController、PersistEffect、PersistBaseComponent、ActivityBaseActor
---@param Actor AActor @注册这组状态互斥的Actor，其需要拥有UPersistBaseComponent
---@param BlockTagContainer FGameplayTagContainer @TargetActor上阻碍这组Tag生效的Tag
---@param ActiveTagContainer FGameplayTagContainer @注册后给TargetActor加上的Tag
---@param InterruptTagContainer FGameplayTagContainer @注册后TargetActor将被打断的Tag
---@param DisableTagContainer FGameplayTagContainer @注册后TargetActor将被禁用的TagContainer
---@param CallbackOwner any @回调函数的self，可以为nil
---@param FailCallback fun() @注册失败回调
---@param InterruptedCallback fun() @被打断回调
---@return UGCGameplayTaskInstance @异步任务实例
function UGCGameplayTaskSystem.Player.RegisterDynamicState.NewTask(TaskOwner, Actor, BlockTagContainer, ActiveTagContainer, InterruptTagContainer, DisableTagContainer, CallbackOwner, FailCallback, InterruptedCallback) end

---通用异步任务：创建SelectLocationFromMap异步任务，能够从小地图上选择一个点并在回调中获得选点的坐标
---生效范围：客户端
---@param TaskOwner UObject @异步任务所有者, 必须是PlayerController、PersistEffect、PersistBaseComponent、ActivityBaseActor
---@param ExpectedLocations FVector[] @小地图上需要显示的点
---@param MarkIcon string @标记可选点的图标
---@param SelectedIcon string @选中点的图标
---@param CallbackOwner any @回调函数的self，可以为nil
---@param ExpectedLocationSelectedCallback fun(ExpectedLocationIndex:int, NormalLocation:FVector2D) @目标位置选择回调
---@param NormalLocationSelectedCallback fun(ExpectedLocationIndex:int, NormalLocation:FVector2D) @非目标位置选择回调
---@param CanceledCallback fun() @取消选择回调
---@return UGCGameplayTaskInstance @异步任务实例
function UGCGameplayTaskSystem.General.SelectLocationFromMap.NewTask(TaskOwner, ExpectedLocations, MarkIcon, SelectedIcon, CallbackOwner, ExpectedLocationSelectedCallback, NormalLocationSelectedCallback, CanceledCallback) end

---玩家异步任务：创建SwitchWeapon异步任务，能够实现角色的武器切换
---生效范围：服务器
---@param TaskOwner UObject @异步任务所有者, 必须是PlayerController、PersistEffect、PersistBaseComponent、ActivityBaseActor
---@param Pawn PlayerPawn @需要切换武器的Pawn
---@param WeaponSlot ESurviveWeaponPropSlot @需要切换到的武器槽位
---@param SwitchBackWhenFinish boolean @是否在异步任务结束后切换回原来的武器
---@param UseAnimation boolean @是否播放切换武器动画
---@param ForceFinishPreviousSwitch boolean @是否强制完成上一次的切换武器
---@param IgnoreState boolean @是否忽略状态互斥
---@return UGCGameplayTaskInstance @异步任务实例
function UGCGameplayTaskSystem.Player.SwitchWeapon.NewTask(TaskOwner, Pawn, WeaponSlot, SwitchBackWhenFinish, UseAnimation, ForceFinishPreviousSwitch, IgnoreState) end

---玩家异步任务：创建TeleportPawn异步任务，能够将角色传送到目标位置和黑屏预加载
---生效范围：服务器
---@param TaskOwner UObject @异步任务所有者, 必须是PlayerController、PersistEffect、PersistBaseComponent、ActivityBaseActor
---@param Pawn PlayerPawn @需要传送的Pawn
---@param TargetLocation FVector @传送到的目标位置
---@param TargetRotation FRotator @传送后的目标朝向
---@param PreloadLevelRadius number @预加载区域半径
---@param PreloadLevelTime number @预加载时间
---@return UGCGameplayTaskInstance @异步任务实例
function UGCGameplayTaskSystem.PlayerPawn.TeleportPawn.NewTask(TaskOwner, Pawn, TargetLocation, TargetRotation, PreloadLevelRadius, PreloadLevelTime) end

---角色GameplayTask: 创建 Sprint 异步任务, 能够让Pawn进行冲刺，需要客户端和服务器同时调用才能生效
---生效范围：服务器&客户端
---@param TaskOwner UObject @Task所有者
---@param Pawn PlayerPawn @需要进行冲刺的Pawn
---@param SpeedCurve UCurveFloat @冲刺速度曲线
---@param LaunchDuration number @冲刺持续时间
---@param InitDirection FVector @初始冲刺方向
---@param GroundSprintMode EGroundSprintMode @冲刺模式
---@param TurnSpeed number @转向速度, 默认-1表示直接转向
---@param GravityEnable boolean @是否启用重力，默认启用
---@param GravityScale number @重力缩放，默认1
---@param bIgnoreSame boolean @是否忽略同阵营碰撞，默认false
---@param bIgnoreEnemy boolean @是否忽略敌人碰撞，默认false
---@param bIgnoreNeutral boolean @是否忽略中立碰撞，默认false
---@param DisableFallingTime number @冲刺过程中落地保护时间，默认10s
---@return UGCGameplayTaskInstance @UGCGameplayTask实例
function UGCGameplayTaskSystem.PlayerPawn.Sprint.NewTask(TaskOwner, Pawn, SpeedCurve, LaunchDuration, InitDirection, GroundSprintMode, TurnSpeed, GravityEnable, GravityScale, bIgnoreSame, bIgnoreEnemy, bIgnoreNeutral, DisableFallingTime) end

---角色GameplayTask: 创建换材质任务
---生效范围：客户端
---@param TaskOwner UObject @Task所有者
---@param Pawn ASTExtraBaseCharacter @需要进行换材质的Player
---@param Material UMaterialInterface @新材质对象
---@return UGCGameplayTaskInstance @UGCGameplayTask实例
function UGCGameplayTaskSystem.PlayerPawn.SetMaterial.NewTask(TaskOwner, Pawn, Material) end

---角色GameplayTask: 创建击退任务
---生效范围：DS
---@param TaskOwner UObject @Task所有者
---@param Pawn ACharacter @被击退的Pawn
---@param Direction FVector @被击退的方向
---@param HitBackEffectCfg FOnHurtEffect_HitBack @击退配置
---@return UGCGameplayTaskInstance @UGCGameplayTask实例
function UGCGameplayTaskSystem.PlayerPawn.HitBack.NewTask(TaskOwner, Pawn, Direction, HitBackEffectCfg) end

---武器异步任务：创建AttachToCharacterScoket异步任务
---生效范围：主端
---@param TaskOwner UObject @异步任务所有者
---@param Target Actor @需要AttachTo 的 Actor
---@param Pawn ASTExtraBaseCharacter @需要AttachTo 的 Pawn
---@param Selector EAvatarDamagePosition|FName @需要AttachTo 的部位
---@return UGCGameplayTaskInstance @异步任务实例
function UGCGameplayTaskSystem.PlayerPawn.AttachToCharacterScoket.NewTask(TaskOwner, Target, Pawn, Selector) end

---角色异步任务: 替换角色动画
---生效范围: 客户端
---@param TaskOwner UObject @异步任务所有者, 必须是PlayerController、PersistEffect、PersistBaseComponent、ActivityBaseActor
---@param Pawn PlayerPawn @需要替换动画的角色
---@param AnimList FPEPawnAnimData[] @需要替换的动画列表
function UGCGameplayTaskSystem.PlayerPawn.ReplaceAnim.NewTask(TaskOwner, Pawn, AnimList) end

---GenericCharacter异步任务: 替换GenericCharacter的动画资源
---生效范围: 客户端
---通过GameplayTag指定需要替换的动画，支持同时替换多个动画
---@param TaskOwner UObject @异步任务所有者, 必须是PlayerController、PersistEffect、PersistBaseComponent、ActivityBaseActor
---@param GenericCharacter AGenericCharacter @需要替换动画的GenericCharacter
---@param AnimList FGenericCharacterAnimOverrideData[] @需要替换的动画列表，每项包含Tag(FGameplayTag)和Asset(UAnimationAsset)
---@param AnimLayer int @动画层级，值越大优先级越高，默认0
---@return UGCGameplayTaskInstance @异步任务实例
function UGCGameplayTaskSystem.GenericCharacter.ReplaceAnim.NewTask(TaskOwner, GenericCharacter, AnimList, AnimLayer) end

---武器异步任务：创建AutoAim异步任务，启用角色的自动瞄准，准星将自动瞄准到最近的敌人胸口
---生效范围：主端
---@param TaskOwner UObject @异步任务所有者, 必须是PlayerController、PersistEffect、PersistBaseComponent、ActivityBaseActor
---@param Pawn PlayerPawn @需要进行自动瞄准的Pawn
---@param InnerSpeed number @内圈基础速度
---@param InnerAdsorbMaxRange number @内圈最大吸附距离
---@param InnerAdsorbMinRange number @内圈最小吸附距离
---@param OuterSpeed number @外圈基础速度
---@param OuterAdsorbMaxRange number @外圈最大吸附距离
---@param OuterAdsorbMinRange number @外圈最小吸附距离
---@param AimNPC boolean @是否瞄准NPC
---@return UGCGameplayTaskInstance @异步任务实例
function UGCGameplayTaskSystem.Weapon.AutoAim.NewTask(TaskOwner, Pawn, InnerSpeed, InnerAdsorbMaxRange, InnerAdsorbMinRange, OuterSpeed, OuterAdsorbMaxRange, OuterAdsorbMinRange, AimNPC) end

---武器异步任务：创建LaunchProjectile异步任务，创建一个抛体向指定方向发射
---生效范围：服务器
---@param TaskOwner UObject @异步任务所有者, 必须是PlayerController、PersistEffect、PersistBaseComponent、ActivityBaseActor
---@param Instigator Actor @抛体伤害来源
---@param ProjectileClass UClass @所创建的抛体的类
---@param Location Vector @抛体发射的起始位置
---@param Rotation Rotator @抛体发射的初始旋转
---@param Scale Vector @抛体的初始缩放
---@param Speed number @抛体的初始速度
---@param GravityScale number @抛体的重力缩放
---@param Direction Vector @抛体的初始方向
---@param DamageValue number @抛体的伤害值
---@param DamageType ERestrictedDamageType @抛体的伤害类型
---@param CallbackOwner UObject @抛体的回调所属对象
---@param OnProjectileDestroyedCallBack function @抛体被销毁时的回调
---@return UGCGameplayTaskInstance @异步任务实例
function UGCGameplayTaskSystem.Weapon.LaunchProjectile.NewTask(TaskOwner, Instigator, ProjectileClass, Location, Rotation, Scale, Speed, GravityScale, Direction, DamageValue, DamageType, CallbackOwner, OnProjectileDestroyedCallBack) end