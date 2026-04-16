---@meta

---Note: If you add another color here, you should update the Dark.json theme file in Engine\Content\Slate\Themes & FUMGColors in UMGCoreStyle.cpp for consistency
---@class EStyleColor
---@field Black number
---@field Background number
---@field Title number
---@field WindowBorder number
---@field Foldout number
---@field Input number
---@field InputOutline number
---@field Recessed number
---@field Panel number
---@field Header number
---@field Dropdown number
---@field DropdownOutline number
---@field Hover number
---@field Hover2 number
---@field White number
---@field White25 number
---@field Highlight number
---@field Primary number
---@field PrimaryHover number
---@field PrimaryPress number
---@field Secondary number
---@field Foreground number
---@field ForegroundHover number
---@field ForegroundInverted number
---@field ForegroundHeader number
---@field Select number
---@field SelectInactive number
---@field SelectParent number
---@field SelectHover number
---@field Notifications number
---@field AccentBlue number
---@field AccentPurple number
---@field AccentPink number
---@field AccentRed number
---@field AccentOrange number
---@field AccentYellow number
---@field AccentGreen number
---@field AccentBrown number
---@field AccentBlack number
---@field AccentGray number
---@field AccentWhite number
---@field AccentFolder number
---@field Warning number
---@field Error number
---@field Success number
---@field User1 number @Only user colors should be below this line To use user colors: 1. Set an unused user enum value below as the color value for an FSlateColor. E.g. FSlateColor MyCustomColor(EStyleColors::User1) 2. Set the actual color. E.g USlateThemeManager::Get().SetDefaultColor(EStyleColor::User1, FLinearColor::White) 3. Give it a display name if you want it to be configurable by editor users. E.g.  UStyleColorTable::Get().SetColorDisplayName(EUserStyleColor::User1, "My Color Name")
---@field User2 number
---@field User3 number
---@field User4 number
---@field User5 number
---@field User6 number
---@field User7 number
---@field User8 number
---@field User9 number
---@field User10 number
---@field User11 number
---@field User12 number
---@field User13 number
---@field User14 number
---@field User15 number
---@field User16 number
---@field MAX number
EStyleColor = {}


---@class FStyleColorList
FStyleColorList = {}


---Represents a single theme
---@class FStyleTheme
FStyleTheme = {}


---@class USlateThemeManager: UObject
---@field CurrentThemeId FGuid
---@field ActiveColors FStyleColorList
local USlateThemeManager = {}
