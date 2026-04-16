---@meta

---文本系统接口库
---@class UGCStringTextUtility
UGCStringTextUtility = {}

---导出对象文本，会根据传入的对象类型打印关键信息
---@param Object string @文本对象
---@return string @文本字符串
function UGCStringTextUtility.ExportText(Object) end

---修剪字符串的起始和结尾，根据传入的TrimStart和TrimEnd去除字符串头尾的空白字符
---@param InStr string @字符串
---@param TrimStart boolean @是否修剪起始
---@param TrimEnd boolean @是否修剪结尾
---@return string @修剪后的字符串
function UGCStringTextUtility.TrimStartOrEnd(InStr, TrimStart, TrimEnd) end

---将字符串按照分隔符分割成数组
---@param InStr string @字符串
---@param Separator string @分隔符
---@return table @数组
function UGCStringTextUtility.SplitToArray(InStr, Separator) end

---判断字符串是否以指定的前缀开头
---@param InStr string @字符串
---@param InPrefix string @前缀
---@param SearchCase ESearchCase @是否区分大小写
---@return boolean @是否以指定的前缀开头
function UGCStringTextUtility.StartsWith(InStr, InPrefix, SearchCase) end

---判断字符串是否以指定的后缀结尾
---@param InStr string @字符串
---@param InSuffix string @后缀
---@param SearchCase ESearchCase @是否区分大小写
---@return boolean @是否以指定的后缀结尾
function UGCStringTextUtility.EndWith(InStr, InSuffix, SearchCase) end

---在字符串的指定位置插入内容
---@param SourceStr string @源字符串
---@param Content string @插入内容
---@param Position number @插入位置
---@return string @字符串
function UGCStringTextUtility.InsertIntoString(SourceStr, Content, Position) end

---将字符串数组连接成字符串
---@param InStrArray table @字符串数组
---@param Separator string @分隔符
---@return string @字符串
function UGCStringTextUtility.JoinArrayIntoString(InStrArray, Separator) end

---将字符串分割成字符数组
---@param InStr string @字符串
---@return table @字符数组
function UGCStringTextUtility.SplitToCharArray(InStr) end

---判断字符串是否由数字组成
---@param InStr string @字符串
---@return boolean @是否由数字组成
function UGCStringTextUtility.ComposedOfDigits(InStr) end

---截断字符串的前n个字符
---@param InStr string @字符串
---@param Count number @字符数
---@return string @字符串
function UGCStringTextUtility.LeftChop(InStr, Count) end

---在字符串的左侧填充空白字符使得字符串长度达到指定的长度
---@param InStr string @字符串
---@param StrLen number @指定的长度
---@return string @字符串
function UGCStringTextUtility.LeftPad(InStr, StrLen) end

---截断字符串的后n个字符
---@param InStr string @字符串
---@param Count number @字符数
---@return string @字符串
function UGCStringTextUtility.RightChop(InStr, Count) end

---在字符串的右侧填充空白字符使得字符串长度达到指定的长度
---@param InStr string @字符串
---@param StrLen number @指定的长度
---@return string @字符串
function UGCStringTextUtility.RightPad(InStr, StrLen) end

---打印变量,特别是对table类型做树形输出,仅DEV打印
---@param Desc string @变量描述
---@param Var any @要输出的变量,可以是任何类型table, bool, number, nil
function UGCStringTextUtility.LogTree(Desc, Var) end