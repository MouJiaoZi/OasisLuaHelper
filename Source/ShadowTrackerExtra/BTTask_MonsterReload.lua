---@meta

---怪物换弹Task的节点内存
---@class FBTMonsterReloadMemory
FBTMonsterReloadMemory = {}


---怪物换弹行为树Task 调用WeaponManager的Reload函数，持续时间为当前武器的换弹时间+冗余时间
---@class UBTTask_MonsterReload: UBTTaskNode
---@field RedundancyTime number @冗余时间(秒)
local UBTTask_MonsterReload = {}
