---@meta

---@class AI_Phase
---@field BornOnSquare number
---@field TakeInPlane number
---@field FreeFall number
---@field InFighting number
---@field NearDeath number
---@field Death number
---@field Escape number
AI_Phase = {}


---@class EAIEquipSpawnItemType
---@field Shoot_Weap number @枪
---@field Backpack number @背包
---@field other number @其他物品
EAIEquipSpawnItemType = {}


---@class EAIAttrCompareType
---@field None number @不设置
---@field Great number @大于
---@field Less number @小于
EAIAttrCompareType = {}


---@class EAITriggerAttrType
---@field None number @不设置
---@field Health number @血量
---@field Energy number @能量
EAITriggerAttrType = {}


---@class EAIPoseState
---@field Stand number @站
---@field Crouch number @蹲
---@field Prone number @趴
---@field Jump number @跳
---@field LeftPeek number @左侧身
---@field RightPeek number @右侧身
---@field StopPeek number @结束侧身
EAIPoseState = {}


---@class EAIMovePose
---@field Walk number @小跑
---@field Run number @疾跑
---@field CrouchSprint number @蹲疾跑
---@field KeepCurrentPose number @保持当前姿势
EAIMovePose = {}


---@class EAINewFocusPriority
---@field Default number
---@field Move number
---@field Gameplay number
EAINewFocusPriority = {}


---@class EAIWeaponShootType
---@field SingleShot number @单发
---@field Auto number @自动
EAIWeaponShootType = {}


---@class EAIMoveType
---@field StraightMove number @直线运动
---@field CurveMove number @曲线运动
EAIMoveType = {}


---@class EAnimalMovePose
---@field Walk number @走路（待机移动）
---@field Trot number @小跑（快递移动）
---@field Run number @跑步（战斗移动）
---@field KeepCurrentPose number @保持当前姿势
EAnimalMovePose = {}


---@class EAI_BlockType
---@field NoneBlock number @正常
---@field HaveNoNavMesh number @脚下没有导航网格
---@field HaveNavMesh number @脚下有导航网格
EAI_BlockType = {}


---@class EFlyTargetLocHeightSetType
---@field FlyHeightSet_RelativeGround number @相对地面高度
---@field FlyHeightSet_RelativeCenter number @相对中心点高度
EFlyTargetLocHeightSetType = {}


---@class EHeroGameModeType
---@field EHeroGameModeType_LostTomb number @L玩法
---@field EHeroGameModeType_DeadLock number @DeadLock
EHeroGameModeType = {}


---@class FAITriggerTupple
---@field Probability number
---@field TriggerTarget FBlackboardKeySelector
---@field TriggerSetValue number
FAITriggerTupple = {}


---@class FAIAttrObserver
---@field AttrType EAITriggerAttrType
---@field CompareType EAIAttrCompareType
---@field ComparePercentValue number
FAIAttrObserver = {}


---@class FAIEquipSpawnItem
---@field ItemType EAIEquipSpawnItemType
---@field ItemSpecificID number
---@field Count number
---@field bUseItem boolean
---@field ExtraConfigValue FVector2D
FAIEquipSpawnItem = {}


---@class FAIEquipSpawnGroup
---@field Item ULuaArrayHelper<FAIEquipSpawnItem>
FAIEquipSpawnGroup = {}


---@class FAIEquipSpawnGroupDataBase
---@field RightTime number
---@field AIEquipSpawnGroupList ULuaArrayHelper<FAIEquipSpawnGroup>
FAIEquipSpawnGroupDataBase = {}


---@class FSuperPeopleAIUpgradeItem
---@field ItemSpecificID number
---@field Count number
FSuperPeopleAIUpgradeItem = {}


---@class FSuperPeopleAIUpgradeConfig
---@field UpgradeTime number
---@field UpgradeItemList ULuaArrayHelper<FSuperPeopleAIUpgradeItem>
FSuperPeopleAIUpgradeConfig = {}
