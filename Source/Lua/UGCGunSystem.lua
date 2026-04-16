---@meta

---@class EWeaponAttachmentSocketType
---@field GunPoint number @枪口配件位
---@field Grip number @握把配件位
---@field Magazine number @弹匣配件位
---@field Gunstock number @枪托配件位
---@field OpticalSight number @瞄准镜位
---@field MasterGun number @枪本位
---@field Ammo number @弹药位
---@field Pendant number @挂件
---@field AngledOpticalSight number @侧方瞄准镜位
---@field Refit_Sight number @瞄准镜改装件
---@field Refit_RearGrip number @后握把改装件
---@field Refit_Material number @材质改装件
---@field KillCountingScreen_L number @杀人数计数屏左
---@field KillCountingScreen_R number @杀人数计数屏右
---@field Armor1 number @护甲配件槽位1
---@field Armor2 number @护甲配件槽位2
---@field Armor3 number @护甲配件槽位3
EWeaponAttachmentSocketType = {}


---枪械系统接口库
---@class UGCGunSystem
UGCGunSystem = {}

---开火
---生效范围：客户端
---@param Gun STExtraShootWeapon @枪械
function UGCGunSystem.StartFire(Gun) end

---停止开火
---生效范围：客户端
---@param Gun STExtraShootWeapon @枪械
function UGCGunSystem.StopFire(Gun) end

---启用/停用无限子弹（无需换弹）
---启用后，弹夹容量无限，一直开火也无需换弹
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param IsEnable boolean @启用/停用
function UGCGunSystem.EnableInfiniteBullets(Gun, IsEnable) end

---启用/停用弹夹无限子弹（需要换弹一次）
---启用后，子弹容量无限，开火会打空弹夹触发换弹
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param IsEnable boolean @启用/停用
function UGCGunSystem.EnableClipInfiniteBullets(Gun, IsEnable) end

---启用/停用无限子弹（无需换弹）并且强制换弹
---启用后，强制换弹弹夹容量无限，一直开火也无需换弹，避免弹夹内子弹为0时触发检查
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param IsEnable boolean @启用/停用
function UGCGunSystem.ForceReloadAndEnableInfiniteBullets(Gun, IsEnable) end

---设置弹夹容量
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param MaxBulletNumInOneClip number @弹夹容量
function UGCGunSystem.SetMaxBulletNumInOneClip(Gun, MaxBulletNumInOneClip) end

---获取弹夹容量
---生效范围：服务器&客户端
---@param Gun STExtraShootWeapon @枪械
---@return number @弹夹容量
function UGCGunSystem.GetMaxBulletNumInOneClip(Gun) end

---设置子弹飞行速度
---例：60000代表1秒飞行600米
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param BulletFireSpeed number @飞行速度
function UGCGunSystem.SetBulletFireSpeed(Gun, BulletFireSpeed) end

---获取子弹飞行速度
---例：60000代表1秒飞行600米
---生效范围：服务器&客户端
---@param Gun STExtraShootWeapon @枪械
---@return number @当前飞行速度
function UGCGunSystem.GetBulletFireSpeed(Gun) end

---设置射击间隔时间
---例：0.1代表0.1秒射击一次
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param ShootIntervalTime number @射击间隔时间
function UGCGunSystem.SetShootIntervalTime(Gun, ShootIntervalTime) end

---获取射击间隔时间
---例：0.1代表0.1秒射击一次
---生效范围：服务器&客户端
---@param Gun STExtraShootWeapon @枪械
---@return number @射击间隔时间
function UGCGunSystem.GetShootIntervalTime(Gun) end

---设置子弹射程
---例：60000射程为600米
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param BulletRange number @子弹射程
function UGCGunSystem.SetBulletRange(Gun, BulletRange) end

---获取子弹射程
---例：60000射程为600米
---生效范围：服务器&客户端
---@param Gun STExtraShootWeapon @枪械
---@return number @子弹射程
function UGCGunSystem.GetBulletRange(Gun) end

---设置子弹基础伤害
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param BulletBaseDamage number @基础伤害
function UGCGunSystem.SetBulletBaseDamage(Gun, BulletBaseDamage) end

---获取子弹基础伤害
---生效范围：服务器&客户端
---@param Gun STExtraShootWeapon @枪械
---@return number @基础伤害
function UGCGunSystem.GetBulletBaseDamage(Gun) end

---设置子弹最低伤害（子弹经过穿透，距离等衰减后）
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param BulletMinimumDamage number @最低伤害
function UGCGunSystem.SetBulletMinimumDamage(Gun, BulletMinimumDamage) end

---获取子弹最低伤害（子弹经过穿透，距离等衰减后）
---生效范围：服务器&客户端
---@param Gun STExtraShootWeapon @枪械
---@return number @最低伤害
function UGCGunSystem.GetBulletMinimumDamage(Gun) end

---设置子弹命中冲量
---冲量越大，击退击飞效果越大
---参考：破片手雷最大造成冲量为2500
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param BulletImpulse number @冲量
function UGCGunSystem.SetBulletImpulse(Gun, BulletImpulse) end

---获取子弹命中冲量
---冲量越大，击退击飞效果越大
---参考：破片手雷最大造成冲量为2500
---生效范围：服务器&客户端
---@param Gun STExtraShootWeapon @枪械
---@return number @冲量
function UGCGunSystem.GetBulletImpulse(Gun) end

