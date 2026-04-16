---@meta

---军犬状态
---@class EWarDogCommandType
---@field None number @没有指令
---@field Delivery number @递送物资
---@field StayAlert number @待在这里不要动
---@field ComeBack number @回到主人身边
---@field SearchDeathBox number @搜索死亡盒子
---@field AttackNearestEnemy number @攻击最近敌人
---@field PoseSwitch number @切换姿态
---@field SearchEnemyAtLocation number @搜索指定地点附近的敌人
---@field Interaction number @交互表演
---@field SearchVehicle number @搜索载具
---@field FetchSupplies number @获取物资
---@field AlertAndFight number @原地警戒并攻击敌人
---@field StayAlertAtLocation number @指定位置隐蔽
---@field FetchSuppliesVoice number @语音获取物资
---@field FetchSuppliesAndDelivery number @获取物资并递送
---@field SearchAirDropBox number @搜索空投箱
---@field ProtectTeammate number @保护队友
---@field Rescue number @救援
---@field SearchEscapeSupplyBox number @搜索地铁物资箱
---@field Evacuate number @携带物资撤离
---@field OnomatopoeicWord number @拟声词
---@field SimpleMove number @简单移动
EWarDogCommandType = {}


---军犬移动到目标状态
---@class EWarDogMoveToTargetState
---@field None number
---@field MoveToTarget number @开始移动
---@field MoveToTargetEnd number @移动结束(开始停步)
---@field MoveToTargetFailed number @移动失败
---@field MoveToTargetSuccess number @移动成功
EWarDogMoveToTargetState = {}


---军犬移动到目标状态
---@class EWarDogSearchState
---@field None number
---@field Searching number @搜索中
---@field NotFound number @没找到
---@field Found number @找到
---@field SearchEnd number @搜索结束
---@field Searching_Turn number @搜索中(转向)
---@field Searching_Search number @搜索中(搜索)
EWarDogSearchState = {}


---军犬指令行为配置
---@class FWarDogCommandConfig
---@field CommandType EWarDogCommandType
---@field BehaviorTree UBehaviorTree
---@field CommandDuration number
FWarDogCommandConfig = {}


---军犬交互组件，挂在AIController上
---@class UWarDogInteractionComp: UActorComponent
---@field CommandConfigs ULuaArrayHelper<FWarDogCommandConfig>
---@field CommandListMaxCount number
---@field LongLastingCommandListMaxCount number @客户端显示命令最大数量，比如显示死亡盒子
---@field CommandItemMaxCount number
---@field CommandItemElementMaxCount number
---@field ComeBackNeedMoveDistance number
---@field MoveToNeedMoveDistance number
---@field QueryExtent FVector
---@field ReachableTolerance number
---@field SearchTime number
---@field SearchAndMoveTime number
---@field SearchTurnAngle number
---@field SearchAndMoveCheckLen number
---@field FindPathCount number
---@field FilterClass UNavigationQueryFilter
---@field bLimitPathLength boolean
---@field PathMaxLength number
---@field bAllowPartialPath boolean
---@field FindPathReachableTolerance number
---@field ClientObjectDisappearTime number
---@field ClientObjectDisappearTimeMin number @防止已经在消失范围内，直接消失不知道在哪里
---@field ClientObjectDisappearRange number
---@field ComeBackStopDistance number @进入这个范围就认为指令结束，可以执行下一个指令
---@field ComeBackIdleStopDistance number
---@field StayAlertAlertTime number @待在这里不要动参数
---@field StayAlertAlertFollowTime number
---@field StayAlertAtLocationAlertTime number @指定位置隐蔽参数
---@field StayAlertAtLocationAlertFollowTime number
---@field StayAlertAtLocationNeedMoveDistance number
---@field AlertAndFightAlertFollowTime number @原地警戒并攻击敌人参数
---@field DeathBoxSearchRange number @搜索死亡盒子参数
---@field SearchedDeathBoxRecordTime number
---@field SearchedDeathKillDeathBoxCachedTime number
---@field AirDropBoxSearchRange number
---@field SearchedAirDropBoxRecordTime number
---@field SearchedEscapeSupplyBoxRecordTime number
---@field SearchEnemyMarkLocationLimit number @搜索指定地点附近的敌人参数
---@field SearchEnemyMoveToMarkLocationTimeLimit number
---@field SearchEnemyRange number
---@field SearchEnemyDistance2AlertCount ULuaMapHelper<number, number>
---@field InteractionDistanceLimit number
---@field SearchVehicleRange number @搜索载具参数
---@field SearchVehiclePreferSeatNum number
---@field SearchVehicleExcludeTypes ULuaArrayHelper<ESTExtraVehicleBaseType>
---@field SearchVehiclePreferTypes ULuaArrayHelper<ESTExtraVehicleBaseType>
---@field SearchedVehicleRecordTime number @搜索过的载具被记录的时间
---@field IgnoreVehicleWhenHPLowerThan number
---@field IgnoreVehicleWhenFuelLowerThan number
---@field IgnoreVehicleWhenWheelLowerThan ULuaMapHelper<ESTExtraVehicleType, number>
---@field FetchSuppliesCheckVisibleDisErrorStart number @获取物资参数
---@field FetchSuppliesCheckVisibleDisErrorEnd number
---@field FetchSuppliesComeBackDis number
---@field FetchSuppliesMaxCount number
---@field FetchSuppliesSearchRange number
---@field EscapeSupplyBoxSearchRange number
local UWarDogInteractionComp = {}

---设置军犬指令行为树。指令执行之前会先设置指令行为树，再执行正确的子树
---@param InCommandType EWarDogCommandType
---@return boolean
function UWarDogInteractionComp:SetCommandBehaviorTree(InCommandType) end

---@param CurTime number
---@param DeltaTime number
function UWarDogInteractionComp:DSTick(CurTime, DeltaTime) end

---获取指令持续时间
---@param InCommandType EWarDogCommandType
---@param CommandDuration number
---@return boolean
function UWarDogInteractionComp:GetCommandDuration(InCommandType, CommandDuration) end

---@param InCommandType EWarDogCommandType
---@return string
function UWarDogInteractionComp:GetWarDogCommandStr(InCommandType) end
