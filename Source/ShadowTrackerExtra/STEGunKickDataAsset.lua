---@meta

---@class EGunKickType
---@field GunKickType_StartFire number @开始开火
---@field GunKickType_Fire_Loop number @开火时循环
---@field GunKickType_Single_Shot number @每发开火
---@field GunKickType_StopFire number @结束开火
EGunKickType = {}


---@class FGunKickItem
---@field bEnabled boolean
---@field GunKickType EGunKickType
---@field Duration number
---@field PositionCoef number
---@field RotationCoef number
---@field BlendInTime number
---@field BlendInOption EAlphaBlendOption
---@field BlendOutTime number
---@field BlendOutOption EAlphaBlendOption
FGunKickItem = {}


---@class FGunKickRandItem
---@field PositionRatio FVector
---@field RotationRatio FVector
FGunKickRandItem = {}


---@class USTEGunKickDataAsset: UDataAsset
---@field bEnabled boolean
---@field bRotateByCameraInADS boolean
---@field MinStopTime number
---@field SingleShotCurveValidStart number
---@field EaseOutPower number
---@field RandMinLeft FGunKickRandItem
---@field RandMinRight FGunKickRandItem
---@field RandMaxLeft FGunKickRandItem
---@field RandMaxRight FGunKickRandItem
---@field SightMap ULuaMapHelper<ESightType, FGunKickRandItem>
---@field GunKickItemList ULuaArrayHelper<FGunKickItem>
local USTEGunKickDataAsset = {}