---设置换弹时间
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param ReloadTime number @换弹时间
function UGCGunSystem.SetReloadTime(Gun, ReloadTime) end

---获取换弹时间                 
---生效范围：服务器&客户端
---@param Gun STExtraShootWeapon @枪械
---@return number @换弹时间
function UGCGunSystem.GetReloadTime(Gun) end

---设置战术换弹时间（弹夹子弹数不为0）
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param TacticalReloadTime number @换弹时间
function UGCGunSystem.SetTacticalReloadTime(Gun, TacticalReloadTime) end

---获取战术换弹时间（弹夹子弹数不为0）
---生效范围：服务器&客户端
---@param Gun STExtraShootWeapon @枪械
---@return number @换弹时间
function UGCGunSystem.GetTacticalReloadTime(Gun) end

---设置垂直后坐力倍率
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param VerticalRecoilScale number @倍率
function UGCGunSystem.SetVerticalRecoilScale(Gun, VerticalRecoilScale) end

---获取垂直后坐力倍率
---生效范围：服务器&客户端
---@param Gun STExtraShootWeapon @枪械
---@return number @倍率
function UGCGunSystem.GetVerticalRecoilScale(Gun) end

---设置水平后坐力倍率
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param HorizontalRecoilScale number @倍率
function UGCGunSystem.SetHorizontalRecoilScale(Gun, HorizontalRecoilScale) end

---获取水平后坐力倍率
---生效范围：服务器&客户端
---@param Gun STExtraShootWeapon @枪械
---@return number @倍率
function UGCGunSystem.GetHorizontalRecoilScale(Gun) end

---设置扩散值倍率
---生效范围：服务器
---@param Gun STExtraShootWeapon @枪械
---@param DeviationScale number @倍率
function UGCGunSystem.SetDeviationScale(Gun, DeviationScale) end

---获取扩散值倍率
---生效范围：服务器&客户端
---@param Gun STExtraShootWeapon @枪械
---@return number @倍率
function UGCGunSystem.GetDeviationScale(Gun) end

---玩家当前武器换弹
---生效范围：客户端
---@param PlayerPawn PlayerPawn @玩家角色
function UGCGunSystem.Reload(PlayerPawn) end

---玩家当前武器开镜/关镜
---生效范围：客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param IsOpenScope boolean @开镜/关镜
function UGCGunSystem.OpenScope(PlayerPawn, IsOpenScope) end

---获取辅助瞄准是否启用	
---生效范围：客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return boolean @启用/关闭
function UGCGunSystem.GetIsAutoAimEnabled(PlayerPawn) end

---设置自动瞄准是否启用	
---生效范围：客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param IsAutoAimEnabled boolean @启用/关闭
function UGCGunSystem.SetIsAutoAimEnabled(PlayerPawn, IsAutoAimEnabled) end

---武器添加指定配件
---生效范围：服务端
---@param Gun STExtraShootWeapon @枪械
---@param ItemDefineID ItemDefineID @物品DefineID
function UGCGunSystem.AddGunAttachment(Gun, ItemDefineID) end

---创建新配件并且直接添加到武器
---生效范围：服务端
---@param Gun STExtraShootWeapon @枪械
---@param ItemID number @物品ID
function UGCGunSystem.CreateAndAddGunAttachment(Gun, ItemID) end

---卸载武器指定部位配件
---生效范围：服务端
---@param Gun STExtraShootWeapon @枪械
---@param SocketType WeaponAttachmentSocketType @配件槽位
function UGCGunSystem.RemoveGunAttachmentBySocketType(Gun, SocketType) end

---获取特定槽位的配件ItemDefineID
---生效范围：服务端
---@param Gun STExtraShootWeapon @枪械
---@param SocketType WeaponAttachmentSocketType @配件槽位
---@return ItemDefineID
function UGCGunSystem.GetWeaponAttachmentIDBySocketType(Gun, SocketType) end

---获取枪械可用的配件槽位
---生效范围：服务端
---@param Gun STExtraShootWeapon @枪械
---@return uint8[] @AttachmentSocketType 列表
function UGCGunSystem.GetAvailableWeaponAttachmentSocketTypeList(Gun) end

---获取武器可用配件(需要武器加载出来才能使用，不能在武器初始化时调用)
---生效范围：服务端
---@param Gun STExtraShootWeapon @枪械
---@return int32[] @AvailableWeaponAttachment 列表
function UGCGunSystem.GetAvailableWeaponAttachment(Gun) end

---卸载武器所有配件
---生效范围：服务端
---@param Gun STExtraShootWeapon @枪械
function UGCGunSystem.DisuseAllWeaponAttachmentsOnServer(Gun) end

---获取武器上的所有配件
---生效范围：服务端
---@param Gun STExtraShootWeapon @枪械
---@return ItemDefineID[] @AttachmentDefineID 列表
function UGCGunSystem.GetWeaponAllAttachmentIDList(Gun) end

---设置武器弹匣内弹药
---生效范围：服务端
---@param Gun STExtraShootWeapon @枪械
---@param Count int @枪械
function UGCGunSystem.SetCurrentBulletNumInClip(Gun, Count) end