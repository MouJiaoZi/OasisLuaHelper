---@meta

---@class ESubSystemType
---@field ESS_None number @默认:GameMode
---@field ESS_DeferredExit number @延迟结算
---@field ESS_RecallTeammate number @召回队友
---@field ESS_RescueHelicopter number @救援直升机
---@field ESS_HeavyWeapon number @重火力
---@field ESS_Hero number @英雄
---@field ESS_TeamSystem number @队伍系统
---@field ESS_ClassicPlane number @经典飞机
---@field ESS_AIProbe number @AI系统
---@field ESS_AIActing number @AI行为
---@field ESS_Circle number @毒圈
---@field ESS_AttrModify number @属性调整
---@field ESS_AirDrop number @空投
---@field ESS_AirAttack number @空袭
---@field ESS_PlayerRespawn number @玩家复活
---@field ESS_DynamicSpawn number @动态创建
---@field ESS_Observer number @观战
---@field ESS_WorldActorFlag number @局内标记
---@field ESS_ShrinkManager number @缩圈
---@field ESS_SuperCold number @极寒
---@field ESS_TDMHardPoint number @团竞据点
---@field ESS_AITeamManager number @AI队伍
---@field ESS_VisualField number @视野
---@field ESS_NewYearActivity number @春节演唱会组件
---@field ESS_YearBeast number @年兽
---@field ESS_ARWeaponManager number @军备竞赛武器管理
---@field ESS_Fortress number @要塞
---@field ESS_VolcanicDisaster number @火山大灾变
---@field ESS_DoubleCircle number @双圈
---@field ESS_SignalGunGame number @信号枪玩法
---@field ESS_PeakCompetition number @巅峰赛
---@field ESS_TDMRecordManager number @团竞战绩管理
---@field ESS_PlayerStartManager number @出生点管理
---@field ESS_Navigation number @导航
---@field ESS_GlobalSettings number @全局配置
---@field ESS_BountyHunter number @赏金逃猎
---@field ESS_BoardController number @广告板数据
---@field ESS_EmotionalMemory number @情感回忆活动
---@field ESS_TherionShow number @圣兽表演
---@field ESS_FourTherions number @四圣兽
---@field ESS_GunMaster number @枪匠模式
---@field ESS_BountySystem number @赏金(枪匠)自动发放、购买
---@field ESS_GalaxyFace number @捏脸系统
---@field ESS_MysteriosEscapePoint number @神秘逃脱点
---@field ESS_Werewolf number @狼人杀模式
---@field ESS_PlanG number @哥斯拉
---@field ESS_BigAirship number @大飞艇模式
---@field ESS_GameModeActorMgr number @管理模式Actor
---@field ESS_ActivityTlogComponent number @活动Tlog组件
---@field ESS_BirthEquipmentComponent number @出生自带武器装备
---@field ESS_MonsterCrowdMove number @怪物群体移动
---@field ESS_GameModeStateManager number @模式状态管理器
---@field ESS_LevelManager number @关卡管理器
---@field ESS_CheatCommand number @GM命令
---@field ESS_HideAndSeekSpawnItem number @躲猫猫刷物件管理组件
---@field ESS_PeriodicallySpawnActor number @阶段性生成Actor组件
---@field ESS_UGCBountySystem number @UGC商店组件
---@field ESS_ReloadFuture number @重启未来模式
---@field ESS_RevivedByCard number @复活卡复活
---@field ESS_ReportStringMsgToTLog number @通用TLog日志上报组件
---@field ESS_GameplayLuaDataMgr number @通用Gameplay Lua 数据读取组件
---@field ESS_FolkCustoms number @民俗
---@field ESS_WeMatch number @微赛事
---@field ESS_Borderland number @度假岛模式
---@field ESS_CampModeComponent number @阵营战管理组件
---@field ESS_WeaponsCompanionVoice number @行伴语音
---@field ESS_ReportCollectedEventData number @精彩视频、创意剪辑、精英战报、微信视频、第五人、赛事等功能的数据上报
---@field ESS_ModeAvatarFeature number @模式特殊Avatar
---@field ESS_Home number
---@field ESS_SuperPeople number
---@field ESS_NewWorld number
---@field ESS_TransportAircraftComponent number
---@field ESS_MultiInst number
---@field ESS_BWDynamicIDIP number
---@field ESS_SwitchDSProxy number
---@field ESS_DayNight number
---@field ESS_AutoSwitchDS number
---@field ESS_BWPKSystem number
---@field ESS_MultiMatchTask number
---@field ESS_EagleWatch number
---@field ESS_SearchVehicleRadar number
---@field ESS_VehicleTouchInterface number
---@field ESS_RoadManager number
---@field ESS_CommonCamp number
---@field ESS_EscapeBounty number
---@field ESS_EscapePlayerStart number
---@field ESS_PeaceMemory number
---@field ESS_PeakCompetitionSolo number
---@field ESS_Multiairline number
---@field ESS_AITeamMate number
---@field ESS_EscapeSettle number
---@field ESS_DamageStat number
---@field ESS_MAX number
ESubSystemType = {}


---@class EDynamicCompType
---@field EDCT_PCComp number @控制器组件
---@field EDCT_PawnComp number @角色组件
EDynamicCompType = {}


---@class ECompAttachType
---@field ECAT_None number @不挂载
---@field ECAT_All number @DS和Client都挂载
---@field ECAT_ServerOnly number @仅DS挂载
---@field ECAT_ClientOnly number @仅Client挂载
ECompAttachType = {}


---@class FDynamicCompConfig
---@field CompType EDynamicCompType
---@field bIsServerOnly boolean
---@field bUseStableCompName boolean
FDynamicCompConfig = {}


---@class FDynamicFeatureConfig
---@field FeatureType ESubSystemType
---@field CompClassPath string
---@field PCCompAttachType ECompAttachType
---@field PawnCompAttachType ECompAttachType
---@field PCCompClassPath string
---@field PawnCompClassPath string
---@field bUseStableCompName boolean
FDynamicFeatureConfig = {}
