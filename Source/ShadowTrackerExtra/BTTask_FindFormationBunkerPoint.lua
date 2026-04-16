---@meta

---查找队形里的掩体
---@class UBTTask_FindFormationBunkerPoint: UBTTaskNode
---@field InSearchBunkerRadius number @查找掩体半径
---@field InSearchBunkerTag string @查找队形成员Tag
---@field InEnemyBlackboardKey any @敌人黑板键
---@field InExcludeBunkerNextToEnemyRadius number @排除敌人附近掩体半径
---@field InBunkerPointOffsetToMember number @掩体点偏移队友距离
---@field NavmeshTestFilterClass UNavigationQueryFilter @导航测试filter
---@field OutBunkerPointBlackboardKey any @输出掩体点黑板键
local UBTTask_FindFormationBunkerPoint = {}
