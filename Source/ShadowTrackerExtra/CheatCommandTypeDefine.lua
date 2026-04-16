---@meta

---1~32, Base Cheat Command 33~96, Battle Scene 97~160, Player Property and State 161~192, UI Display 193~255, Other or Reserved ?
---@class ECheatCommandType
---@field ECCT_None number
---@field ECCT_MoveToLocation number @移动到指定位置
---@field ECCT_SpawnVehicle number @生成载具
---@field ECCT_AddItem number @添加物品
---@field ECCT_DesignatedLocAirDrop number @定点空投
---@field ECCT_DesignatedLocBombingZone number @定点轰炸区
---@field ECCT_FreeCameraMode number @进入自由视角
---@field ECCT_SetInvincible number @设置无敌
---@field ECCT_SetPlayeProperty number @设置玩家属性值
---@field ECCT_SetVehicleMaxRPMScale number @设置载具的速度上限系数
---@field ECCT_SetVehicleTorqueScale number @设置载具的加速度系数
---@field ECCT_SetNeonCreation number @设置荣都创作者模式
---@field ECCT_SetGlobalTimeDilation number @设置播放速率
ECheatCommandType = {}


---@class ECheatCommandResultType
---@field ECCRT_None number
---@field ECCRT_Success number @成功
---@field ECCRT_Success_Max number @占位值，不要使用这个值作为结果
---@field ECCRT_Failed_NotSupportCommand number @不支持的Command
---@field ECCRT_Failed_BadCommand number @Command配置非法或损坏
---@field ECCRT_Failed_Banned number @Command处于禁止阶段
---@field ECCRT_Failed_CoolingDown number @冷却中
---@field ECCRT_Failed_InvalidParam number @参数非法
---@field ECCRT_Failed_ExceedCountThreshold number @达到执行次数上限
---@field ECCRT_Failed_NotEnoughCapacity number @背包空间不足
---@field ECCRT_Failed_InvalidItemID number @非法物品ID
---@field ECCRT_Failed_CreatingWeapon number @正在创建武器
---@field ECCRT_Failed_ExceedWeaponLimit number @达到武器上限
---@field ECCRT_Failed_InvalidItemPath number @非法物品路径
---@field ECCRT_Failed_InvalidTriggerLocation number @指令触发位置非法
---@field ECCRT_Failed_ForbiddenPawnState number @禁止的角色状态
---@field ECCRT_Failed_Unknown number @未知原因
ECheatCommandResultType = {}


---@class ECheatCommandAirDropType
---@field ECCADT_None number
---@field ECCADT_Normal number @普通空投
---@field ECCADT_Vehicle number @载具空投
---@field ECCADT_Max number
ECheatCommandAirDropType = {}


---@class FCheatCommandInfo
---@field CommandType ECheatCommandType
---@field CommandContent_int32Type ULuaArrayHelper<number>
---@field CommandContent_floatType ULuaArrayHelper<number>
---@field CommandContent_ExtraType string @使用int32、float数组无法满足的，放到字符串中自定义解析
FCheatCommandInfo = {}


---@class FCheatCommandResultInfo
---@field CommandType ECheatCommandType
---@field ResultType ECheatCommandResultType
---@field Remain_CoolingDownTime number
---@field Remain_GlobalCoolingDownTime number
---@field Remain_ExecuteCountThreshold number
---@field Remain_GlobalExecuteCountThreshold number
FCheatCommandResultInfo = {}


---@class FCheatCommandItem
---@field CommandType ECheatCommandType
---@field CoolDownInterval number
---@field ExecuteCountThreshold number
---@field GlobalCoolDownInterval number
---@field GlobalExecuteCountThreshold number
---@field CheatCommandClassRef UCheatCommand
FCheatCommandItem = {}


---@class FCheatCommandExecuteRecord
---@field CommandTriggerObj UObject
FCheatCommandExecuteRecord = {}


---@class FCheatCommandHistory
---@field LatestExecuteRecord FCheatCommandExecuteRecord
---@field CommandRecordList ULuaArrayHelper<FCheatCommandExecuteRecord>
FCheatCommandHistory = {}


---@class FCheatCommandItemUnit
---@field ItemID number
---@field ItemCount number
FCheatCommandItemUnit = {}


---@class FDelayCommandCall
---@field CommandCallTime number
---@field ElapsedTime number
---@field CommandTriggerName string
FDelayCommandCall = {}


---@class FPlayerCheatProperty
---@field HP_Cur number
---@field HP_Max number
---@field EnergyHP_Cur number
---@field EnergyHP_Max number
---@field SignalHP_Cur number
---@field SignalHP_Max number
---@field SpeedScale number
FPlayerCheatProperty = {}
