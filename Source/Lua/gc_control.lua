---@meta

--- 切换lua自动gc
--- 关闭lua自动gc可规避访问临时userdata属性后该临时userdata被释放导致野指针的情况
---@param bNewAutoGC boolean @否自动gc
function SwitchLuaAutoGC(bAutoGC) end