---@meta

---@class EGenCDUIShowFlag
---@field ShowInBackpack number
---@field ShowInGrenadeList number
EGenCDUIShowFlag = {}


--- 检查是否存在泄露；尝试打印lua对泄露对象的引用
---@param LeakClass 要查找的类
---@param ClassNameReg 要查找的类名正则
---@param bReport 是否上报到crashsight
function CommonUtils.CheckLeak(LeakClass, ClassNameReg) end

--- 通用FancyTip Lua接口 begin
function CommonUtils:ShowFancyTip(PC, ...) end