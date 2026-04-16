---@meta

---@class EConstructType
---@field ECT_Static number @静态构造
---@field ECT_Dynamic number @动态加载
---@field ECT_BlueprintAttach number @蓝图挂载(静态)
---@field ECT_GlobalOverride number @全局重载(动态)
EConstructType = {}


---@class FSubSystemConfig
---@field SubSystemId ESubSystemType @游戏特性类型
---@field bEnable boolean @是否开启特性
---@field ConstructType EConstructType @模式组件创建类型（兼容旧配置）
---@field DCC_PlayerController FDynamicCompConfig @控制器组件配置
---@field DCC_PlayerPawn FDynamicCompConfig @角色组件配置
FSubSystemConfig = {}


---@class FGameModeParms
---@field SSC_DeferredExitGame FSubSystemConfig
---@field SSC_RecallTeammate FSubSystemConfig
---@field SSC_RescueHelicopter FSubSystemConfig
---@field SSC_HeavyWeapon FSubSystemConfig
---@field SSC_Hero FSubSystemConfig
---@field SSC_TeamSystem FSubSystemConfig
---@field SSC_ClassicPlane FSubSystemConfig
---@field SSC_AIProbe FSubSystemConfig
---@field SSC_AIActing FSubSystemConfig
---@field SSC_Circle FSubSystemConfig
---@field SSC_AttrModify FSubSystemConfig
---@field SSC_AirDrop FSubSystemConfig
---@field SSC_AirAttack FSubSystemConfig
---@field SSC_PlayerRespawn FSubSystemConfig
---@field SSC_DynamicSpawn FSubSystemConfig
---@field SSC_Observer FSubSystemConfig
---@field SSC_WorldActorFlag FSubSystemConfig
---@field SSC_ShrinkManager FSubSystemConfig
---@field SSC_SuperCold FSubSystemConfig
---@field SSC_TDMHardPoint FSubSystemConfig
---@field SSC_AITeamManager FSubSystemConfig
---@field SSC_VisualField FSubSystemConfig
---@field SSC_NewYearActivity FSubSystemConfig
---@field SSC_YearBeast FSubSystemConfig
---@field SSC_Fortress FSubSystemConfig
---@field SSC_ARWeaponManager FSubSystemConfig
---@field SSC_SignalGunGame FSubSystemConfig
---@field SSC_PlayerStartManager FSubSystemConfig
---@field SSC_GlobalSettings FSubSystemConfig
---@field SSC_EmotionalMemory FSubSystemConfig
---@field SSC_ReportStringMsgToTlog FSubSystemConfig
---@field SSC_GameModeLuaDataManager FSubSystemConfig
---@field SSC_TLogComponent FSubSystemConfig
---@field SSC_ReportCollectedEventData FSubSystemConfig
---@field SSC_DamageStats FSubSystemConfig
---@field AdditionalSubSystems ULuaArrayHelper<FSubSystemConfig>
FGameModeParms = {}


---@class FGameModeFeatureSetData
---@field GameModeFeatureSet_A number @特性组A：最多支持32个特性，超出时增加特性组
---@field GameModeFeatureSet_B number
---@field GameModeFeatureSet_C number
FGameModeFeatureSetData = {}
