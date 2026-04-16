---@meta

---@class FBLEEnumInfo
---@field BLEValue number
FBLEEnumInfo = {}


---The user widget is extensible by users through the WidgetBlueprint.
---@class FUserWidgetRefInfo
---@field SimpleName string
---@field bAdvanceHide boolean
---@field bAdvanceRemove boolean
---@field bNeedInsertInvBox boolean
FUserWidgetRefInfo = {}


---@class FUserWidgetStyleInfo
---@field ClassName string
---@field ClassSoftClass UUserWidget
---@field RefWidget ULuaArrayHelper<FUserWidgetRefInfo>
---@field RefObject ULuaArrayHelper<UObject>
---@field BuffSize number
---@field bHaveInit boolean
---@field bHaveSaveedOld boolean
---@field TrainsRecoverInfo ULuaArrayHelper<FUserWidgetRefInfo>
FUserWidgetStyleInfo = {}


---@class FUserRefStyleInfo
---@field ClassSoftClass_A UUserWidget
---@field SimpleName_A string
---@field ClassSoftClass_B UUserWidget
---@field SimpleName_B string
FUserRefStyleInfo = {}


---@class FUserRefStyleSoftClassB
FUserRefStyleSoftClassB = {}


---@class UUserWidgetStyle: UDataAsset
---@field StylesInfo ULuaArrayHelper<FUserWidgetStyleInfo>
---@field bShouldHidenJoystick boolean
---@field bShowHidenJoystick_NoDestory boolean
---@field bShouldHidenCrosshair boolean
---@field bUseBLEBlackList boolean
---@field BLEBlackList ULuaArrayHelper<FBLEEnumInfo>
---@field bShouldReport boolean
---@field UnloadDurationTime number
---@field IsPCUIStyle boolean
---@field UnloadTimerHandle FTimerHandle
local UUserWidgetStyle = {}


---@class UUserRefStyle: UDataAsset
---@field RefStylesInfo ULuaArrayHelper<FUserRefStyleInfo>
local UUserRefStyle = {}

function UUserRefStyle:ResetRefStylesInfo() end
