---@meta

---@class EGameplayTagSourceType
---@field Native number
---@field DefaultTagList number
---@field TagList number
---@field DataTable number
---@field Invalid number
EGameplayTagSourceType = {}


---Simple struct for a table row in the gameplay tag table and element in the ini list
---@class FGameplayTagTableRow
---@field Tag string @Tag specified in the table
---@field DevComment string @Developer comment clarifying the usage of a particular tag, not user facing
FGameplayTagTableRow = {}


---Struct defining where gameplay tags are loaded/saved from. Mostly for the editor
---@class FGameplayTagSource
---@field SourceName string @Name of this source
---@field SourceType EGameplayTagSourceType @Type of this source
FGameplayTagSource = {}


---Simple tree node for gameplay tags, this stores metadata about specific tags
---@class FGameplayTagNode
FGameplayTagNode = {}


---Holds data about the tag dictionary, is in a singleton UObject
---@class UGameplayTagsManager: UObject
---@field TagSources ULuaArrayHelper<FGameplayTagSource> @List of gameplay tag sources
---@field GameplayTagTables ULuaArrayHelper<UDataTable> @Holds all of the valid gameplay-related tags that can be applied to assets
local UGameplayTagsManager = {}
