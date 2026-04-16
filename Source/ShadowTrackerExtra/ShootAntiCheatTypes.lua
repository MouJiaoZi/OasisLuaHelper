---@meta

---射击校验结果
---@class EShootVertifyRes
---@field OK number
---@field ShootBigHead number
---@field ShootPointBigDeviation number
---@field ShootBigBoxNull number
---@field ShootOtherBlock number
---@field ShootOtherBlockRev number
---@field NoLagCompensation number @反向穿墙校验失败
---@field ShootTimeTooDelay number
---@field MuzzleBigDeviation number
---@field ShootHitHeadError number
---@field ShootHitRotationError number
---@field ShootRangeError number
---@field ShootHitInVehicle number
---@field ShootHitVehicleTarget number
---@field BulletFlyTimeError number
---@field BulletDirError number
---@field BulletImpactOffsetError number
---@field CharacterImpactOffsetError number
---@field ImpactTargetPassWall number
---@field GunPoseError number @<命中点与被命中者之间穿墙
---@field HisotryLocusError number @枪口位置到枪尾位置的穿墙校验出错
---@field Client_HitImpactPassWall number @历史轨迹校验错误
---@field Client_ShootMuzzleHeight number @本地上传的命中点与被命中者位置穿墙|2019.4.1
---@field Client_BoneMissMatch number @本地上传的枪口高度不正确
---@field ErrorShooterWeaponRange number @命中的骨骼信息校验不通过| 2019.5.24
---@field SilentPlayerMoved number @武器射击信息范围出错|2019.6.11
---@field ShootOnNoShoot number @蹲墙角玩家被移动|2019.10.24
---@field CriticalVerifyFailed number @在不能射击的状态下进行了射击|2019.10.24
---@field ShieldVerifyFailed number
---@field CharacterMeshImpactOffsetError number
---@field BulletTrackCriticalVerifyFailed number @受击者Mesh命中点距离校验
---@field Non number @后坐力校验
EShootVertifyRes = {}


---@class EBulletShootBlockVerifyRes
---@field NoBlock number
---@field IgnoreBlockByBulletBreakThrough number
---@field IgnoreBlockByTag number
---@field IgnoreBlockByMobility number
---@field IgnoreBlockByCollisionChannel number
---@field Block number
---@field ForceBlockByTag number
---@field ForceBlockByMobilityTag number
---@field EBulletShootBlockVerifyRes_None number
EBulletShootBlockVerifyRes = {}


---人物所在地面的速度状态 用于标识人在游轮等快速移动的物体上的状态
---@class EMoveBaseSpeedType
---@field MBST_Normal number @默认状态
---@field MBST_Dynamic number @动态地板
---@field MBST_Fast number @快速移动的地板
---@field MBST_Fly number @角色处在不可控的快速移动状态
EMoveBaseSpeedType = {}


---@class EBulletTrackCriticalVerify
---@field EBulletTrackCriticalVerify_None number
---@field EBulletTrackCriticalVerify_Failed number
---@field EBulletTrackCriticalVerify_Punished number
EBulletTrackCriticalVerify = {}


---@class EBulletTraceCriticalVerify
---@field EBulletTraceCriticalVerify_Strategy0 number
---@field EBulletTraceCriticalVerify_Strategy1 number
---@field EBulletTraceCriticalVerify_Strategy2 number
---@field EBulletTraceCriticalVerify_Strategy3 number
---@field EBulletTraceCriticalVerify_Strategy4 number
---@field EBulletTraceCriticalVerify_OffsetDis0 number
---@field EBulletTraceCriticalVerify_OffsetDis3 number
---@field EBulletTraceCriticalVerify_Strategy0_SingleDegree number
---@field EBulletTraceCriticalVerify_Strategy1_SingleDegree number
---@field EBulletTraceCriticalVerify_Strategy2_SingleDegree number
---@field EBulletTraceCriticalVerify_Strategy3_SingleDegree number
---@field EBulletTraceCriticalVerify_Strategy4_SingleDegree number
---@field EBulletTraceCriticalVerify_Strategy0_Vehicle number
---@field EBulletTraceCriticalVerify_Strategy1_Vehicle number
---@field EBulletTraceCriticalVerify_Strategy2_Vehicle number
---@field EBulletTraceCriticalVerify_Strategy3_Vehicle number
---@field EBulletTraceCriticalVerify_Strategy4_Vehicle number
---@field EBulletTraceCriticalVerify_Strategy0_ShotGun number
---@field EBulletTraceCriticalVerify_Strategy1_ShotGun number
---@field EBulletTraceCriticalVerify_Strategy2_ShotGun number
---@field EBulletTraceCriticalVerify_Strategy3_ShotGun number
---@field EBulletTraceCriticalVerify_Strategy4_ShotGun number
---@field EBulletTraceCriticalVerify_Strategy0_VehicleWeapon number
---@field EBulletTraceCriticalVerify_Strategy1_VehicleWeapon number
---@field EBulletTraceCriticalVerify_Strategy2_VehicleWeapon number
---@field EBulletTraceCriticalVerify_Strategy3_VehicleWeapon number
---@field EBulletTraceCriticalVerify_Strategy4_VehicleWeapon number
---@field EBulletTraceCriticalVerify_ImpactPointToVehicleDirVerify number
EBulletTraceCriticalVerify = {}


