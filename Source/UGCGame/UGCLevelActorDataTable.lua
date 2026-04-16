---@meta

---关卡元件配置数据结构 对应关卡元件表的字段定义
---@class FUGCLevelActorData
---@field ActorName string @元件名称 - 关卡元件的显示名称 示例: 刷怪点
---@field IconPath string @元件图标 - 关卡元件的显示图标路径 示例: /Game/UI/Icons/MonsterSpawnIcon
---@field Description string @元件描述 - 悬浮到该元件上时显示的tips 示例: 摆放到场景中可以刷出对应怪物
---@field Category string @元件目录 - 该元件所属的目录/分类 示例: 战斗
---@field BlueprintPath string @元件模板蓝图 - 该元件所对应的蓝图Actor路径 示例: /Game/Blueprints/LevelActors/BP_MonsterSpawn
---@field SortOrder number @排序权重 - 在放置面板中的排序顺序（越小越靠前）
---@field bEnabled boolean @是否启用 - 控制该元件是否在放置模式中显示
FUGCLevelActorData = {}


---@class UUGCLevelActorDataTable: UUAEDataTable
local UUGCLevelActorDataTable = {}
