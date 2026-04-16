---@meta

---@class FAvatarLogicExpensesInfo
---@field LogicTagName string
---@field SingleFrameCallCount number
---@field FrameCounter number
FAvatarLogicExpensesInfo = {}


---@class FAvatarLogicBudgetPair
---@field LogicTagName string
---@field SingleFrameCallCount number
FAvatarLogicBudgetPair = {}


---@class UAvatarLogicBudgetMod: UAvatarManagementModBase
---@field InnerSingleFrameMaxCallCountConfig ULuaArrayHelper<FAvatarLogicBudgetPair>
---@field BPSingleFrameMaxCostTimeConfig ULuaMapHelper<string, number>
---@field SingleFrameMaxCallCountConfig ULuaMapHelper<string, number>
---@field CurrentFrameTagFuncCallCount ULuaMapHelper<string, number>
---@field callInfo ULuaArrayHelper<FAvatarLogicExpensesInfo>
local UAvatarLogicBudgetMod = {}
