---@meta

---通用扩展 ItemHandle 基类
---@class UCommonBattleItemHandleBase: UBattleItemHandleBase, ICommonBattleItemUseInterface
---@field RunInCommonBackpack boolean
local UCommonBattleItemHandleBase = {}

---Event
---能否创建物品 Handle
---可重载并自定义
---DS 被调用
---若不允许，物品也将创建失败
---@return boolean @是否允许创建物品 Handle
function UCommonBattleItemHandleBase:CanCreateItemHandleV2() end

---Event
---当创建物品 Handle 后回调
---可重载并自定义
---DS 被调用
function UCommonBattleItemHandleBase:OnCreateItemHandleV2() end

---Event
---能否销毁物品 Handle
---可重载并自定义
---DS 被调用
---若不允许，物品移除或丢弃也可能失败
---@return boolean @是否允许销毁物品 Handle
function UCommonBattleItemHandleBase:CanDestoryItemHandleV2() end

---Event
---销毁物品 Handle 前回调
---可重载并自定义
---DS 被调用
function UCommonBattleItemHandleBase:OnDestoryItemHandleV2() end

---Event
---能否更新此物品实例的数量
---可重载并自定义
---DS 被调用
---若不允许，物品添加或移除操作可能失败
---@param NewItemCount number
---@param OldItemCount number
---@return boolean @是否允许物品数量更新
function UCommonBattleItemHandleBase:CanUpdateItemCountV2(NewItemCount, OldItemCount) end

---Event
---物品数量更新后回调
---可重载并自定义
---DS 被调用
---@param NewItemCount number
---@param OldItemCount number
function UCommonBattleItemHandleBase:OnUpdateItemCountV2(NewItemCount, OldItemCount) end

---能否使用物品 可重载并自定义 DS 被调用
---@return boolean
function UCommonBattleItemHandleBase:CanUseV2_Implementation() end

---当物品被使用 可重载并自定义 DS 被调用
function UCommonBattleItemHandleBase:OnUseV2_Implementation() end

---当物品被取消使用 与 UseItem 对应，用于清理状态 应当支持多次调用，不产生额外副作用，移除物品时自动调用 可重载并自定义 DS 被调用
function UCommonBattleItemHandleBase:OnDisuseV2_Implementation() end
