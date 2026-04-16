---@meta

---Parameter Type.
---@class ETaskParamType
---@field EPT_Invalid number @Invalid
---@field EPT_Object number @Object
---@field EPT_Class number @Class
---@field EPT_Enum number @Enum
---@field EPT_Int number @Int
---@field EPT_UInt number @UInt
---@field EPT_Float number @Float
---@field EPT_Bool number @Bool
---@field EPT_String number @String
---@field EPT_Name number @Name
---@field EPT_Vector number @Vector
---@field EPT_Rotator number @Rotator
---@field EPT_PlayerKey number @PlayerKey
ETaskParamType = {}


---@class ETaskConbinationOperation
---@field AND number @与
---@field OR number @或
---@field COMPOSITE number @复合型
ETaskConbinationOperation = {}


---任务表类型,不同类型，解析不同参数.
---@class ETaskTableType
---@field ETP_PlayerTaskTable number @角色任务表
---@field ETP_SeasonChallengeTable number @赛季挑战表
ETaskTableType = {}


---@class ETaskParamSrcType
---@field ETPS_ParamUser number @用户输入
---@field ETPS_ParamEvent number @事件参数
---@field ETPS_ParamTable number @表格参数
---@field ETPS_ActionFunction number @Action方法
ETaskParamSrcType = {}


---任务黑板操作.
---@class ETaskBBOperType
---@field ETB_None number @不操作
---@field ETB_SetValue number @直接写入
---@field ETB_AddValue number @增量写入
---@field ETB_SubValue number @减量写入
---@field ETB_AddOne number @自增写入
---@field ETB_SubOne number @自减写入
---@field ETB_DivValue number @除以写入
---@field EBT_MaxValue number @最大值写入
---@field ETB_Clear number @清空缓存
ETaskBBOperType = {}


---@class EParamCompareType
---@field Equal number @等于
---@field NotEqual number @不等于
---@field LessThan number @小于
---@field LargeThan number @大于
---@field EqualLessThan number @小于等于
---@field EqualLargeThan number @大于等于
---@field IsMultipleOf number @是整数倍
EParamCompareType = {}


