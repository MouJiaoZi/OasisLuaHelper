---@meta

---@class EPullTargetLocationType
---@field EPullTargetLocationType_Caster number @PullTargetLocationType_Caster
---@field EPullTargetLocationType_SelectTransform number @PullTargetLocationType_SelectTransform
EPullTargetLocationType = {}


---@class UPESkillTask_Pull: UPESkillTaskBase
---@field TargetType EPullTargetLocationType
---@field TargetOffset FVector @以 TargetType 代表的位置为原点，以目标的当前位置为X轴方向的坐标系下，偏移TargetOffset
---@field SpeedType EPullSpeedType
---@field LaunchSpeed FFloatGetter
---@field FaceToTargetLocation boolean
---@field CollisionIgnore FPullCollisionIgnore
---@field PullGameplayTasks ULuaArrayHelper<UGameplayTask_Pull>
local UPESkillTask_Pull = {}
