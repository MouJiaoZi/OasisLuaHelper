---@meta

---输出格式化的日志，
---有三种使用方式，1.原始日志字符串，2.格式化字符串和参数，3.日志类别和日志详细级别、格式、参数。默认日志类别："LogTagLog"，默认详细级别：Log。
---生效范围：服务器&客户端
---@param ... any @输入参数 格式1 string log；格式2 string format, vararg params；格式3 string category, ELogVerbosity verbosity, string format, vararg params
function TagLogFormatPrint(...) end

---输出原始日志
---@param LogCategory string @日志类别
---@param LogVerbosity ELogVerbosity @日志详细级别
---@param LogContent string @日志内容
function TagLogRawPrint(LogCategory, LogVerbosity, LogContent) end