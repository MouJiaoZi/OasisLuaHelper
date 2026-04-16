---@meta

---策略推送实时巡查 描述	是否开启	被巡查持续时间	每10分钟最大数		表	字段	校验阈值	推送阈值 子弹追踪-逆向误差	1	3600	100		ieg_tdbank::jdqssy_dsl_anticheat201910_fht0	VsLocusCheckZ	1	5 范围伤害-命中骨骼信息校验错误	1	3600	100		ieg_tdbank::jdqssy_dsl_hasanticheatflow_fht0	TotalBoneInfoErrorCnt	1	5
---@class EReportPolicy
---@field ERP_Invalid number
---@field ERP_BulletBackAcc number
---@field ERP_HitBoneInfo number
---@field ERP_CriticalVerify number
EReportPolicy = {}


---@class ERecordAntiStrategyType
---@field Begin number
---@field JumpMaxHeight number
---@field MoveStrategy3 number
---@field MoveStrategy5 number
---@field VehicleStrategy number
---@field MoveStrategy6 number
---@field MoveStrategy7 number
---@field CheatSentToLobby number @将策略发送到大厅触发实时巡查
---@field End number
ERecordAntiStrategyType = {}


---@class EReportPolicyName
---@field ERPN_Invalid number
---@field ERPN_VsJumpMaxHeight number
---@field ERPN_VsJumpMaxHeight15 number
---@field ERPN_VsJumpMaxHeight3 number
---@field ERPN_VsBoneInfo number
---@field ERPN_VsHighMuzzleShootDown number
---@field ERPN_VSMoveCheatAntiStrategy3 number
---@field ERPN_VSZMaxHeight number
---@field End number
EReportPolicyName = {}


---用于新平台的策略触发时间和次数记录
---@class FReportTime
FReportTime = {}


---新平台的策略名称和类型
---@class FMonitorReportParam
FMonitorReportParam = {}


---@class FVehicleOverSpeedReport
FVehicleOverSpeedReport = {}


---上报新平台的射击校验策略的数据细分：触发时间和次数记录
---@class FReportShootCriticalVerifyDataSub
FReportShootCriticalVerifyDataSub = {}


---上报新平台的射击校验策略的数据
---@class FReportShootCriticalVerifyData
FReportShootCriticalVerifyData = {}


