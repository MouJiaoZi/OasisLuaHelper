---@meta

---用于配置是否忽略特定的校验流程
---@class EWeaponVeiryIgnore
---@field None number
---@field WVI_HitCheck number @ServerHandleHitDataArrayFromClient
EWeaponVeiryIgnore = {}


---武器的射击校验配置 TODO: 将WeaponAntiCheat中的需要蓝图配置的项目移动到这里来
---@class FWeaponVerifyConfig
---@field VerifyIgnoreType number @射击校验的类型 目前主要用于屏蔽RPG类在ShootID校验上的误报
---@field bVerifySooterSkeleton boolean @是否验证射击者的骨骼长度
---@field ShooterMuzzleOffsetAdditional number @进行枪口位置与射击者服务器位置偏移判定时的额外容错 会加在原有的配置之上
---@field ShooterMuzzleCircleAddit number @枪口位置校验的距离校验时额外的长度 叠加在原有的配置之上
---@field bVerifyMuzzleDataMatch boolean @是否对枪口高度执行数据对照检查
---@field bUseCompressDataUpload boolean @是否使用压缩数据上报的RPC 暂时只用在需要压缩的枪械上
---@field bUseZipWhileCompress boolean @使用压缩上报的路径时，是否启用Zip压缩 需要压缩上报的开关已开启才会有作用
---@field bVerifyAttachDistance boolean @检查枪械与挂接点的距离 用于M2重机枪这一类固定枪械
---@field bForceAttach boolean @要求挂接不能为空
---@field MaxAttachDistanceHorizon number @枪口与挂接点最大的距离 水平
---@field MaxAttachDistanceZ number @枪口与挂接点最大的距离 竖直方向的值，不是绝对值
---@field MinAttachDistanceZ number @枪口与挂接点最小的距离 竖直方向的值，不是绝对值
---@field MaxGunRoot number @骨骼长度校验1 从枪到持枪点再到Root的最大长度 Note: 在趴下时使用瞄准模式射击，由于骨骼动画的控制，会额外的多出20cm左右的长度。为了防止状态过渡时的误判，直接对所有的模式添加额外的容错。 >> 趴下射击的长度变更似乎作为bug修正了，将数值改回去，不然触发量太小了
---@field MaxMuzzleGun number @从枪口到持枪点的长度校验 最大上限长度
---@field DistMuzzleGun number @枪口到持枪点的距离是不会变的 由于GetMuzzleTransform使用了Avatar系统，无法在服务器上取到 所以需要手动配置，不配置则不验证
---@field MuzzleHighCD number @高枪口向下的CD时间 允许一些特殊姿态切换导致的误判通过 目前会导致误判的情况： - 从高处跳下过程中向下射击(已通过移动状态屏蔽) - 切枪过程中的动画过渡 - Reload过程中的动画过渡
---@field AimFlyCD number @AimFly自瞄策略的CD时间 主要还是动画过渡问题
---@field bVerifyRpgController boolean @RPG子弹爆炸时是否验证调用者 只对使用了RPG验证流程的武器有效
---@field bVerifyFakeTraceBock boolean @是否验证枪口穿墙对照 对于无人机，需要关闭，因为没有意义，且会出现很长的射线，可能会影响性能
---@field MaxBackTraceSize number @允许射击目标点到屏幕中心的最大距离
---@field bVerifyFlyAim boolean @是否对瞄准信息与子弹飞行信息进行校验 对于FMR类型的枪，子弹是在服务器认可后才发射的，此时与通常的枪假定不同，导致出现误报
---@field MinKickBackPitch number @后坐力验证，单次最小累积到Pitch方向的后坐力
---@field MinKickBackYaw number @后坐力验证，单次最小累积到Yaw方向的后坐力
---@field MaxDirChangeAreaEval number @快速追踪的判定阈值
---@field bUseLegacyShootRateControl boolean @是否使用旧的射速控制策略 对于开启了与旧射速控制策略冲突的功能的枪械需要关闭
---@field AdditGunPosHeight number @当枪口到枪尾穿墙时第二次校验时抬高枪口的高度
---@field bReportSidBid boolean @武器是否要执行SidBid上报 --story=871849361 【CG018】【ShootBlock_SidBad】修复图书馆团竞的短筒RPG偶现时序问题的bug
---@field bNoSidBadReport boolean @是否关闭SidBad上报 主要用于新增的武器又无法完全限定模式的
---@field BulletSizeTor number @命中时子弹位置到碰撞点位置的最大距离
---@field TolerateBulletDirOffsetSquaredBigBullet number @子弹方向校验 大型子弹阈值
---@field CameraToShooterMaxDisAdditional number @镜头到射击者位置校验额外阈值，主要用于远程操控的武器
---@field ChestGunMaxDisAdditional number @子弹追踪校验策略1额外阈值
FWeaponVerifyConfig = {}
