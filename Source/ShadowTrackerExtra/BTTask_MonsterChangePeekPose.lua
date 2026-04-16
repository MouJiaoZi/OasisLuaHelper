---@meta

---怪物切换探头姿势Task的节点内存
---@class FBTMonsterChangePeekPoseMemory
FBTMonsterChangePeekPoseMemory = {}


---怪物切换探头姿势行为树Task 调用WeaponManager的SwitchPeekPose函数 时间配置从当前武器Entity获取（PeekInTime/PeekOutTime/PeekSwitchTime）
---@class UBTTask_MonsterChangePeekPose: UBTTaskNode
---@field TargetPeekPose EMonsterPeekPose @目标探头姿势
---@field RedundancyTime number @冗余时间(秒)
local UBTTask_MonsterChangePeekPose = {}
