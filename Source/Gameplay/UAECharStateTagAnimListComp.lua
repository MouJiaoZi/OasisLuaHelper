---@meta

---@class FAnimCharStateTagData
---@field AnimGameplayTag FGameplayTag
FAnimCharStateTagData = {}


---利用 GameplayTag 作为动画枚举 todo：添加Action概念，在触发PlaySpecificAnimation的时候可以传入 Tag 和多个参数，利用 Tag 寻找对应 Action 可以执行封装好的细节逻辑
---@class UUAECharStateTagAnimListComp: UUAECharAnimListCompBase
---@field WarningTip string
---@field bNeedCompareWithParentBPAnimConfig boolean
---@field CharStateTagAnimDataListDefault ULuaArrayHelper<FAnimCharStateTagData>
---@field CharStateTagAnimDataListDefault_FPP ULuaArrayHelper<FAnimCharStateTagData>
---@field CharStateTagAnimListMap ULuaMapHelper<number, FAnimListMapValueData>
local UUAECharStateTagAnimListComp = {}
