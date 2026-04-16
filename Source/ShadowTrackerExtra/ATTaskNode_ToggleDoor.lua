---@meta

---开关门节点
---@class UATTaskNode_ToggleDoor: UATTaskNodeBase
---@field WaitReplyTime number
local UATTaskNode_ToggleDoor = {}

---@param Door APUBGDoor
function UATTaskNode_ToggleDoor:HandleDoorAnimFinish(Door) end

function UATTaskNode_ToggleDoor:WaitDoorAnimEnd() end
