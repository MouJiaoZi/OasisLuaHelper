---@meta

---@class EAIAvoidPlayerPathDir
---@field Path_Dir_4 number @4方向移动
---@field Path_Dir_8 number @8方向移动
EAIAvoidPlayerPathDir = {}


---@class FAIGridLocationDataBase
---@field GridSize number @格子大小
FAIGridLocationDataBase = {}


---@class FAIGridLocationDataAvoidPlayer
---@field PlayerCoverGridRadius number @一个玩家角色覆盖的周围格子扩展数
---@field PathDirN EAIAvoidPlayerPathDir @路径移动方向
---@field PlayerCoverAddCost number @玩家占据的格子cost增加
---@field PlayerCoverCostNearbyDesc number @玩家周围格子的cost递减
---@field NoPlayerCoverCost number @无玩家占据的格子的cost
---@field AvoidPlayerConsiderRange number @避让最大考虑的范围（以起始点为中心）
---@field TryFindGridLocTimes number @格子内找点最大考虑次数
---@field FindGridLocSizeScale number @格子中心点不可达，在格子内找点的随机半径
FAIGridLocationDataAvoidPlayer = {}


---@class UAIGridLocationManagerComponent: UActorComponent
---@field bOpenAIAvoidPlayerGrid boolean
---@field AIAvoidPlayerGridData FAIGridLocationDataAvoidPlayer
---@field bGetCharacterFromWorld boolean
---@field bDrawAIAvoidPlayerGrid boolean
---@field DrawAIAvoidPlayerGridInterval number
---@field DrawAIAvoidPlayerGridZOffset number
local UAIGridLocationManagerComponent = {}
