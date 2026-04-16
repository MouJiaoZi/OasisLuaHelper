---@meta

---@class FAiServiceStatView
---@field AIModelLevel number
FAiServiceStatView = {}


---@class FAiServiceStatSinglePlayer
---@field AiType number
---@field PlayerKey number
---@field AgentID number
---@field PlayerName string
---@field TeamID number
---@field PredictCount number
---@field primary_bullet_loaded number
---@field StandType number @1,2,3 站蹲趴
---@field bSprint boolean @疾跑
---@field bStucked boolean @是否卡住
---@field CurHp number @当前血量
FAiServiceStatSinglePlayer = {}


---@class UAiServiceStat: UActorComponent
---@field bSessionComponentValid boolean
---@field ManagerState number
---@field ServiceStat FAiServiceStatView
---@field ManageredPlayers ULuaArrayHelper<FAiServiceStatSinglePlayer>
local UAiServiceStat = {}
