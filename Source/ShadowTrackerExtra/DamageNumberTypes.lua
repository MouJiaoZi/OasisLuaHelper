---@meta

---@class ETextHorzPos
---@field Left number
---@field Center number
---@field Right number
---@field MAX number
ETextHorzPos = {}


---@class ETextVertPos
---@field Top number
---@field Center number
---@field Bottom number
---@field MAX number
ETextVertPos = {}


---@class FNumber
---@field Digits ULuaArrayHelper<number>
FNumber = {}


---@class FDamageNumber
FDamageNumber = {}


---单个受击部位的颜色配置
---@class FBodyPartColorConfig
---@field DrawColor FLinearColor
---@field DrawOutlineColor FLinearColor
---@field OutlineSize number
---@field SizeScale number
FBodyPartColorConfig = {}


---@class FDamageNumberConfig
---@field UpScaleFactor number
---@field ScaleRandom number
---@field ScaleRandOffset number
---@field HeadDrawColor FLinearColor
---@field HeadDrawOutlineColor FLinearColor
---@field HeadOutlineSize number
---@field HeadSizeScale number
---@field BodyDrawColor FLinearColor
---@field BodyDrawOutlineColor FLinearColor
---@field BodyOutlineSize number
---@field BodySizeScale number
---@field DefalutOringialPosition FVector2D
---@field OringialPositionEnemy FVector2D
---@field OringialPosRandom number
---@field OriginalPosRandom FVector2D
---@field TimeLife number
---@field DamageFormatText string
---@field BodyPartColorConfigs ULuaMapHelper<number, FBodyPartColorConfig>
FDamageNumberConfig = {}


---@class FDamageNumberTeamColorInfo
FDamageNumberTeamColorInfo = {}


---Holds texture information with UV coordinates as well.
---@class FCanvasIcon2D
---@field U number @UV coords
---@field V number
---@field UL number
---@field VL number
FCanvasIcon2D = {}


---@class FWeaponCrossHairIconData
---@field Icon FCanvasIcon2D
---@field Offset number
---@field IconOffset FVector2D
---@field bIconOffsetNotUseUIScale boolean
---@field Alpha number
---@field Scale number
---@field IconRotate number
---@field LogicRotate number
---@field IsSpreadEnable boolean
---@field SpreadScale number
---@field PCScale number
---@field BlendInOutRatePerSec number
FWeaponCrossHairIconData = {}


---@class FWeaponHitUIIconData
---@field bShowRealHitPoint boolean
---@field CheckHitInterval number
---@field CheckHitHighfrequencyInterval number
---@field CheckHitDistance number
---@field CheckHitIgnoreDistance number
---@field RayObjectTypes ULuaArrayHelper<ECollisionChannel>
---@field HitPointIconData FWeaponCrossHairIconData
FWeaponHitUIIconData = {}


---@class FHitPerformData
---@field IconList ULuaArrayHelper<FWeaponCrossHairIconData> @crosshair parts icons (left, top, right, bottom and center)
---@field DefaultSpread number
---@field SpreadMax number @continuous firing: max increment
---@field AddSpreadScale number
---@field SpreadDecreaseSpeed number @continuous firing: spread increment
---@field DefaultOffset number
---@field DefaultAlpha number
---@field AlphaDecreaseSpeed number
---@field IsHeadShot number
---@field HitBodyDrawColor FLinearColor
---@field HitHeadDrawColor FLinearColor
---@field HitToDeathDrawColor FLinearColor
---@field CurCrosshairSpread number
FHitPerformData = {}
