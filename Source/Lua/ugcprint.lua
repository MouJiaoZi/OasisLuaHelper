---@meta

---日志详细级别等级
---@class ELogLevel
---@field Log number @记录级别
---@field Warning number @警告级别
---@field Error number @错误级别
ELogLevel = {}


---打印 UGC 专用日志
---@param Log string @日志内容
function ugcprint(Log, Category) end

---打印 UGC 专用日志，指定分类和日志级别
---@param Log string @日志内容
---@param Category string @日志分类
---@param LogLevel ELogLevel @日志详细级别（Log、Warning、Error）
function ugcprint_with_category_and_level(Log, Category, LogLevel) end

---打印 UGC 专用日志，指定日志级别
---@param Log string @日志内容
---@param LogLevel ELogLevel @日志详细级别（Log、Warning、Error）
function ugcprint_withlevel(Log, LogLevel) end

---打印格式化的 UGC 专用日志，通过格式化字符串对标签内容使用参数按照规定的格式进行解析
---@param FormatString string @日志内容格式串，格式串中需要使用<SomeTagType/>标签，标签类型需要提前注册
---@param ... any @输入参数，对应格式串的占位符，对象需要实现对应标签类型的处理类如FSomeTagTypeHandler
function ugctagprint(FormatString, ...) end

---格式化输出字符串，使用方法参考lua string.format，一比一对照
---@param FormatString string @格式化字符串，支持%s, %d, %f等格式化占位符
---@param ... any @输入参数，对应格式串的占位符
function ugcprint_format(FormatString, ...) end

---打印多参数拼接的字符串，对每个入参进行Exprot并拼接成字符串，默认用空格分隔多个字串，可自定义分隔符
---@param ... any @要拼接的多个参数，每个参数会通过ExportText转换为字符串。如果最后一个参数是table且仅包含string_seperator字段，且value为string，则该字段值作为分隔符
function ugcprint_concat(...) end