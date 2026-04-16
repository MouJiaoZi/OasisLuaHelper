---@meta

---@class EFindFormationMemberStrategy
---@field Nearest number @最近
---@field Random number @随机
EFindFormationMemberStrategy = {}


---查找队形里的成员
---@class UBTTask_FindFormationMember: UBTTaskNode
---@field InSearchMemberRadius number @查找成员半径
---@field InSearchMemberTag string @查找成员Tag
---@field InFindStrategy EFindFormationMemberStrategy
---@field OutMemberBlackboardKey any @输出掩体点黑板键
local UBTTask_FindFormationMember = {}