---@class ETaskPlayerAchievementType
---@field ETP_SuperGod number @超神
---@field ETP_ContinueKill number @连击
---@field ETP_EndSuperGod number @超神终止
---@field ETP_EndContinueKill number @连击终止
---@field ETP_KillFirstOne number @榜首终结
---@field ETP_FirstBlood number @第一滴血
---@field ETP_Revenge number @复仇
---@field ETP_OneShotHead number @一枪暴击
---@field ETP_Hunter number @狩猎者
---@field ETP_Rally number @重整旗鼓
---@field ETP_TryHander number @再接再厉
---@field ETP_PrecisionShoot number @百步穿杨
---@field ETP_Bombing number @轰天雷
---@field ETP_KillExciting number @大开杀戒
---@field ETP_StrikeBack number @绝境反击
---@field ETP_BreakExpert number @碎甲专家
---@field ETP_RPG number @RPG
---@field ETP_Guard number @据守
---@field ETP_Raiders number @突击手
---@field ETP_Keeper number @守擂者
---@field ETP_KillInfectedByMelee number @手起刀落
---@field ETP_KillAdInfected number @突变克星
---@field ETP_DamageLow number @火力枪手
---@field ETP_DamageMid number @弹无虚发
---@field ETP_DamageHigh number @战地收割
---@field ETP_DamageInTime number @子弹风暴
---@field ETP_KillSpMan number @英雄末路
---@field ETP_KillMan number @突变扩散
---@field ETP_BeDamaged number @疯狂承伤
---@field ETP_UseASupply number @战地补给
---@field ETP_UseBSupply number @强化药剂
---@field ETP_ReachScore number @制霸全场
---@field ETP_Flash number @Flash！
---@field ETP_Detect number @Thunder！
---@field ETP_Revert number @变变变！
---@field ETP_Revive number @给我起来
---@field ETP_SpeedUpBuff number @吃灰吧！
---@field ETP_SkillBuff number @重新装填
---@field ETP_MultiFlash number @双闪
---@field ETP_FightingChicken number @战斗鸡
---@field ETP_PlantBomb number @爆破能手
---@field ETP_DemolishBomb number @拆弹专家
---@field ETP_KillBombCarry number @扫雷达人
---@field ETP_HunterSamePawn number @狩猎者
---@field ETP_SuppressAdvantage number @压制优势
---@field ETP_EliteUnit number @精英部队
---@field ETP_SuperAce number @超级王牌
---@field ETP_StarEntry number @明星登场
---@field ETP_LeadTheWay number @引领高潮
---@field ETP_GameChanger number @力挽狂澜
---@field ETP_FatalCurtainCall number @致命谢幕
---@field ETP_KillTheEnemyWithoutHurting number @无伤制敌
---@field ETP_Blaster number @爆破达人
---@field ETP_BombDisposalAce number @拆弹王牌
---@field ETP_SmokeAssist number @烟闪助攻
---@field ETP_UltimateAvoidanceByHuman number @极限躲避
---@field ETP_KillByHumanHeavyWeapons number @来点硬菜
---@field ETP_ColdFaceKiller number @冷面杀手
---@field ETP_Reincarnate number @送入轮回
---@field ETP_IAmTheHero number @我即英雄
---@field ETP_MobileBattery number @移动炮台
---@field ETP_LawOfEvolution number @进化法则
---@field ETP_AtageAComeback number @卷土重来
---@field ETP_UltimateAvoidanceByInfectedPerson number @极限躲避
---@field ETP_FirstHandWillWin number @先手必胜
---@field ETP_HaveAGrudge number @有仇报仇
---@field ETP_Subgram number @以下克上
---@field ETP_PickupSword number @横刀在手
---@field ETP_PickupCompoundBow number @开弓之时
---@field ETP_KillHightScore number @反攻号角
---@field ETP_KillEnemyPlayer number @报仇雪恨
---@field ETP_MAX number @无
ETaskPlayerAchievementType = {}


---@class ETaskPlayerConditionStateType
---@field ETPC_None number @无
---@field ETPC_RankingFirst number @在队伍中排名第一
---@field ETPC_DeadFirst number @第一死亡
---@field ETPC_DeadByHeadShot number @爆头而死
---@field ETPC_NoProtection number @无护甲
---@field ETPC_SelfLastOne number @在队伍中排名最后
---@field ETPC_InHardPoint number @在据点中
---@field ETPC_AliveGoDown number @从生存状态被击倒
---@field ETPC_Alive number @存活
ETaskPlayerConditionStateType = {}


---@class ETaskPlayerPropCompType
---@field ETPC_None number @无
---@field ETPP_Distance number @与目标玩家距离
---@field ETPP_KillNum number @击杀目标玩家次数
---@field ETPP_DamageType number @目标玩家死亡受击类型
---@field ETPP_HealthPercent number @目标玩家血量百分比
---@field ETPP_MurderWeaponID number @杀死目标玩家的武器ID
---@field ETPP_InfectedType number @杀死目标玩家的生化类型
---@field ETPP_InfectionCampType number @杀死目标玩家的生化阵营
ETaskPlayerPropCompType = {}


---@class ETaskObjectCacheType
---@field None number
---@field PlayerState number
---@field GameState number
ETaskObjectCacheType = {}


---同步给客户端的数据结构 尽量不要在该结构体中定义复杂数据，如String， 尽可能发送ID，详细客户端信息可以自行去客户端索引
---@class FTaskActionRepData
---@field ID number
---@field Progress number
FTaskActionRepData = {}


---Structure that defines a memory table entry
---@class FTaskBlackboardParameter
---@field Name string @Parameter name
---@field Type ETaskParamType @Parameter type
FTaskBlackboardParameter = {}


---@class FTaskPropertySelector
---@field SelectedKeyName string
FTaskPropertySelector = {}
