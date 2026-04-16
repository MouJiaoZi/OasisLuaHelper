---@meta

---@class EUTGetterType
---@field EUTGetterType_None number @None
---@field EUTGetterType_Constant number @Constant
---@field EUTGetterType_Function number @Function
---@field EUTGetterType_Attribute number @Attribute
---@field EUTGetterType_BlackBoard number @BlackBoard
EUTGetterType = {}


---@class FUTPropertyGetter
FUTPropertyGetter = {}


---@class FUTFloatPropertyGetter
---@field GetterType EUTGetterType
---@field Value number
---@field FunctionName string
---@field keySelect FUAEBlackboardKeySelector
---@field GameAttributeX FGameAttributeContainer @要使用的属性名
---@field ValueA number @公式参数A
---@field ValueB number @公式参数B
FUTFloatPropertyGetter = {}


---@class FUTIntPropertyGetter
---@field GetterType EUTGetterType
---@field Value number
---@field FunctionName string
---@field keySelect FUAEBlackboardKeySelector
---@field GameAttributeX FGameAttributeContainer @要使用的属性名
---@field ValueA number @公式参数A
---@field ValueB number @公式参数B
FUTIntPropertyGetter = {}
