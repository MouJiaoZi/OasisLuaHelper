---@meta

---怪物切换武器姿势Task的节点内存
---@class FBTMonsterChangeWeaponPoseMemory
FBTMonsterChangeWeaponPoseMemory = {}


---怪物切换武器姿势行为树Task 调用WeaponManager的SwitchWeaponPose函数，持续时间根据姿势切换方向使用StandToCrouchTime或CrouchToStandTime
---@class UBTTask_MonsterChangeWeaponPose: UBTTaskNode
---@field TargetWeaponPose EMonsterWeaponPose @目标姿势
---@field RedundancyTime number @冗余时间(秒)
local UBTTask_MonsterChangeWeaponPose = {}
