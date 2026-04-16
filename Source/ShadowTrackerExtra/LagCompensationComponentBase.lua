---@meta

---@class EOffsetDisVerifyRet
---@field EOffsetDisVerifyRet_OK number
---@field EOffsetDisVerifyRet_FailedDis1 number
---@field EOffsetDisVerifyRet_FailedDis2 number
---@field EOffsetDisVerifyRet_FailedDis3 number
EOffsetDisVerifyRet = {}


---@class FServerCheckBox
---@field PoseID ESTEPoseState
---@field BodyBoundBoxExtent FVector @受击盒大小
---@field HeadBoundBoxExtent FVector @头部受击盒大小
---@field Offset FVector @生成受击盒时的偏移
---@field PitchOffset FVector
---@field ReferenceHSlope number
---@field ReferenceVSlope number
---@field HMinScale number
---@field VMinScale number
---@field HMaxScale number
---@field VMaxScale number
FServerCheckBox = {}


---@class FCriticalVerifyConfig
---@field PlayerStandChestZOffset number
---@field PlayerCrouchChestZOffset number
---@field PlayerProneChestZOffset number
---@field MuzzleToPlayerChestVerifyThreshold number
---@field ControlRotToCameraRotPitchRowVerifyThreshold FVector2D
---@field ClientShootRotVerifyThreshold number
FCriticalVerifyConfig = {}


---@class FDelayCriticalVerifyCacheItem
---@field CacheWorldTime number
---@field HitUploadData FBulletHitInfoUploadData
---@field LocalShootHitData FLocalShootHitData
---@field ShooterCurrentStates number
---@field ShooterClientLoc FVector
---@field CacheShooterDSLoc FVector
---@field CacheVictimDSLoc FVector
---@field bCacheIsWeakNetwork boolean
FDelayCriticalVerifyCacheItem = {}


---@class FShootNetRecordItem
---@field RecordWorldTime number
---@field RecordPingValue number
---@field PrePingValue number
---@field bDiscard boolean
FShootNetRecordItem = {}


