---@meta

---怪物切枪Task的节点内存
---@class FBTMonsterSwitchWeaponMemory
FBTMonsterSwitchWeaponMemory = {}


---怪物切枪行为树Task 调用WeaponManager的SwitchWeapon函数，持续时间为当前武器收枪时间+目标武器掏枪时间+冗余时间
---@class UBTTask_MonsterSwitchWeapon: UBTTaskNode
---@field TargetWeaponIndex number @目标武器索引
---@field bWithoutAnim boolean @是否不播放动画（直接切换）
---@field RedundancyTime number @冗余时间(秒)
local UBTTask_MonsterSwitchWeapon = {}
