---@meta

---轻量化自定义的NavLink组件，具有ANavlinkProxy的完整功能，继承自UNavLinkSceneComponent 不直接使用本类，而是继承本类，实现自己的NavLink组件，定义自己的NavLinkType
---@class UCustomNavLinkSceneComponentBase: UNavLinkSceneComponent
---@field bIsManuallyAdd boolean
---@field NavLinkType ENavLinkType
local UCustomNavLinkSceneComponentBase = {}
