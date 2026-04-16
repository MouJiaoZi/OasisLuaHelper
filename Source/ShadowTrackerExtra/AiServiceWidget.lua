---@meta

---单个的监控目标
---@class UAiServiceSinglePerson: UUserWidget
---@field Limit FVector4
---@field UIOffset FVector2D @投影完成后的UI偏移
---@field WidgetAlign FVector2D @卡片的中心方式
---@field LocationOffset FVector @换算世界位置前应用的偏移
local UAiServiceSinglePerson = {}


---AIService用观战UI 方便观察一些调试信息
---@class UAiServiceWidget: UUserWidget
---@field PawnInfoClass UAiServiceSinglePerson @每个人物信息的UI蓝图类
---@field InfoWidgets ULuaMapHelper<number, UAiServiceSinglePerson> @PlayerKey对应的信息挂件
local UAiServiceWidget = {}

---与当前场景中的角色挂钩
function UAiServiceWidget:SyncAllCharacter() end
