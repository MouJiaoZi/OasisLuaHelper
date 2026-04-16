---@meta

---输出UGC关键日志，仅支持2个参数或3个参数
---@param Category string @日志类别
---@param Message string @日志内容
---@param Verbosity string @日志级别(Log、Warning、Error)
function ugc_keylog(...) end

---抛出UGC异常，仅支持2个参数或3个参数或4个参数
---@param Title string @标题
---@param Message string @内容
---@param Verbosity string @日志级别(Log、Warning、Error)
---@param Flag string @异常呈现方式(普通日志、战斗日志、MessageBox、XPCALL、ALL)
function ugc_exception(...) end