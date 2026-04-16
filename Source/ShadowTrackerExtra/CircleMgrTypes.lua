---@meta

---@class ECircleStatus
---@field ECircleReset number
---@field EShowCircle number
---@field ECircleRun number
---@field ECircleRunOver number
ECircleStatus = {}


---@class EInnerCircleType
---@field EInvalidType number
---@field EGeneralInnerType number
---@field EFourTherionTypeDragon number
---@field EFourTherionTypeTiger number
---@field EFourTherionTypeBird number
---@field EFourTherionTypeTortoise number
EInnerCircleType = {}


---@class FCirCleCfg
---@field delaytime number
---@field RadiusWhenDestoryMap number
---@field SafeZoneAppeartime number
---@field BlueCirclePreWarning ULuaArrayHelper<number>
---@field lasttime number
---@field pain number
---@field bUseCustomBluePoint boolean
---@field bluepoint FVector2D
---@field blueradius number
---@field bUseCustomWhitePoint boolean
---@field whitepoint FVector2D
---@field bUseCustomRandomWhitePoint boolean
---@field RandomWhitePoint FVector2D
---@field RandomWhiteRadius number
---@field whiteradius number
---@field Alpha number
---@field bEnableInnerCircleInCurWhiteCircle boolean
---@field InnerCircleRadius number
---@field InnerCircleType EInnerCircleType
---@field bUseContainActor boolean
---@field DestinyChance number
---@field bActiveScreenSize boolean
---@field ScreenSizeFactor number
---@field ExtraRadius number
---@field bEnableDamageMagnifier boolean
---@field DamageMagnifierRange number
---@field DamageMagnifier number
---@field bEnableDamageMagnifier2 boolean
---@field DamageMagnifierRange2 number
---@field DamageMagnifier2 number
---@field bTranslatedOnlyCircle boolean
---@field CircleTranslatedRadiusMax number
---@field CircleTranslatedRadiusMin number
FCirCleCfg = {}


---@class FCircleInfo
---@field CurCircleIndex number
---@field CircleStatus ECircleStatus
---@field OriginBlueCircle FVector
---@field BlueCircle FVector
---@field WhiteCircle FVector
---@field CircleStatusStartServerTime number
---@field CircleStatusTimespan number
FCircleInfo = {}
