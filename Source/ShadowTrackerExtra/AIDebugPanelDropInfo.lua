---@meta

---@class FAIDebugPanelDropInfo_MetaPlayer
---@field Uid number
---@field PlayerKey number
---@field PlayerName string
FAIDebugPanelDropInfo_MetaPlayer = {}


---@class FAIDebugPanelDropInfo_Plan
---@field Player FAIDebugPanelDropInfo_MetaPlayer
---@field DeliverFakePlayers ULuaArrayHelper<FAIDebugPanelDropInfo_MetaPlayer>
---@field PreDeliverFakePlayers ULuaArrayHelper<FAIDebugPanelDropInfo_MetaPlayer>
FAIDebugPanelDropInfo_Plan = {}


---@class FAIDebugPanelDropInfo
---@field Plans ULuaArrayHelper<FAIDebugPanelDropInfo_Plan>
---@field FreeFakePlayers ULuaArrayHelper<FAIDebugPanelDropInfo_MetaPlayer>
FAIDebugPanelDropInfo = {}