---@class EOffsetDisCriticalVerifySubKey
---@field EOffsetDisCriticalVerifySubKey_1_Strategy0 number
---@field EOffsetDisCriticalVerifySubKey_2_Strategy0 number
---@field EOffsetDisCriticalVerifySubKey_3_Strategy0 number
---@field EOffsetDisCriticalVerifySubKey_1_Strategy3 number
---@field EOffsetDisCriticalVerifySubKey_2_Strategy3 number
---@field EOffsetDisCriticalVerifySubKey_3_Strategy3 number
---@field EOffsetDisCriticalVerifySubKey_1_Strategy4 number
---@field EOffsetDisCriticalVerifySubKey_2_Strategy4 number
---@field EOffsetDisCriticalVerifySubKey_3_Strategy4 number
EOffsetDisCriticalVerifySubKey = {}


---射击时的状态信息
---@class FShootTimeData
---@field ShootPos FVector @射击时的位置
---@field GunPos FVector @射击时的枪口位置 由于CG08新增无人机武器，导致武器枪口无法利用人的位置快速计算 所以用回完整的FVector
---@field MuzzleDir FVector_NetQuantizeNormalSv @CG05新增 枪口朝向，严格控制枪口回拉的应用 6个字节，如果数据量过大，可以考虑与GunTailPos混合 混合后需要重新测试枪尾穿墙相关校验
---@field ShootID number @ShootID
---@field CurrentStates number @当前玩家状态
---@field CapsuleHalfHeight number @玩家的胶囊体半高 用于校验上传的射击高度 由于玩家胶囊体半高不会超过255，直接用255代替invalid
---@field SkeletonLength number @玩家的躯干的总长度 用于校验射击时身体部位异常（如路飞挂） 存储为1/10，超过的部分使用255，Floored
---@field FBInfos FBInfo @骨骼长度信息
---@field ShootInfo FShootTimeInfo_NetQuantize @射击相关信息
---@field ShootSystemTime number @射击时的系统硬件时间
---@field ShootLevelTime number @新增数据: 射击时的关卡时间 | CG003 用于射速补偿后的射速校验
---@field bFakeTraceBlock boolean @射击时本地枪口到玩家位置作射线校验
---@field GunTailPos FVector @枪尾位置 由命中数据移动过来，防止散弹枪每颗子弹都携带一次
---@field bFireShotNotCostBullet boolean
---@field ShootProjectileCriticalFrameNumber number
---@field ShootProjectileSimulateSystemTime number
FShootTimeData = {}


---射击校验用数据 方便之后数据添加而不用修改调用结构
---@class FSACData
---@field HitDataArray ULuaArrayHelper<FBulletHitInfoUploadData>
---@field ShootHitDataArray ULuaArrayHelper<FLocalShootHitData>
---@field ShootTimeDatas ULuaArrayHelper<FShootTimeData> @射击时的数据
---@field ShootTimes number
---@field TssSdkAntiData ULuaArrayHelper<number>
---@field TssSdkAntiDataLen number
---@field RetCode number @RetCode=0 表示：正常TSS数据； RetCode=1 表示：业务关闭TSS数据； RetCode=2 表示：长度超过132； RetCode=3 表示：CRC重复； RetCode=4 表示：开枪关闭TSS数据 RetCode=5 表示：心跳关闭TSS数据
---@field NetworkStatus number
FSACData = {}
