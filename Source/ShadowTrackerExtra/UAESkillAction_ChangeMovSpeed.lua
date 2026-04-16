---@meta

---@class UUAESkillAction_ChangeMovSpeed: UUAESkillAction
---@field DestSpeedPercentage number @当前设置的值x技能/buff宿主的最大Walk速度 = 最终速度。 比如 当前PAWN的MaxWalkSpeed 是 300，那么这里输入0.1之后，最终速度值将会改变成 30了。 讲道理我也不想这么啰嗦啦，但这种值的设置很容易产生歧义，所以在这里多唠叨两句。哪怕给花花草草看看也是挺好的不是吗？
local UUAESkillAction_ChangeMovSpeed = {}

function UUAESkillAction_ChangeMovSpeed:UndoAction_Internal() end

---@return boolean
function UUAESkillAction_ChangeMovSpeed:RealDoAction_Internal() end
