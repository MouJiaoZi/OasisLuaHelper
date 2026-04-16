---@meta

---@class EBasicKeyOperation
---@field Set number @Is Set
---@field NotSet number @Is Not Set
EBasicKeyOperation = {}


---@class EArithmeticKeyOperation
---@field Equal number @Is Equal To
---@field NotEqual number @Is Not Equal To
---@field Less number @Is Less Than
---@field LessOrEqual number @Is Less Than Or Equal To
---@field Greater number @Is Greater Than
---@field GreaterOrEqual number @Is Greater Than Or Equal To
EArithmeticKeyOperation = {}


---@class ETextKeyOperation
---@field Equal number @Is Equal To
---@field NotEqual number @Is Not Equal To
---@field Contain number @Contains
---@field NotContain number @Not Contains
ETextKeyOperation = {}


---@class UBlackboardKeyType: UObject
local UBlackboardKeyType = {}
