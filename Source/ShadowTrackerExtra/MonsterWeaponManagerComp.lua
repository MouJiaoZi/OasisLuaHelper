---@meta

---怪物武器姿势枚举
---@class EMonsterWeaponPose
---@field Stand number @站立
---@field Crouch number @蹲下
EMonsterWeaponPose = {}


---怪物探头姿势枚举
---@class EMonsterPeekPose
---@field None number @无探头
---@field Left number @左探头
---@field Right number @右探头
EMonsterPeekPose = {}


---怪物投掷物类型枚举
---@class EMonsterThrowItemType
---@field Grenade number @手雷
---@field MolotovCocktail number @燃烧瓶
---@field SmokeGrenade number @烟雾弹
EMonsterThrowItemType = {}


---当前武器结构体
---@class FMonsterCurrentWeapon
---@field CurrentWeaponIndex number @当前武器索引 (-1表示无武器)
---@field LastWeaponIndex number @上一个武器索引 (-1表示无武器)
---@field bIsSwitchWeapon boolean @是否正在切换武器
FMonsterCurrentWeapon = {}


---动画蒙太奇结果结构体
---@class FMonsterWeaponMontageResult
FMonsterWeaponMontageResult = {}


---MonsterWeaponManager - 怪物枪械管理器 功能：管理当前枪械开火、切枪、换弹逻辑
---@class UMonsterWeaponManagerComp: UActorComponent
---@field CurrentWeaponStruct FMonsterCurrentWeapon @当前武器结构体(需要同步客户端)
---@field CurrentWeaponPose EMonsterWeaponPose @当前姿势状态(需要同步客户端)
---@field CurrentPeekPose EMonsterPeekPose @当前探头姿势状态(需要同步客户端)
---@field bIsReload boolean @是否正在换弹(需要同步客户端)
---@field TargetBlackBoardKeyName string @目标黑板键名称
---@field ReloadBlackBoardKeyName string @换弹状态黑板键名称
---@field TargetLocation FVector @目标位置(需要同步客户端，无OnRep)
---@field bHasTarget boolean @是否有目标(需要同步客户端，有OnRep)
---@field CachedWeaponEntities ULuaArrayHelper<UMonsterWeaponEntityComp> @缓存的武器实体列表
---@field CharacterMeshTag string @角色Mesh组件Tag，用于武器挂接时通过ComponentTags查找正确的SkeletalMeshComponent
---@field TakeOffWeaponAnimTag FGameplayTag @收枪动画Tag
---@field TakeWeaponAnimTag FGameplayTag @掏枪动画Tag
---@field ReloadAnimTag FGameplayTag @换弹动画Tag
---@field FireAnimTag FGameplayTag @开火动画Tag
---@field ThrowComponentClassMap ULuaMapHelper<EMonsterThrowItemType, UThrowComponent> @投掷物类型到ThrowComponent类的映射
---@field ThrowableHandSocket string @投掷物手部挂点Socket
local UMonsterWeaponManagerComp = {}

---[CS] 初始化枪械 1. BeginPlay调用 2. 服务器端初始化每个WeaponEntity组件的CurrentBulletNum等于MaxBulletNum 3. 客户端创建每个WeaponEntity组件的MeshComponent
function UMonsterWeaponManagerComp:InitWeapon() end

---[S] 切枪
---@param TargetWeaponIndex number
---@param bWithoutAnim boolean
function UMonsterWeaponManagerComp:SwitchWeapon(TargetWeaponIndex, bWithoutAnim) end

---[S] 停止切枪
function UMonsterWeaponManagerComp:StopSwitchWeapon() end

---[S] 收枪（切换到空手状态） 切换武器到标记为NoUseWeaponEntity的WeaponEntity对应的Index
---@param bWithoutAnim boolean
function UMonsterWeaponManagerComp:TakeOffWeapon(bWithoutAnim) end

---[S] 开火
---@param TargetActor AActor
function UMonsterWeaponManagerComp:Fire(TargetActor) end

---[S] 换弹
function UMonsterWeaponManagerComp:Reload() end

---[S] 取消换弹
function UMonsterWeaponManagerComp:StopReload() end

---[CS] 获取动画蒙太奇
---@param AnimTag FGameplayTag
---@param WeaponPose EMonsterWeaponPose
---@return FMonsterWeaponMontageResult
function UMonsterWeaponManagerComp:GetMontageByGameplayTag(AnimTag, WeaponPose) end

---[C] 切换AnimList(暂时空实现)
---@param CurrentWeapon UMonsterWeaponEntityComp
function UMonsterWeaponManagerComp:ChangeAnimList(CurrentWeapon) end

---[S] 施加伤害
---@param InDamagedActor AActor
---@param BulletHitInfo FHitResult
function UMonsterWeaponManagerComp:WeaponApplyDamage(InDamagedActor, BulletHitInfo) end

---[S] 切换武器姿势（只能DS调用）
---@param NewWeaponPose EMonsterWeaponPose
function UMonsterWeaponManagerComp:SwitchWeaponPose(NewWeaponPose) end

---[S] 切换探头姿势（只能DS调用）
---@param NewPeekPose EMonsterPeekPose
function UMonsterWeaponManagerComp:SwitchPeekPose(NewPeekPose) end

---[CS] 获取所有武器实体组件
function UMonsterWeaponManagerComp:GetAllWeaponEntities() end

---[C] 当前武器结构体同步回调
function UMonsterWeaponManagerComp:OnRep_CurrentWeaponStruct() end

---[C] 当前姿势同步回调
function UMonsterWeaponManagerComp:OnRep_CurrentWeaponPose() end

---[C] 当前探头姿势同步回调
function UMonsterWeaponManagerComp:OnRep_CurrentPeekPose() end

---[C] 换弹状态同步回调
function UMonsterWeaponManagerComp:OnRep_IsReload() end

---[C] 是否有目标同步回调
function UMonsterWeaponManagerComp:OnRep_HasTarget() end

---[C] 客户端开火效果
function UMonsterWeaponManagerComp:Multicast_Fire() end

---[C] 客户端换弹效果
function UMonsterWeaponManagerComp:Multicast_Reload() end

---[C] 客户端停止换弹效果
function UMonsterWeaponManagerComp:Multicast_StopReload() end

---[C] 收枪动画播放完成回调
---@param Montage UAnimMontage
---@param bInterrupted boolean
function UMonsterWeaponManagerComp:OnTakeOffWeaponMontageEnded(Montage, bInterrupted) end

---[CS] 根据投掷物类型获取ThrowComponent类
---@param ThrowItemType EMonsterThrowItemType
function UMonsterWeaponManagerComp:GetThrowComponentClass(ThrowItemType) end

---[C] 将武器挂接到手部Socket
---@param WeaponEntity UMonsterWeaponEntityComp
function UMonsterWeaponManagerComp:AttachWeaponToHandSocket(WeaponEntity) end

---[C] 将武器挂接到非使用Socket
---@param WeaponEntity UMonsterWeaponEntityComp
function UMonsterWeaponManagerComp:AttachWeaponToNoUseSocket(WeaponEntity) end

---[C] 创建武器Mesh组件
---@param WeaponEntity UMonsterWeaponEntityComp
function UMonsterWeaponManagerComp:CreateWeaponMeshComponent(WeaponEntity) end

---[C] 创建并挂接所有配件Mesh组件
---@param WeaponEntity UMonsterWeaponEntityComp
function UMonsterWeaponManagerComp:CreateAndAttachAttachmentMeshComponents(WeaponEntity) end