---被射击者反外挂基类 不允许直接将这个类挂到蓝图上
---@class ULagCompensationComponentBase: UEntityAntiCheatComponent
---@field bDebugShoot boolean
---@field bVerifyShootPointPassWall boolean @校验射击命中点与被命中者之间是否穿墙
---@field bVerityBlock boolean @验证从枪口位置到命中点位置是否穿墙
---@field bEnableReverseVerityBlock boolean @验证从枪口位置到命中位置的反向穿墙
---@field bVerifyInParachuteShootPoint boolean
---@field bVerifyShootPoint boolean @是否校验命中点到被命中者在服务器的位置的距离
---@field TolerateShootPointDistanceSqured number @射击校验时从命中点到被命中物体的中心点所允许的最大容差
---@field TolerateShootPointScaleOnFast number @在快速移动的地板上对容错进行放大的倍数
---@field bVerifyHitType boolean @是否使用受击盒进行命中类型校验 对于人物，会过滤爆头伤害
---@field PoseCheckBoxesCfg ULuaArrayHelper<FServerCheckBox> @受击盒配置
---@field bDrawHitBox boolean @是否绘制受击盒调试
---@field TolerateShootPointDistanceVehicleSqured number
---@field TolerateSimulatedDelayTime number
---@field bVerifyBulletFlyTime boolean
---@field bVerifyShooterMuzzle boolean
---@field bVerifyMuzzle boolean
---@field bVerifyShootRange boolean
---@field bVerifyBulletImpactOffset boolean
---@field bVerifyCharacterImpactOffset boolean
---@field bVerifyHistoryLoc boolean
---@field bVerifyShooterWeaponRange boolean
---@field bVerifyGunPos boolean @对枪口和枪尾的信息进行校验 包含一些距离校验和在枪口到枪尾之间的穿墙校验
---@field BulletFlyTimeVerifyMinTime number
---@field TolerateBulletFlyTimePercentage number
---@field TolerateMuzzleDistanceSqured number
---@field TolerateMuzzleDistanceVehicleSqured number
---@field TolerateShootHitAngle number
---@field TolerateBulletImpactOffsetDistSqured number
---@field TolerateBulletDirOffsetSquared number
---@field TolerateCharacterImpactOffsetDistSqured number @被命中者与命中点距离进行验证时的最大距离的平方 主体很大的话必须放大，否则攻击离中心点较远的位置就会没有伤害
---@field TolerateShootRange number
---@field TraceObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field ShooterWeaponRange number
---@field ShooterWeaponHeight number
---@field bAllowShortReverseDir boolean @是否允许在短射击距离时对完全反向的射击进行校验 Note: 主要应对枪支穿进身体射击时子弹射出点的回拉
---@field ShortDirReverseDistance number @在多长的距离以内允许射击方向校验的方向是反的
---@field TolerateShootMuzzleHeight number
---@field bUseSimpleVerifyHitParachute boolean
---@field bTimeCompensationDisable boolean @<是否禁止历史位置回溯时使用时间补偿
---@field TolerateLocusSingle number @轨迹校验：轨迹为单一点时的距离容差
---@field TolerateLocusDist number @轨迹校验：可以容许的与轨迹的偏差距离
---@field TolerateLocusSegment number @轨迹校验：对线段进行检查时的容错
---@field TolerateLocusZOffsetUp number @轨迹校验：进行粗略检查时允许的高度值偏差，向上的容错
---@field TolerateLocusZOffsetDown number @轨迹校验：进行粗略检查时允许的高度值偏差，向下的容错
---@field LocusZHistoryUpInVehicle number @轨迹校验：当人在载具上时，放大高度历史容错的值
---@field MaxGunPosZHeight number @枪身校验：允许的枪尾与枪口的最大高度差
---@field MaxGunPosLength number @枪身校验：允许的枪尾与枪口的最大距离差
---@field LocusSearchBackTime number @受击者位置回溯：向回回溯的时间 配置时间单位为秒
---@field HistBack_SingleRadius number @受击者位置回溯：只找到一个点时的半径
---@field HistBack_IgnoreNearDist number @当上报的被命中者位置与服务器位置在这个距离内时，不进行回溯检查
---@field HistBack_TolerateBoxExpand number @受击者位置回溯：进行粗略检查时Box放大的长度
---@field GiftHeadBoundingBoxUpperOffset FVector
---@field GiftHeadBoundingBoxLowerOffset FVector
---@field bVerifyBonePointInfo boolean @是否开启对上报的命中点与骨骼碰撞体的校验
---@field BonePointTorelate number @命中点与骨骼碰撞体作校验时的误差 当子弹命中时有StartPentrate时，返回的ImpactPoint就是子弹自身的位置，并不完全在碰撞体表面 应当比子弹的半径大，如果之后子弹半径会有变化的话，这个配置需要加到武器上去
---@field TolerateCharacterImpactOffsetDistSquredOnVehicle number
---@field CriticalVerifyConfig FCriticalVerifyConfig
---@field DelayCriticalVerifyCacheData ULuaArrayHelper<FDelayCriticalVerifyCacheItem>
---@field BulletTrackVerifyFailedFrameDataSetMaxNum number
---@field ShootNetRecordData ULuaArrayHelper<FShootNetRecordItem>
local ULagCompensationComponentBase = {}

---@return number
function ULagCompensationComponentBase:SimulatedCharacterServerTime() end

function ULagCompensationComponentBase:PrepareAddItemToShootNetRecordData() end

function ULagCompensationComponentBase:EnsureShootNetRecordDataCache() end

---@param InRecordWorldTime number
---@param InRecordPingValue number
---@param InPrePingValue number
function ULagCompensationComponentBase:DoAddItemToShootNetRecordData(InRecordWorldTime, InRecordPingValue, InPrePingValue) end

function ULagCompensationComponentBase:HandleShootNetRecordData() end

---@return number
function ULagCompensationComponentBase:GetCurPingValueForCheck() end

---@return number
function ULagCompensationComponentBase:GetPrePingValueForCheck() end
