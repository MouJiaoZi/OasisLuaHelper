---@meta

---记录Moba中一个阵营的视野数据 包括敌方英雄、敌方小兵波次和中立野怪刷新点，其中小兵以波次为单位可见
---@class FMobaVisualFieldCamp
---@field VisiblePlayerList ULuaMapHelper<string, AActor>
---@field VisibleMinionList ULuaSetHelper<number>
---@field VisibleMonsterList ULuaMapHelper<number, AActor>
FMobaVisualFieldCamp = {}


---记录Moba中所有阵营的视野数据
---@class FMobaVisualFieldFrame
---@field MobaVisualFieldFrameMap ULuaMapHelper<number, FMobaVisualFieldCamp>
FMobaVisualFieldFrame = {}
