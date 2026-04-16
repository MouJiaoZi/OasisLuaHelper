---@meta

---怪物武器配件挂接Socket类型枚举
---@class EMonsterWeaponAttachmentSocketType
---@field GunPoint number @枪口
---@field Grip number @握把
---@field Magazine number @弹匣
---@field Gunstock number @枪托
---@field OpticalSightLarge number @大型瞄准镜
---@field OpticalSightSmall number @小型瞄准镜
---@field OpticalSightDefault number @默认瞄准镜
---@field Ammo number @弹药
---@field AngledOpticalSight number @斜向瞄准镜
---@field Refit_RearGrip number @后握把
---@field Refit_Sight number @准星
---@field KillCountingScreen_L number @击杀计数屏幕左
---@field KillCountingScreen_R number @击杀计数屏幕右
EMonsterWeaponAttachmentSocketType = {}


---怪物武器类型枚举
---@class EMonsterWeaponType
---@field Hand number @空手
---@field SingleShootWeapon number @单发枪
EMonsterWeaponType = {}


---武器配件挂接信息结构体
---@class FAttachmentInfo
---@field WeaponAttachmentSocketType EMonsterWeaponAttachmentSocketType @配件挂接类型
---@field AttachOffset FVector @挂接偏移
FAttachmentInfo = {}


---武器动画配置结构体
---@class FMonsterWeaponAnimConfig
FMonsterWeaponAnimConfig = {}


---配件MeshComponent运行时信息结构体
---@class FAttachmentMeshComponentInfo
---@field SocketType EMonsterWeaponAttachmentSocketType @配件挂接类型
FAttachmentMeshComponentInfo = {}


---MonsterWeaponEntity - 枪械配置和枪械实体 功能：存储枪械的配置数据和运行时状态
---@class UMonsterWeaponEntityComp: UActorComponent
---@field WeaponType EMonsterWeaponType @武器类型
---@field WeaponIndex number @枪械索引
---@field TakeOffWeaponTime number @收起时长(秒)
---@field TakeWeaponTime number @掏出时长(秒)
---@field StandToCrouchTime number @站立转蹲下时长(秒)
---@field CrouchToStandTime number @蹲下转站立时长(秒)
---@field PeekInTime number @进入探头时长(秒) - 从无探头到左/右探头
---@field PeekOutTime number @退出探头时长(秒) - 从左/右探头到无探头
---@field PeekSwitchTime number @切换探头时长(秒) - 从左探头到右探头或从右探头到左探头
---@field AnimAssetMap ULuaMapHelper<FGameplayTag, FMonsterWeaponAnimConfig> @角色动画资源映射表 - 通过GameplayTag获取对应姿势的角色动画
---@field WeaponAnimAssetMap ULuaMapHelper<FGameplayTag, FMonsterWeaponAnimConfig> @武器动画资源映射表 - 通过GameplayTag获取对应姿势的武器动画
---@field WeaponAnimInstanceClass UAnimInstance @武器AnimInstance类
---@field WeaponMeshHandSocket string @枪械Mesh手部挂点
---@field WeaponMeshHandSocketOffset FTransform @枪械Mesh手部挂点偏移
---@field WeaponMeshNoUseSocket string @枪械Mesh非使用挂点
---@field WeaponMeshNoUseSocketOffset FTransform @枪械Mesh非使用挂点偏移
---@field MuzzleSocket string @枪口Socket
---@field WeaponDamage number @枪械伤害
---@field DamageTypeClass UDamageType @伤害类型Class
---@field ShootHitRatio number @射击命中概率 (0.0 - 1.0)
---@field ReloadTime number @换弹时长(秒)
---@field ReloadTimeMagOut number @弹匣取下时间(秒) - 换弹开始后多久弹匣从武器上取下
---@field ReloadTimeMagIn number @弹匣安装时间(秒) - 换弹开始后多久弹匣安装回武器上
---@field MagOutSocket string @弹匣取下时挂接到角色的Socket
---@field ShootRate number @射速(每秒射击次数)
---@field MaxBulletNum number @最大子弹数
---@field bFireFaceTarget boolean @开火时是否瞬间转向目标
---@field AttachmentInfos ULuaArrayHelper<FAttachmentInfo> @武器配件配置列表
---@field AttachmentSocket_Muzzle string @枪口Socket名称
---@field AttachmentSocket_Grip string @握把Socket名称
---@field AttachmentSocket_Mag string @弹匣Socket名称
---@field AttachmentSocket_Gunstock string @枪托Socket名称
---@field AttachmentSocket_Upper_Large string @大型瞄准镜Socket名称
---@field AttachmentSocket_Upper_Small string @小型瞄准镜Socket名称
---@field AttachmentSocket_Upper_Default string @默认瞄准镜Socket名称
---@field AttachmentSocket_Ammo string @弹药Socket名称
---@field AttachmentSocket_Upper_Angled string @斜向瞄准镜Socket名称
---@field AttachmentSocket_RearGrip string @后握把Socket名称
---@field AttachmentSocket_RefitSight string @准星Socket名称
---@field AttachmentSocket_Killscore_L string @击杀计数屏幕左Socket名称
---@field AttachmentSocket_Killscore_R string @击杀计数屏幕右Socket名称
---@field bTakeWeaponAnimReverse boolean @掏枪动画是否倒放（如果为true，掏枪动画将以PlayRate=-1倒放）
---@field bTakeOffWeaponAnimReverse boolean @收枪动画是否倒放（如果为true，收枪动画将以PlayRate=-1倒放）
---@field TakeOffWeaponAttachTime number @收枪挂接延迟时间(秒) - 收枪动画开始后多久把手上枪挂到非使用槽位
---@field TakeWeaponAttachTime number @掏枪挂接延迟时间(秒) - 掏枪动画开始后多久把背上枪挂到手上
---@field CurrentBulletNum number @当前子弹数量
---@field LastFireTime number @上次射击时间(服务器时间)
---@field AttachmentMeshComponents ULuaArrayHelper<FAttachmentMeshComponentInfo> @配件MeshComponents - 运行时创建
local UMonsterWeaponEntityComp = {}

---[S] 初始化武器
function UMonsterWeaponEntityComp:InitWeapon() end

---[S] 检查是否可以射击（基于射击频率）
---@param CurrentTime number
---@return boolean
function UMonsterWeaponEntityComp:CanFireByRate(CurrentTime) end

---[S] 获取射击间隔时间（秒）
---@return number
function UMonsterWeaponEntityComp:GetFireInterval() end

---[C] 获取枪口位置
---@return FVector
function UMonsterWeaponEntityComp:GetMuzzleLocation() end

---[C] 获取枪口朝向
---@return FRotator
function UMonsterWeaponEntityComp:GetMuzzleRotation() end

---从预设加载配置
function UMonsterWeaponEntityComp:LoadFromPreset() end

---保存当前配置到预设
function UMonsterWeaponEntityComp:SaveToPreset() end
