---@meta

---@class EAttrValueType
---@field Int32 number
---@field Float number
---@field FString number
---@field Bool number
EAttrValueType = {}


---将单条属性按 Type 解析后，通过 load 一步写入目标对象（支持任意深度结构体）
---@param TargetObject UObject @标对象
---@param PropSegments table @性路径各层级数组，例如 {"Stats", "MaxHp"}
---@param ValueType number @ype 枚举值（1~4）
---@param ValueStr string @alue 字符串
---@return boolean
function IDIPModAttrComp.ApplySingleAttr(TargetObject, PropSegments, ValueType, ValueStr) end

---通用：遍历 IDIPEntries（蓝图 TArray）将每条属性写入目标对象
---供 Client 端 OnRep_IDIPSyncEntries 或其他需要应用复制数据的场景调用
---AttributeName 已去掉 ClassPath 前缀，只含 PropPath（如 "Health" 或 "Stats|MaxHp"）
---@param TargetObject UObject @标对象（属性写入到该对象上）
---@param IDIPEntries TArray @图 TArray，每个元素含 {AttributeName(=PropPath), Type, Value}
function IDIPModAttrComp.ApplyIDIPAttrData(TargetObject, IDIPEntries) end

---C++ OnIDIPConfigMatched BlueprintNativeEvent 的 Lua 覆写
---C++ 侧已确认该对象有 IDIP 配置，并传入匹配的条目列表
---@param TargetObject UObject
---@param MatchedEntries TArray @配的 FIDIP_ItemAttributeValue 数组
function IDIPModAttrComp:OnIDIPConfigMatched(TargetObject, MatchedEntries) end