---@meta

---这个组件最初功能是 载具会有些特殊UI 避免加载的是UI的 Flush 在载具上 挂上该组件 载具异步加载的时候 同时对应的UI 也加载上,同时 在DS Cook的 处理掉UI的引用 避免DS报错 Tips: 现在只能处理 自身Component本身的引用，并不能处理Actor上的引用 yufeiili
---@class UHardreferenceUObject: UActorComponent
---@field SkipForDS boolean
---@field SkipForClient boolean
---@field UObjectRefArray ULuaArrayHelper<UObject>
---@field UClassRefArray ULuaArrayHelper<UClass>
---@field UserWidgetRefArray ULuaArrayHelper<UUAEUserWidget>
local UHardreferenceUObject = {}
