---@meta

---选怪时, 怪可以通过实现这个Interface改写自己的基础仇恨值
---@class ICJChooseEnemy_HighestPriority_LostTomb_Interface
ICJChooseEnemy_HighestPriority_LostTomb_Interface = {}

---@return number
function ICJChooseEnemy_HighestPriority_LostTomb_Interface:GetHighestPriorityHatredValue() end


---@class UBTService_Mob_CJChooseEnemy_LostTomb: UBTService
---@field bUpdateItemOptimize boolean @更新目标对象时间优化：bUpdateItemOptimize
---@field UpdateItemIntervalList ULuaArrayHelper<FUpdateItemInterval> @更新目标对象时间间隔配置(与对象距离相关)：UpdateIntervalList
---@field MaxTracesPerTick number @每帧最大向目标打射线次数
---@field bShouldAutomaticallySeeTarget boolean @开启打射线优化：bShouldAutomaticallySeeTarget
---@field AutoSuccessRangeFromLastSeenLocation number @与上次被看见位置相距一定距离内不会再打射线（厘米）：AutoSuccessRangeFromLastSeenLocation
---@field MaxRememberLastAttackedMeTimeInSeconds number @记忆攻击者的持续时间：MaxRememberLastAttackedMeTimeInSeconds
---@field MaxTraceLastAttackedMeDistance number @有效的最大被攻击距离：MaxTraceLastAttackedMeDistance
---@field EnemyInfoList ULuaArrayHelper<FEnemyInfo> @敌人信息列表：EnemyInfoList
---@field HighestPriorityFightBackTag string
---@field MinTimeLockTarget number @目标敌人最小锁定时间：MinTimeLockTarget
---@field MinTimeWhenCannotSeeTarget number @CannotSeeTarget黑板变量变动锁定时间：MinTimeWhenCannotSeeTarget
---@field SensedRadius number @感知距离：SensedRadius
---@field bSenseNearDeathTarget boolean @是否感知濒死状态人类目标：bSenseNearDeathTarget
---@field bChooseEnemyAvoidTogether boolean
---@field bChooseEnemyInLivingRange boolean
---@field bIgnoreOwnerAndTeammate boolean @忽略Owner及其队友
---@field bEnableFolkActorCheck boolean @启用FolkActor检查（忽略随从目标）
---@field IgnoreEnemyByTag ULuaArrayHelper<FGameplayTag>
---@field bChooseEnemyUseRandomHatred boolean
---@field TraceTestChannel ECollisionChannel
---@field bCanEnterWater boolean @是否能够进入水中：bCanEnterWater ,目前只有狗可以
---@field bSenseInWaterTarget boolean @是否感知并攻击在水中人类目标：bSenseInWaterTarget ，目前只有狗和僵尸可以
---@field ClearTargetInWaterDepth number @僵尸在水中一定深度时会判定为在水中(指僵尸在水体中的深度)：ClearTargetInWaterDepth
---@field bUseFanChoose boolean @开启扇形寻敌：bUseFanChoose
---@field FanInfoList ULuaArrayHelper<FFanInfo> @扇形寻敌配置列表：FanInfoList
---@field bSenseRelation boolean @开启感知关联：bSenseRelation
---@field SenseRelationRadius number @感知关联距离：SenseRelationRadius
---@field UnChoseCoolingTime number @某一目标被切换后不会再次被选择的冷却时间：UnChoseCoolingTime
---@field IsTraceIgnoreDoor boolean @可见性打射线是否忽略门：IsTraceIgnoreDoor
---@field IsTraceIgnoreWater boolean @可见性打射线是否忽水体：IsTraceIgnoreWater
---@field bEnableSenseLimitVolume boolean @是否启用感知区域限定（启用后只会感知指定Volume内的敌人）：bEnableSenseLimitVolume
---@field bEnableLockTarget boolean @是否启用锁敌（启用后Owner会过滤掉已经被锁住的敌人）：bEnableLockTarget
---@field bKeepTargetWhenEnemyCastingSkill boolean @拥有者释放技能时是否保持当前目标（启用后当拥有者正在释放技能时不会切换目标）：bKeepTargetWhenEnemyCastingSkill
---@field bIgnoreAIPlayer boolean @是否忽略AI控制的玩家
local UBTService_Mob_CJChooseEnemy_LostTomb = {}
