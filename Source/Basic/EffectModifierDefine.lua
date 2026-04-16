---@meta

---@class EEffectModifierAutoReflectParamType
---@field None number
---@field Float number
---@field Int32 number
---@field GameAttribute number
EEffectModifierAutoReflectParamType = {}


---@class EEffectModifierGenericParamType
---@field None number @未定义
---@field Int32 number @整数型
---@field Float number @小数型
---@field InstancedStruct number @结构型
EEffectModifierGenericParamType = {}


---@class FEffectModifierAutoReflectParamInfo
---@field ParamType EEffectModifierAutoReflectParamType
---@field ParamName string
---@field GameAttributeParamValue FGameAttributeContainer
---@field FloatParamValue number
---@field Int32ParamValue number
FEffectModifierAutoReflectParamInfo = {}


---@class FEffectModifierGenericParamInfo
---@field ParamType EEffectModifierGenericParamType
---@field ParamName string
---@field Int32ParamValue number
---@field FloatParamValue number
---@field InstancedStructParamValue FLiteInstancedStruct
FEffectModifierGenericParamInfo = {}


---@class FEffectModifierDebugDisplayData
---@field RelatedAssetPath string
---@field IndexInRelatedAsset number
---@field RelatedAssetDescription string
---@field EffectModifierDescription string
FEffectModifierDebugDisplayData = {}