---玩家反外挂管理类
---@class UPlayerAntiCheatManager: UActorComponent
---@field LogLimitAimInfo number @限制瞄准信息的输出次数
---@field DistanceIgnoreCameraTraceLine number @进行CameraTraceLine的验证时忽略验证的距离 由于会有穿插身体这些问题，只关注长距离的情况
---@field VsHitDetail FVerifySwitch @命中时碰撞信息校验 对额外上报的碰撞信息进行数据合法性校验 使用数据中重叠的冗余信息进行检查
---@field VsRelMoveFailed FVerifySwitch @相对移动速度校验 仅水平速度
---@field VsNoHitDetail FVerifySwitch @在执行伤害校验时没有详细碰撞数据 对于打中了Pawn的情况，必然会有这个数据
---@field VsFakeTraceMissMatch FVerifySwitch @校验服务器与客户端对枪口到人物位置的校验结果是否一致 客户端上报没有穿墙而服务器检测到穿墙的情况
---@field VsFakeTraceMissMatchCb FVerifySwitch @校验服务器与客户端对枪口到人物位置的校验结果是否一致 客户端上报穿墙而服务器却没有墙的情况
---@field VsMuzzleRangeCircle FVerifySwitch @枪口在人周围的圆圈内
---@field VsMuzzleRangeUp FVerifySwitch @枪口信息错误 枪口高度不正确的情况
---@field VsMaxWeaponToBaseFailed FVerifySwitch @对于固定类的枪械 检查枪口与服务器上的底座之间的距离
---@field VsBulletDirFailed FVerifySwitch @检查子弹是否直线飞行
---@field VsBulletBornFailed FVerifySwitch @校验子弹的起飞点与枪口的距离
---@field VsBoneScale FVerifySwitch @射击的骨骼信息验证的阈值
---@field VsHitBoneNameNone FVerifySwitch @上报的骨骼命中信息使用了空的骨骼名称
---@field VsHitBoneHitMissMatch FVerifySwitch @上报的骨骼名称与命中类型不匹配
---@field VsWeaponHasNoBase FVerifySwitch @取不到枪械的Attach
---@field VsBlockStaticToDynamic FVerifySwitch @从静态地板到动态地板的射击穿过了动态地板
---@field VsHighMuzzleShootDown FVerifySwitch @枪口高度在高位区域却向下射击的情况
---@field VsGunPosError FVerifySwitch @vStr19|允许的最大的枪身校验错误次数，-1为不开启 > 3 || >= 4
---@field VsProneHigh FVerifySwitch @趴下状态枪口过高
---@field VsProneMiss FVerifySwitch @客户端上报的趴下状态与服务不一致
---@field VsBoneLen01 FVerifySwitch @骨骼长度校验，从枪到Root|上限
---@field VsBoneLen02 FVerifySwitch @骨骼长度校验，从左脚到Root|上限
---@field VsBoneLen03 FVerifySwitch @骨骼长度校验，从右脚到Root|上限
---@field VsParaHRaw FVerifySwitch @跳伞速度水平Raw
---@field VsParaHConv FVerifySwitch @跳伞速度水平Conv
---@field VsParaZRaw FVerifySwitch @跳伞速度竖直Raw
---@field VsParaZConv FVerifySwitch @跳伞速度竖直Conv
---@field VsStartFireWeaponOwner FVerifySwitch @开火RPC时武器不属于自己
---@field VsStartFireCharacterOwner FVerifySwitch @开火RPC时角色不属于自己
---@field VsBoneLen04 FVerifySwitch @从枪口到持枪点的长度校验
---@field VsFlyAimMiss FVerifySwitch @子弹的飞行路径是否与瞄准信息匹配
---@field VsRpgMuzzleBorn FVerifySwitch @RPG子弹发射点和枪口的位置关系
---@field VsBackTraceExceedded FVerifySwitch @瞄准信息验证 瞄准目标点偏离屏幕中心太远
---@field VsBackTraceBad FVerifySwitch @瞄准信息验证 瞄准目标点逆向投影后在子弹扩散的范围外 Note: 策略有误判风险 排查外网数据后发现，在正常射击时有一定的几率会由于CameraLocation与ProjectStartLoc间的偏差导致实际子弹的TraceTarget不在准星的圆形范围内 因此这个策略转为监控，不作处理，后续根据外网数据调整阈值来使用
---@field VsKickBackBad FVerifySwitch @玩家的后座力累积没有正确的递增
---@field VsQuickFollowHit FVerifySwitch @快速追踪瞄准的计数
---@field VsFlyAimTraceShoot FVerifySwitch @子弹瞄准生成的路径与实际发射路径是否符合
---@field VsScattergunLine FVerifySwitch @散弹枪聚点
---@field VsClipOverflowed FVerifySwitch @单个弹夹中的ShootID使用量超过了限度
---@field VsPhaseTimeNoSync FVerifySwitch @客户端长时间没有收到时间阶段的同步
---@field VsPhaseTimeBad FVerifySwitch @客户端的时间阶段长度过长
---@field VsCameraLineDistance FVerifySwitch @瞄准目标到摄像中心轴的角度判定
---@field VsCameraPawnDiff FVerifySwitch @摄像角度和角色角度的差别
---@field VsBackTraceCalcFailed FVerifySwitch @逆向投影的大小不符合计算结果
---@field VsBackTraceCalcAngelSeem FVerifySwitch @逆向投影的角度聚集
---@field VsBackTraceCameraMatch FVerifySwitch @逆向投影与摄像-TargetLoc的关系不符合
---@field VsHitDataControllerMissMatch FVerifySwitch @命中数据上报时武器的Controller与RPC通道的Controller不一致的情况
---@field VsMoveS3VerifyLost FVerifySwitch @移动策略3长时间没有进行Verify
---@field VsParachuteVictimDistance FVerifySwitch @跳伞状态被命中时超过距离容错的计数
---@field VsFallingHeight FVerifySwitch @基于Falling的高度上限
---@field VsFallingHeight15 FVerifySwitch @基于Falling的高度上限，1.5倍
---@field VsFallingHeight3 FVerifySwitch @基于Falling的高度上限，3倍
---@field VsFallingHeight5 FVerifySwitch @基于Falling的高度上限，5倍
---@field VsMuzzleRangeCirclePure FVerifySwitch @--story=871245149 【CG018】枪口距离验证策略新增一条策略排除车载喷火器 枪口距离校验的计数
---@field VsTraceMiss FVerifySwitch @ReportVictimDistanceMiss
---@field VsDistanceMiss FVerifySwitch @ReportVictimTraceMiss
---@field VsMoveTimeExStampError FVerifySwitch @移动关卡时间戳的过度推进监控
---@field VsShootTimeOSIStampError FVerifySwitch @射击时间戳差值监控出错
---@field VsShootTimeOSIStampErrorReal FVerifySwitch @射击时间戳差值监控出错实际阻挡
---@field VsShootTimeOverAcc FVerifySwitch @射击时间戳加速过渡
---@field VsFallingBadCalc FVerifySwitch @下落过程的计算不合理
---@field VsMuzzleRangeCircleVeh FVerifySwitch @开关分离：枪口距离校验for车载武器 旧开关： VsMuzzleRangeCircle --story=871245149 【CG018】枪口距离验证策略新增一条策略排除车载喷火器
---@field VsFallingMonitor FVerifySwitch @浮空状态监控策略
---@field VsBulletSize FVerifySwitch @校验子弹的大小
---@field VsBadFallWithDist FVerifySwitch @--story=875504621 【CG020】浮空不合理增加筛选条件-人物浮空后移动大于3米 http://tapd.woa.com/r/t?id=875504621&type=story
---@field VsBadFallWithNoStuck FVerifySwitch @--story = 875504721 【CG020】浮空不合理增加筛选条件 - 人物浮空后无物理渗透 http://tapd.woa.com/r/t?id=875504721&type=story
---@field VsBadFlyDistance FVerifySwitch @飞行状态的移动距离有问题
---@field VsBadFlyingBackPack FVerifyInfoSwitch @喷气背包飞行状态异常
---@field VsBadFlyingThunderDush FVerifyInfoSwitch @闪电冲刺飞行状态异常
---@field VsSrvMoveUpNew FVerifySwitch @--story=877639897 【CG021】【DS安全】基于ServerMove的移动加速检测策略迭代 https://tapd.woa.com/r/t?id=877639897&type=story
---@field VsBadCustomDistance FVerifySwitch @技能移动为Custom状态的监控
---@field VsBadCustomDistance_Rocket FVerifyInfoSwitch @火箭男孩的监控
---@field VsServerMoveLimitorPredict FVerifyInfoSwitch @服务端移动距离合理性预判策略
---@field VsJumpLimitorFakeJump01 FVerifyInfoSwitch @浮空转跳跃策略高度一倍
---@field VsJumpLimitorFakeJump15 FVerifyInfoSwitch @浮空转跳跃策略高度一点五倍
---@field VsJumpLimitorFakeJump03 FVerifyInfoSwitch @浮空转跳跃策略高度三倍
---@field VsJumpLimitorFakeJump05 FVerifyInfoSwitch @浮空转跳跃策略高度五倍
---@field VsHighDelayDrop FVerifyInfoSwitch @丢弃高延迟的包
---@field VsHighDelayDrop02 FVerifyInfoSwitch @基于时间戳校验的丢弃高延迟的包
---@field VsSendClientAdjust FVerifyInfoSwitch @客户端拉扯
---@field VsServerExceedSDistCnt FVerifyInfoSwitch @DS短距离堆包次数
---@field VsServerExceedLDistCnt FVerifyInfoSwitch @DS长距离堆包次数
---@field VsExceedSDistRepCnt FVerifyInfoSwitch @模拟端短距离值复制
---@field VsExceedLDistRepCnt FVerifyInfoSwitch @DS模拟端长距离值复制
---@field VsExceedBigDistOneTickCnt FVerifyInfoSwitch @单帧大位移次数
---@field VsFallingSimulatorMoveCnt FVerifyInfoSwitch @Falling次数
---@field VsWalkingSimulatorMoveCnt FVerifyInfoSwitch @Walking次数
---@field VsFallingToWalkingSimulatorMoveCnt FVerifyInfoSwitch @Falling到Walking的次数
---@field VsWalkingToFallingSimulatorMoveCnt FVerifyInfoSwitch @Walking到Falling的次数
---@field VsSimulatorMoveReportCount FVerifyInfoSwitch @上报次数
---@field VsSimulatorMovePlayerCount FVerifyInfoSwitch @玩家数量
---@field VsLineTracePassWallCount FVerifyInfoSwitch @射线穿墙次数
---@field VsSweepPassWallCount FVerifyInfoSwitch @Sweep穿墙次数
---@field VsDSBigMoveFrame FVerifyInfoSwitch @DS单帧大位移的次数
---@field VsMovedDistanceTooLongCount FVerifyInfoSwitch @DS单帧大位移的次数
---@field VsDSMovedDistanceMaxSmoothCount FVerifyInfoSwitch @DS单帧最大插值距离位移的次数
---@field VsDSMovedDistanceBigTooLongCount FVerifyInfoSwitch @DS单帧超大位移的次数
---@field VsMoveTimeStampError FVerifySwitch @移动时间戳监控 对ServerMove上报的时间戳作监控
---@field VsVehicleTimeStampError FVerifyInfoSwitch @载具时间戳监控出错
---@field VsWatchTimeStampError FVerifySwitch @TimeWatchDog时间戳监控出错
---@field VsTestSwitch FVerifySwitch @配置调试用|不参与逻辑与Tlog，这个配置用于查看配置文件是否成功影响开关
---@field VsTestSwitchNew FVerifySwitch @配置调试用|不参与逻辑与Tlog，这个配置用于与更新的开关一起修改，方便判断是否成功更新配置文件
---@field ClientTimeAccCheck FVerifySwitch @客户端时间加速
---@field ClientPostionCheck FVerifySwitch @客户端位置校验
---@field VsServerMoveLost FVerifySwitch @DS长时间没有收到ServerMove
---@field VsBadCtime_Cl FVerifySwitch @客户端修改时间- 客户端阈值
---@field VsBadCtime_Sys FVerifySwitch @客户端修改时间- 服务器累积
---@field VsBadCtime_Csl FVerifySwitch @客户端修改时间- 客户端累积
---@field VsMoveClientFrameError FVerifyInfoSwitch @移动帧号监控 对ServerMove上报的帧号作监控
---@field ReportPolicyThres ULuaMapHelper<EReportPolicy, number> @触发上报到实时巡查的阈值
---@field MaxShootPointPassWall number @vStr8|命中点位置与当前服务器被命中者位置穿墙，有误判风险
---@field MaxMuzzleHeightTime number @vStr9|上报的枪口高度超过限度的次数
---@field VsBulletVictimClientPassWall FVerifySwitch @vStr18|上报的子弹位置到上报的被命中者位置失败
---@field MaxAllowVehicleTimeSpeedRawTime number @允许载具加速使用原始时间检测被触发的次数
---@field MaxAllowVehicleTimeSpeedConvTime number @允许载具加速使用服务器转换时间检测被触发的次数
---@field MaxAllowVehicleAccTime number @允许载具高速情况下加速度超过阈值的次数
---@field MaxAllowVehicleAccTime1 number @允许载具高速情况下加速度超过阈值的次数
---@field MaxAllowVehicleAccTime2 number @允许载具高速情况下加速度超过阈值的次数
---@field MaxShooterDataNumErrorCnt number @允许射击上报数据长度超过最大值的次数
---@field VsBoneInfo FVerifySwitch @射击的骨骼信息验证的阈值
---@field VsJumpMaxHeight FVerifySwitch @移动校验 玩家在按下跳跃之后所到达的最大高度超过了设定的上限
---@field VsJumpMaxHeight15 FVerifySwitch @移动校验 玩家在按下跳跃之后所到达的最大高度超过了设定的上限1.5倍
---@field VsJumpMaxHeight3 FVerifySwitch @移动校验 玩家在按下跳跃之后所到达的最大高度超过了设定的上限X倍
---@field VsTimeLineUpFailed FVerifySwitch @时间轴同步校验时时间超过上界 通常是由于直接对系统时间进行了加速
---@field VsTimeLineDnFailed FVerifySwitch @时间轴同步校验时时间超过下界 通常是由于过大的网络延迟或者是断网射击
---@field VsTimeLineBlock FVerifySwitch @进行时间轴同步检查时，同步组件处于Block状态
---@field VsSysTimeCheckNoBack FVerifySwitch @使用时间轴同步的时间来控制射击频率时，时间或者ShootID往回退的情况
---@field VsSysTimeRateCheck FVerifySwitch @射速补偿校验验证 需求变更，射速补偿先关闭了，这个校验的处罚也关掉
---@field VsSysTimeRateCheckConv FVerifySwitch @使用时间轴转换后的射速补偿校验 防止直接加速时间戳的射击加速，当前控制时间加速的策略容错稍大，且有一定概率误判
---@field VsShootRpgShootTimeVerify FVerifySwitch @RPG类子弹射击时校验开关||ShootProjectileBullet 不通过时主控端的子弹会直接消失
---@field VsShootLockShootTimeVerify FVerifySwitch @RPG类子弹射击时校验开关|ShootSeekAndLockProjectileBullet 不通过时主控端的子弹会直接消失
---@field VsShootRpgHitNewVerify FVerifySwitch @RPG类子弹碰撞时校验的新逻辑
---@field VsShootGunInfoCheck FVerifySwitch @枪口的射击时信息与命中时信息校验
---@field VsDynamicBasePassWall FVerifySwitch @在动态地板上的穿墙校验 只有攻击者和被攻击者在同一个地板上才检查
---@field VsShootTimeConDelta FVerifySwitch @断网射击策略2 对射击时的未首保延迟进行校验 Note: CG03热更相关
---@field VsShootTimeDeConMerged FVerifySwitch @断网射击策略3 当时间轴校验与射击延迟记录同时触发时进行处罚 Note: CG03热更相关
---@field MaxMergedStrategy1 number @断网射击策略1，用于策略3的阈值 Note: CG03热更相关
---@field MaxMergedStrategy2 number @断网射击策略2，用于策略3的阈值 Note: CG03热更相关
---@field VsShootTimeDeConFrameControl FVerifySwitch @断网射击策略4 服务器单帧只处理一个范围的时间戳 时间设置在: st.verify.maxframespan Note: CG03热更相关
---@field VsShootTimeServerNoConnSpan FVerifySwitch @断网射击策略5 如果近期发生过服务器长时间未收包的情况，则屏蔽一些射击包 时间设置在: tlsync.nocon Note: CG03热更相关
---@field VsServerNoOldShoot FVerifySwitch @断网射击策略6 策略5组合时间戳转换的策略
---@field ShootTimeServerNoConnSpanPunishTime number @断网射击策略5 如果近期服务器没有收到包的话，则在这个时间长度内丢弃所有的射击包 Note: CG03热更相关
---@field VsSkeletonLengthCheck FVerifySwitch @射击时骨骼长度校验，针对路飞挂
---@field VsParachuteVelocityCheck FVerifySwitch @跳伞速度校验 水平和竖直速度都包括在内
---@field ParachuteZVelocityCheck FVerifySwitch @跳伞速度速度检测 对抗因异常加速度而导致的秒落地（4秒落地，最大瞬时速度能达到3000km/h，游戏逻辑正常值在232km/h左右） 本属性的配置是通过AntiCheatConfig_Default.json动态配置的，修改蓝图的Threshold无效不能控制相关的开闭与惩罚。 详细参见UCharacterParachuteComponent.cpp相关逻辑。
---@field MaxFuelConsume number @玩家在一局内的最大油耗（路程/耗油量）
---@field CameraTraceLineDiff number @允许的瞄准线与摄像的最大偏角
---@field VisInHouseHeightRange FVerifyInfoSwitch @房间内跨层进行人物拉扯的情况
---@field VsDSEscapePickupTeammateWrapperDelayMove FVerifyInfoSwitch @地铁防止被骗校验，弱网瞬移完成后8s内拾取队友扔的物品
---@field VsDSEscapePickupTeammateWrapperMoveIgnore FVerifyInfoSwitch @地铁防止被骗校验，开启无视阻挡后25s内拾取队友扔的物品
---@field VsDSEscapePickupTeammateWrapperAccelerateCheat FVerifyInfoSwitch @地铁防止被骗校验，外挂加速后拾取队友扔的物品
---@field bTriggerCriticalVerifyPlayerDamagePunished boolean
---@field PunishOnFlagMap ULuaMapHelper<string, number>
---@field VehicleZVelCheckStartCount number @玩家第几次异常开始上报
---@field VehicleZVelCheckMaxCount number @玩家最多进行几次上报
---@field MinLocationDistanceSqr number @记录位置之间最小距离(平方)
---@field VehicleZVelocityBigChangeCheckStartCount number @玩家第几次异常开始上报
---@field VehicleZVelocityBigChangeCheckMaxCount number @玩家最多进行几次上报
---@field VehicleJumpHighCheckStartCount number @玩家第几次异常开始上报
---@field VehicleJumpHighCheckMaxCount number @玩家最多进行几次上报
---@field VehicleJumpHighTimeStamps ULuaArrayHelper<number>
---@field SpeedCheckUsingDSTimeRawFailedTimeStamps ULuaArrayHelper<number>
---@field SpeedCheckUsingBothTimeRawTimeStamps ULuaArrayHelper<number>
---@field VehicleNewOverSpeedTimeStamps ULuaArrayHelper<number>
---@field MyriapodVehicleFallingWithoutFallingHeightTimeStamps ULuaArrayHelper<number>
---@field MyriapodVehileFallingSpeedZCheckFailedTimeStamps ULuaArrayHelper<number>
---@field MyriapodAverageSpeedOverSecondCheckFailedTimeStamps ULuaArrayHelper<number>
---@field VehicleAnomalousMoveCheckMaxCount number @异常移动玩家最多进行几次上报
---@field VehicleAnomalousMoveInLastFewTimeMaxCount number @异常移动玩家最多进行几次上报(新策略)
---@field VehicleAnomalousMoveTimeStamps ULuaArrayHelper<number>
---@field VehicleAnomalousMoveInLastFewTimeTimeStamps ULuaArrayHelper<number>
---@field VehicleAnomalousRotationTimeStamps ULuaArrayHelper<number>
---@field VehicleNewAccelerationTimeStamps ULuaArrayHelper<number>
---@field VehicleOldAccelerationThresholdTimeStamps ULuaArrayHelper<number>
---@field VehicleOldAccelerationThreshold1TimeStamps ULuaArrayHelper<number>
---@field VehicleOldAccelerationThreshold2TimeStamps ULuaArrayHelper<number>
---@field VehicleJumpHeightLimitTimeStamps ULuaArrayHelper<number>
---@field VsBadFlowWithDistAndStuck FVerifyInfoSwitch @浮空检测策略：浮空位置+物理渗透
---@field VSMoveCheatAntiStrategy3 FVerifySwitch @移动策略3
---@field VSZMaxHeight FVerifySwitch @团竞地图最大高度策略（z轴）
---@field VsBadVault FVerifyInfoSwitch @攀爬检测策略
---@field VsBadFallingTimes FVerifyInfoSwitch @浮空不合理增加浮空时间上报
---@field VsBadFallingZMoved FVerifyInfoSwitch
---@field VsBadMoveDelta FVerifyInfoSwitch @移动包DeltaTime监控
---@field VsMoveSpeedUpFromMovement FVerifyInfoSwitch @基于移动包的移动加速策略
---@field VsBadMoveDeltaTotal FVerifyInfoSwitch @移动包DeltaTime监控,总包数统计
---@field VsDsTrustDist FVerifyInfoSwitch @DS信任距离统计
---@field VsClientMaxSpeed FVerifyInfoSwitch @客户端最大速度统计
---@field VsDsTrustDistAndMaxSpeed FVerifyInfoSwitch @DS信任距离且客户端最大速度异常统计
---@field VsDsTrustDistAndMaxSpeedXY FVerifyInfoSwitch
---@field VsDsTrustDistAndMaxSpeedWalking FVerifyInfoSwitch
---@field VsDsTrustDistAndMaxSpeedNum FVerifyInfoSwitch
---@field VsCustomMoveTrust FVerifyInfoSwitch @Custom信任移动模式
---@field VsCustomMoveTrustDist FVerifyInfoSwitch
---@field VsCustomMoveTrustDistContinueTimes FVerifyInfoSwitch
---@field VsCustomMoveTrustFallZ FVerifyInfoSwitch
---@field VsCustomMoveTrustJumpCount FVerifyInfoSwitch
---@field VsClientTimeStampOver FVerifyInfoSwitch @客户端时间戳累计超过DS
---@field VsClientTimeStampOverContinueTimes FVerifyInfoSwitch
---@field VsClientTimeStampOverAndDistError FVerifyInfoSwitch
---@field VsClientRelativeTimeOverTW FVerifyInfoSwitch @基于对时的客户端时间戳加速监控
---@field VsClientRelativeTimeSlowTW FVerifyInfoSwitch
---@field VsClientTimeStampOverTW FVerifyInfoSwitch
---@field VsClientTimeStampSlowTW FVerifyInfoSwitch
---@field VsMoveSpeedUpFromMoveDist FVerifyInfoSwitch @基于移动距离的移动加速策略
---@field VsMoveSpeedUpFromMoveDistLower FVerifyInfoSwitch
---@field VsMoveSpeedUpFromMoveDistLowerSus FVerifyInfoSwitch
---@field VsMoveSpeedUpFromMoveDistWithFalling FVerifyInfoSwitch
---@field VsMoveSpeedUpFromMoveDistWithSwimming FVerifyInfoSwitch
---@field VsMoveSpeedUpTeleportTooFar FVerifyInfoSwitch
---@field VsMoveSpeedUpFromMoveDistShort FVerifyInfoSwitch
---@field VsMoveSpeedUpFromMoveDistShortWeakNet FVerifyInfoSwitch
---@field VsTimeWatchReCheck FVerifyInfoSwitch @对时频繁发起重对监控
---@field VsTimeWatchReCheckTimes FVerifyInfoSwitch
---@field VsTimeWatchDeltaError FVerifyInfoSwitch
---@field VsMovePackStack FVerifyInfoSwitch @堆包杀人策略
---@field VsCustomDolphin FVerifyInfoSwitch @Custom Dolphin加速策略
---@field VsCustomFlyBoard FVerifyInfoSwitch @Custom FlyBoard加速策略
---@field VsCustomPowerFin FVerifyInfoSwitch @Custom FlyBoard加速策略
---@field VsServerTrustClientWalking FVerifyInfoSwitch @ServerTrustClientWalking加速策略
---@field VsServerTrustClientWalkingSpeedError FVerifyInfoSwitch
---@field VsServerTrustClientWalkingSpeedErrorMulti FVerifyInfoSwitch
---@field VsServerTrustClientWalkingSuspect FVerifyInfoSwitch
---@field VsServerTrustClientWalkingWithoutWeakNet FVerifyInfoSwitch
---@field VsServerTrustClientWalkingDeltaTime FVerifyInfoSwitch
---@field VsServerTrustClientWalkingNoVel FVerifyInfoSwitch
---@field VsServerTrustClientWalkingNoVelLowLevel FVerifyInfoSwitch
---@field VsServerTrustClientWalkingNoVelLowLevelShort FVerifyInfoSwitch
---@field VsServerTrustClientWalkingHighLevel1 FVerifyInfoSwitch
---@field VsServerTrustClientWalkingHighLevel2 FVerifyInfoSwitch
---@field VsServerTrustClientWalkingReport FVerifyInfoSwitch
---@field VsServerTrustClientWalkingWithVel FVerifyInfoSwitch
---@field VsServerTrustClientWalkingRealDist FVerifyInfoSwitch
---@field VsMuzzleRangeCircleRep FVerifyInfoSwitch @老射击策略补充上报
---@field VsServerNoOldShootRep FVerifyInfoSwitch
---@field VsBulletDirFailedRep FVerifyInfoSwitch
---@field VsCameraLineDistanceRep FVerifyInfoSwitch
---@field VsBoneInfoRep FVerifyInfoSwitch
---@field VsCharacterImpactOffset FVerifyInfoSwitch
---@field VsBulletImpactOffset FVerifyInfoSwitch
---@field VsShooterMuzzle FVerifyInfoSwitch
---@field VsShooterMuzzle_Mob FVerifyInfoSwitch
---@field VsShooterMuzzle_MB_Mob FVerifyInfoSwitch
---@field VsShooterMuzzle_MB_WeakNetwork_Mob FVerifyInfoSwitch
---@field VsShootPoint FVerifyInfoSwitch
---@field VsShootPointDynamicBase FVerifyInfoSwitch
---@field VsShootPointDynamicBaseWeakNet FVerifyInfoSwitch
---@field VsShootPoint_Mob FVerifyInfoSwitch
---@field VsShootRange FVerifyInfoSwitch
---@field BunkerKillDist FVerifyInfoSwitch
---@field VsHitBoneHitMissMatchRep FVerifyInfoSwitch
---@field VsReverseVerityBlock FVerifyInfoSwitch
---@field VsReverseVerityBlock_MB_Shooter FVerifyInfoSwitch
---@field VsReverseVerityBlock_MB_Victim FVerifyInfoSwitch
---@field VsReverseVerityBlock_MB_BaseError FVerifyInfoSwitch
---@field VsReverseVerityBlock_MB_WithDist_All FVerifyInfoSwitch
---@field VsReverseVerityBlock_MB_WithDist_Shooter FVerifyInfoSwitch
---@field VsVerityBlock FVerifyInfoSwitch
---@field VsVerityBlock_MB_Shooter FVerifyInfoSwitch
---@field VsVerityBlock_MB_Victim FVerifyInfoSwitch
---@field VsVerityBlock_MB_BaseError FVerifyInfoSwitch
---@field VsVerityBlock_MB_WithDist_All FVerifyInfoSwitch
---@field VsVerityBlock_MB_WithDist_Shooter FVerifyInfoSwitch
---@field VsGunPos FVerifyInfoSwitch
---@field VsClientHitAndBullet FVerifyInfoSwitch
---@field VsClientMuzzle FVerifyInfoSwitch
---@field VsShooterState FVerifyInfoSwitch
---@field VsShootBigBoxNull FVerifyInfoSwitch
---@field VsVerifyMovementBaseError FVerifyInfoSwitch
---@field VsClientProjectileBulletImpact FVerifyInfoSwitch
---@field VsShootRpgHitNewVerifyRep FVerifyInfoSwitch
---@field VsProjectileShootPos FVerifyInfoSwitch
---@field VsFinalLocCheckFailed FVerifyInfoSwitch
---@field VsShootNetSuspicious FVerifyInfoSwitch
---@field VsShooter_NoClientMoveData_Moving_WN FVerifyInfoSwitch
---@field VsShooter_NoClientMoveData_Moving FVerifyInfoSwitch
---@field VsVerifyShooterLocByNavmeshError FVerifyInfoSwitch
---@field VsVerifyVictimLocByNavmeshError FVerifyInfoSwitch
---@field VsVictimSimMoveRepDataMiss FVerifyInfoSwitch
---@field VsPickUpZDisVerify FVerifyInfoSwitch
---@field VsPickUpCrossWallVerify FVerifyInfoSwitch
---@field VsPickUpCrossWallVerify_EscapeDroppedHighQuality FVerifyInfoSwitch
---@field VsWeaponProjectileLaunchDirVerify FVerifyInfoSwitch
---@field VsWeaponProjectileLaunchDirVerify_WeakNet FVerifyInfoSwitch
---@field VsWeaponProjectileLaunchPosVerify FVerifyInfoSwitch
---@field VsWeaponProjectileLaunchPosVerify_WeakNet FVerifyInfoSwitch
---@field VsShootIntervalVerify_StartFire FVerifyInfoSwitch
---@field VsShootIntervalVerify_ClientTime FVerifyInfoSwitch
---@field VsShootIntervalVerify_TimeAccelerate FVerifyInfoSwitch
---@field VsShootIntervalVerify_WeakNet FVerifyInfoSwitch
---@field VsProjectileShootIntervalVerify FVerifyInfoSwitch
---@field VsShootToDeathPitchDiff FVerifyInfoSwitch
---@field VsSwitchWeaponStateLeakCheckVerify FVerifyInfoSwitch
---@field VsLocalWeaponStateLeakCheckVerify FVerifyInfoSwitch
---@field VsCallFunctionSecurity_ShootRPC FVerifyInfoSwitch
---@field VsCallFunctionSecurity_PickupRPC FVerifyInfoSwitch
---@field VsCallFunctionSecurity_DropItemRPC FVerifyInfoSwitch
---@field VsES_PlayerStartLocError FVerifyInfoSwitch
---@field VsHighDelayDropPunish FVerifyInfoSwitch @弱网延迟包触发丢包、拉扯
---@field VsHighDelayAdjustPunish FVerifyInfoSwitch
---@field VsMoveMaxSpeed FVerifyInfoSwitch @最大速度异常监控
---@field VsSTAntiMovePackageStrategy FVerifyInfoSwitch @通用移动组件 移动包监控策略(ServerMove)
---@field VsSTAntiJumpControl FVerifyInfoSwitch @通用移动组件 高跳策略
---@field VsSTAntiMoveTimeLimit FVerifyInfoSwitch @通用移动组件 时间策略
---@field VsSTAntiServerVelocityLimitor FVerifyInfoSwitch @通用移动组件 服务器移动速度限制策略
---@field VsMyriapodSpeedUp FVerifyInfoSwitch @四足载具加速
---@field VsMyriapodBadFall FVerifyInfoSwitch @四足载具浮空
---@field VsMyriapodJump FVerifyInfoSwitch @四足载具高跳
---@field VsHitDataUploadDelays ULuaArrayHelper<FVerifyInfoSwitch_ValueInRange> @统计玩家射击命中上报DS延迟 按区间统计
---@field VsAcceptedShootHit FVerifyInfoSwitch @统计玩家射击命中请求被接受次数
---@field VsMoveAdjusts ULuaArrayHelper<FVerifyInfoSwitch_ValueInRange> @移动拉扯体验指标统计
local UPlayerAntiCheatManager = {}

function UPlayerAntiCheatManager:SyncClientUtcTimeOffset() end

---@param TimeOfServerRequest number
function UPlayerAntiCheatManager:ClientRequestClientUtcTime(TimeOfServerRequest) end

---@param TimeOfServerRequest number
---@param UtcTimeOfClientReceivedRequest number
---@param TimeOfClientProcessTime number
function UPlayerAntiCheatManager:ServerReportClientUtcTime(TimeOfServerRequest, UtcTimeOfClientReceivedRequest, TimeOfClientProcessTime) end

---注册本地显示调试信息
function UPlayerAntiCheatManager:BeginShowDebug() end

---客户端显示反外挂相关信息
---@param InStr string
---@param bDoReport boolean
function UPlayerAntiCheatManager:ShowDevDebugInfo(InStr, bDoReport) end

---断线重连
function UPlayerAntiCheatManager:OnRecoverOnServer() end

---在Login时调用
function UPlayerAntiCheatManager:OnPreReconnectOnServer() end

---@param PC AUAEPlayerController
function UPlayerAntiCheatManager:ReportAntiCheatInfoOnPlayerExit(PC) end
