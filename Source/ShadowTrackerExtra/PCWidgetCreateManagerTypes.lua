---@meta

---@class FHintMountInfo
---@field MountUIName string
---@field MountWidgetName string
---@field LayoutData FAnchorData
---@field ZOrder number
---@field ActionName string
---@field MountUIClassName string
---@field GridHorizontalAlign number
---@field GridVerticalAlign number
---@field GridAnchor FAnchorData
---@field VisRelatedWidgetName string
---@field CustomHintTextIndex number
---@field ChildWidgetIndex number
---@field IsVisOppositeRelated boolean
---@field IsAxisMapping boolean
---@field AxisMappingScale number
---@field GridPadding FMargin
---@field ExcludeGameModeIDs ULuaSetHelper<string>
---@field IncludeGameModeIDs ULuaSetHelper<string>
---@field ExcludeGameModeTypes ULuaSetHelper<string>
---@field IncludeGameModeTypes ULuaSetHelper<string>
---@field ShowKeyMode number
---@field ShowHUDStyle number
---@field bAutoSize boolean
---@field Angle number
---@field RowID string
FHintMountInfo = {}


---@class FPCHintUISubPool
---@field HintUISubPool ULuaArrayHelper<UPCHintUI>
FPCHintUISubPool = {}


---按键提示UI池
---@class FPCHintUIPool
---@field HintUIClassMap ULuaMapHelper<EHintUIType, UPCHintUI>
---@field HintUIPool ULuaMapHelper<EHintUIType, FPCHintUISubPool>
FPCHintUIPool = {}
