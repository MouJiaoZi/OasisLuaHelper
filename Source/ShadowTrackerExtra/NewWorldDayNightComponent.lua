---@meta

---带世界日夜变化组件，wexuanhuang
---@class UNewWorldDayNightComponent: UAutomaticDayNightComponent
---@field NotifyID number
local UNewWorldDayNightComponent = {}

---@param EnableIDSet ULuaSetHelper<number>
---@param DisableSet ULuaSetHelper<number>
function UNewWorldDayNightComponent:NotifyIDIPStateChanged(EnableIDSet, DisableSet) end
