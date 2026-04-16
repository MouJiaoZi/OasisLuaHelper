---@meta

---罗盘上Item的贴边状态Enum
---@class ENavigatorItemEdgeState
---@field None number @未设置
---@field NoSnap number @不贴边
---@field LeftSnap number @左侧贴边
---@field RightSnap number @右侧贴边
ENavigatorItemEdgeState = {}


---屏幕顶部导航栏UI
---@class UNavigatorPannelUAEUserWidget: UUAEUserWidget
---@field LandscapeRotation number
---@field offset number
---@field width number
---@field ChangeAlphaWidth number
---@field DisplayRotToTextArray ULuaArrayHelper<string>
---@field NormalDirectionTextColor FSlateColor
---@field SpecifiedDirectionTextColor FSlateColor
---@field HalfPix number
---@field EdgeSnappingAngle number
---@field CompassLenToAngleRatio number
---@field MapMarkPositionYInCompass number
---@field SafeZoneGuidePositionYInCompass number
---@field materialXParameterName string
---@field CPPNavigatorTickRate number
---@field DisplayCharRotation number
---@field MapMarkArray ULuaArrayHelper<FVector>
---@field TeamPlayerMarkerArray_Cpp ULuaArrayHelper<UWidget>
---@field TeamPlayerMarkDistArray_Cpp ULuaArrayHelper<UTextBlock>
---@field TeamPlayerMarkDistArray_Cpp_Op ULuaArrayHelper<number>
---@field TeamPlayer2DMarkDistArray_Cpp ULuaArrayHelper<number>
---@field LocalPlayerIndex_Cpp number
---@field bNeedChangeAlpha boolean
---@field bUseCppImplement boolean
---@field ExtraSetting FVector4
---@field bEnableMapPinEdgeSnapping boolean
---@field TeammateIconEdgeSnappingAngle number
---@field TeammateMapMarkEdgeStates ULuaArrayHelper<ENavigatorItemEdgeState>
local UNavigatorPannelUAEUserWidget = {}

---@return FRotator
function UNavigatorPannelUAEUserWidget:GetPlayerLookRotation() end

---@param InCompassMat UMaterialInstanceDynamic
function UNavigatorPannelUAEUserWidget:SetCompassMat(InCompassMat) end

function UNavigatorPannelUAEUserWidget:BindMapMarkChangeDelegate() end

---@param MarkIndex number
function UNavigatorPannelUAEUserWidget:OnMapMarkChange(MarkIndex) end

function UNavigatorPannelUAEUserWidget:OnMapMarkChange_NoParam() end

function UNavigatorPannelUAEUserWidget:UpdateMapMarkVisibility() end

function UNavigatorPannelUAEUserWidget:UpdateMapMarkPosition() end

function UNavigatorPannelUAEUserWidget:UpdateSafeZoneGuideVisibilityAndPosition() end

function UNavigatorPannelUAEUserWidget:UpdateForwardDirectionText() end

---@param isSelf boolean
---@param currentMarkIndex number
function UNavigatorPannelUAEUserWidget:ChangeAlpha(isSelf, currentMarkIndex) end

---@param isOverLap boolean
---@param currentMarkIndex number
function UNavigatorPannelUAEUserWidget:ChangeAlphaCpp(isOverLap, currentMarkIndex) end

---@param NewCenter FVector
---@param NewExtent number
function UNavigatorPannelUAEUserWidget:SetCustomLevelLandscapeParam(NewCenter, NewExtent) end

function UNavigatorPannelUAEUserWidget:ResetLevelLandscapeParam() end

---当导航栏上的Item贴边时调用的函数
---@param ItemWidget UWidget
---@param bIsSnapping boolean
---@param bLeftSnapping boolean
function UNavigatorPannelUAEUserWidget:OnItemSnapping(ItemWidget, bIsSnapping, bLeftSnapping) end
