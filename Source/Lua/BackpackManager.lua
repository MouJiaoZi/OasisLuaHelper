---@meta

---param Type 0:背包; 1:仓库
function BackpackManager:SortData(TabId, DataType) end

--- 从 GP_BackpackV2 GamePartConfig 中获取配置的控件路径
---合并两个表
---@param TableA table @表A
---@param TableB table @表B
---@param PriorityA boolean @是否优先使用表A
function BackpackManager:MergeTableAB(TableA, TableB, PriorityA) end