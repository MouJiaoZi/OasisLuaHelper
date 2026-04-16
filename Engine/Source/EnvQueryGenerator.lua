---@meta

---@class UEnvQueryGenerator: UEnvQueryNode
---@field OptionName string
---@field ItemType UEnvQueryItemType @type of generated items
---@field bAutoSortTests number @if set, tests will be automatically sorted for best performance before running query
local UEnvQueryGenerator = {}
