---@meta

---敌人类型
---@class EEnemyType
---@field EPlayer number @人
---@field EZombie number @僵尸
---@field EBuildings number @建造物
---@field ETreasureBox number @宝箱
---@field EProjectile number @投掷物（目前只有狼人手雷）
---@field EAttackMeEnemy number @自己被攻击时，优先将目标选为敌人(目前被军犬攻击时使用)
EEnemyType = {}


---额外仇恨条件类型
---@class EExtraHatredConditionType
---@field EUsingM2G number @使用重机枪
---@field EInVehicle number @在载具上
---@field EInWater number @在水下
---@field ERescuing number @救援过程中
---@field EOccupying number @占点过程中
---@field ENearDeath number @濒死状态
---@field EAspirine number @满血
---@field EFullLocked number @同时被非常多的AI索敌
---@field EAttackMe number @打我
EExtraHatredConditionType = {}


---额外仇恨条件信息
---@class FExtraHatredConditionItem
---@field ConditionType EExtraHatredConditionType @额外仇恨条件
---@field ExtraHatredValue number @额外仇恨基础值
FExtraHatredConditionItem = {}


---更新仇恨对象信息间隔配置项（与对象距离相关）
---@class FUpdateItemInterval
---@field Distance number @距离
---@field Interval number @时间间隔
FUpdateItemInterval = {}


---扇形寻敌配置项
---@class FFanInfo
---@field Radius number @视野距离
---@field Angle number @视野角度
FFanInfo = {}


---每种类型敌人的配置信息
---@class FEnemyInfo
---@field EnemyType EEnemyType @敌人类型
---@field Tag string @标签（同一类型敌人不同标签可能配置不同）
---@field MemoryTime number @非视野内记忆时间
---@field RevengeValue_Sight number @目标在视野内最大仇恨值
---@field RevengeValue_Memory number @目标在非视野内最大仇恨值
---@field RevengeValue_NearDeath number @目标在濒死状态下最大仇恨值（此时与是否在视野内无关，目前只有僵尸Agent对人类目标会设置）
---@field RevengeValue_PerMetre number @与目标距离每增加1米衰减的仇恨值
---@field NeedTrace boolean @是否需要射线检测
---@field bNeedVisibleWhenFirstAdd boolean @首次加入是否需要可见
---@field TraceStartOffset FVector @射线检测时起点位置偏移
---@field TraceEndOffset FVector @射线检测时终点位置偏移
---@field Belonging number @归属者 （0代表无，1代表自己和友方，2代表敌方,默认都是0，目前只有人类Agent对建造物目标会设置）
---@field HitProtectTime number @AI受击后不能将该类型目标设为敌人的时间（默认都是0，目前只有人类Agent对友方建造物目标会设置）
---@field IsBlockTrace boolean @是否会阻挡寻找人形敌人的trace（默认都是true，目前只有人类Agent对敌方建造物目标会置为false）
---@field IsCanBeChosen boolean @是否会被当做敌人目标（默认都是true，目前只有人类Agent对友方建造物目标有可能会置为false）
---@field ExtraHatredConditionList ULuaArrayHelper<FExtraHatredConditionItem> @额外仇恨条件：ExtraHatredConditionList
FEnemyInfo = {}


---AI基于仇恨值寻敌组件
---@class UAIChooseEnemyComponent: UAIAbilityComponent
local UAIChooseEnemyComponent = {}

function UAIChooseEnemyComponent:ClearEnemyItemList() end

---@param Reason string
function UAIChooseEnemyComponent:PauseChooseEnemy(Reason) end

---@param Reason string
function UAIChooseEnemyComponent:ResumeChooseEnemy(Reason) end
