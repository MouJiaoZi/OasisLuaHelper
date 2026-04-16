---@meta

---新手引导UMG配置信息
---@class FUGCNewbieGuideUMGInfo
---@field ID number @引导ID
---@field Name string @引导名称
---@field UMGClass UUserWidget @UMG强引用
FUGCNewbieGuideUMGInfo = {}


---新手引导组件 用于管理新手引导相关的UMG配置
---@class UUGCNewbieGuideComponent: UActorComponent, IUGCGamePartPlayerComponentInterface
---@field UMGInfoList ULuaArrayHelper<FUGCNewbieGuideUMGInfo> @新手引导UMG配置列表
local UUGCNewbieGuideComponent = {}
