---@meta

--- 开放化接口：InitUI（统一入口）
---  InParams.ItemData = FSearchedPickUpItemResult  -- 物品数据
---  InParams.Useful = table|boolean                 -- 有用性信息
---  InParams.Index = number                         -- 列表索引
---  InParams.OnPickupCallback = function            -- 拾取回调
---  InParams.OnDetailsCallback = function           -- 详情回调
---@param InParams table @参数表
function UGC_PickUpItem_UIBP:InitUI(InParams) end

--- 向后兼容接口：SetItemData
---@param PickItem FSearchedPickUpItemResult @物品数据
---@param Useful table|boolean @有用性信息
---@param Index number @列表索引
function UGC_PickUpItem_UIBP:SetItemData(PickItem, Useful, Index) end