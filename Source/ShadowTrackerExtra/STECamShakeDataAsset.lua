---@meta

---@class ECamShakeType
---@field CamShakeType_FirstFire number @首发开火
---@field CamShakeType_LoopFire number @非首发开火
ECamShakeType = {}


---@class FCamShakeCoef
---@field PositionCoef FVector
---@field RotationCoef FVector
FCamShakeCoef = {}


---@class FCamShakePoseFix
---@field Stand FCamShakeCoef
---@field Crouch FCamShakeCoef
---@field Prone FCamShakeCoef
FCamShakePoseFix = {}


---@class FCamShakeMoveFix
---@field Still FCamShakeCoef
---@field Move FCamShakeCoef
FCamShakeMoveFix = {}


---@class FCamShakeShootTypeFix
---@field TPP FCamShakeCoef
---@field FPP FCamShakeCoef
---@field SightMap ULuaMapHelper<ESightType, FCamShakeCoef>
FCamShakeShootTypeFix = {}


---@class FCamShakeItem
---@field bEnabled boolean
---@field Weight number
---@field PositionCoef number
---@field RotationCoef number
---@field RandMin FCamShakeCoef
---@field RandMax FCamShakeCoef
---@field bResizeToShakeTime boolean
---@field bEnableOverlayPlay boolean
---@field BlendInTime number
---@field BlendOutTime number
FCamShakeItem = {}


---@class USTECamShakeDataAsset: UDataAsset
---@field bEnabled boolean
---@field bDisableCamShakeInAnim boolean
---@field bDisableCamShakeEffect boolean
---@field bUseShootIntervalForShakeTime boolean
---@field CamShakeTime number
---@field LoopFireValidStart number
---@field FirstFireItemList ULuaArrayHelper<FCamShakeItem>
---@field LoopFireItemList ULuaArrayHelper<FCamShakeItem>
---@field FixInterpSpeed number
---@field PoseFix FCamShakePoseFix
---@field MoveFix FCamShakeMoveFix
---@field ShootTypeFix FCamShakeShootTypeFix
local USTECamShakeDataAsset = {}
