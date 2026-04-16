---@meta

---CG35 地心之旅寻敌节点 AI数目较多，所以用c++节点实现
---@class UBTService_EscapeUndergroudn_FindEnemy: UBTService
---@field OutEnemyActor FBlackboardKeySelector
---@field ElevatorActor FBlackboardKeySelector
---@field LastAttackMeEnemy FBlackboardKeySelector
---@field SearchPlayerZRange number
---@field SearchPlayerXYRange number
---@field UpdatePlayersTickTimeConfig number
---@field Players ULuaArrayHelper<AActor>
local UBTService_EscapeUndergroudn_FindEnemy = {}
