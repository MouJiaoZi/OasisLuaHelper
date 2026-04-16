---@meta

---@class FSightFanInfo
---@field Radius number @视野距离
---@field Angle number @视野角度
FSightFanInfo = {}


---@class UBTService_CJChooseEnemy: UBTService
---@field bUpdateItemOptimize boolean @更新目标对象时间优化：bUpdateItemOptimize
---@field UpdateItemIntervalList ULuaArrayHelper<FUpdateItemInterval> @更新目标对象时间间隔配置(与对象距离相关)：UpdateIntervalList
---@field MaxTracesPerTick number @每帧最大向目标打射线次数
---@field bShouldAutomaticallySeeTarget boolean @开启打射线优化：bShouldAutomaticallySeeTarget
---@field AutoSuccessRangeFromLastSeenLocation number @与上次被看见位置相距一定距离内不会再打射线（厘米）：AutoSuccessRangeFromLastSeenLocation
---@field OutTargetEnemyActor any @通过仇恨机制寻找到的最优敌人目标：OutTargetEnemyActor
---@field OutIsCanNotSeeTarget any @仇恨目标是不可见黑板变量：OutIsCanNotSeeTarget
---@field MaxRememberLastAttackedMeTimeInSeconds number @记忆攻击者的持续时间：MaxRememberLastAttackedMeTimeInSeconds
---@field bForceAddAttackedMeActorToEnemyList boolean
---@field MaxTraceLastAttackedMeDistance number @有效的最大被攻击距离：MaxTraceLastAttackedMeDistance
---@field bSenseNearDeathTarget boolean @是否感知濒死状态人类目标：bSenseNearDeathTarget
---@field EnemyInfoList ULuaArrayHelper<FEnemyInfo> @敌人信息列表：EnemyInfoList
---@field MinTimeLockTarget number @目标敌人最小锁定时间：MinTimeLockTarget
---@field MinTimeWhenCannotSeeTarget number @CannotSeeTarget黑板变量变动锁定时间：MinTimeWhenCannotSeeTarget
---@field SensedRadius number @没有远程武器的视野范围：SensedRadius
---@field EquipWeaponSensedRadius number @装备远程武器后的视野范围：EquipWeaponSensedRadius
---@field bUseFanChoose boolean @开启扇形寻敌：bUseFanChoose
---@field FanInfoList ULuaArrayHelper<FSightFanInfo> @扇形寻敌配置列表：FanInfoList
---@field bFindNearestEnemyPawn boolean @是否需要查找最近距离人形敌人（该查找不走仇恨机制，只考虑距离，不考虑可见性）：bFindNearestEnemyPawn
---@field OutNearestEnemyPawnVisible any @距离最近可见的人形敌人目标：OutNearestEnemyPawn
---@field OutNearestEnemyPawnInVisible any @距离最近不可见的人形敌人目标：OutNearestEnemyPawn
---@field NearestEnemyVisibleMemoryTime number @最近可见敌人不可见时被记忆时间：NearestEnemyVisibleMemoryTime
---@field SensedNearestEnemyVisibleRadius number @感知距离最近可见的人形敌人目标距离：SensedNearestEnemyVisibleRadius
---@field SensedNearestEnemyInVisibleRadius number @感知距离最近不可见的人形敌人目标距离：SensedNearestEnemyInVisibleRadius
---@field bEnableSenseLimitVolume boolean @是否启用感知区域限定（启用后只会感知指定Volume内的敌人）：bEnableSenseLimitVolume
---@field IgnoreEnemyWithDynamicStates ULuaArrayHelper<FGameplayTag>
local UBTService_CJChooseEnemy = {}
