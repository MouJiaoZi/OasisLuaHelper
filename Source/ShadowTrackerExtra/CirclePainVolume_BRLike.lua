---@meta

---@class FCirclePainDamageMagnifier
---@field bEnableDamageMagnifier boolean
---@field DamageMagnifierRange number
---@field DamageMagnifier number
FCirclePainDamageMagnifier = {}


---@class FCirclePainVolumeCirCleCfg
---@field DelayTime number
---@field SafeZoneAppearTime number
---@field BlueCirclePreWarning ULuaArrayHelper<number>
---@field LastTime number
---@field Pain number
---@field bUseCustomBluePoint boolean
---@field Bluepoint FVector2D
---@field BlueRadius number
---@field WhiteRadius number
---@field Alpha number
---@field bUseCustomWhitePoint boolean
---@field WhitePoint FVector2D
---@field bUseCustomRandomWhitePoint boolean
---@field RandomWhitePoint FVector2D
---@field RandomWhiteRadius number
---@field bUseContainActor boolean
---@field DestinyChance number
---@field CirclePainDamageMagnifier1 FCirclePainDamageMagnifier
---@field CirclePainDamageMagnifier2 FCirclePainDamageMagnifier
FCirclePainVolumeCirCleCfg = {}


---@class ACirclePainVolumeBRLike: ACirclePainVolume
---@field bStartOnEnterFight boolean
---@field CircleConfigs ULuaArrayHelper<FCirclePainVolumeCirCleCfg>
---@field DestinyThreshold number
---@field bCircleCenterInExtend boolean
---@field bUseCircleConfigsPain boolean
---@field CircleStatus ECircleStatus
---@field OriginBlueCircle FVector
---@field BlueCircle FVector
---@field WhiteCircle FVector
---@field RepCircleData FCircleData_BRLike
local ACirclePainVolumeBRLike = {}

function ACirclePainVolumeBRLike:StartCircle() end

---@param InContainActor AActor
function ACirclePainVolumeBRLike:SetContainActor(InContainActor) end

---@param Actor AActor
---@return boolean
function ACirclePainVolumeBRLike:IsInBlueCircle(Actor) end

---@param Actor AActor
---@return boolean
function ACirclePainVolumeBRLike:IsInWhiteCircle(Actor) end

function ACirclePainVolumeBRLike:OnGameEnterFight() end

function ACirclePainVolumeBRLike:PostMakeCircle() end

function ACirclePainVolumeBRLike:InitCircleAreaVolume() end

---@param PreWarningTime number
function ACirclePainVolumeBRLike:BroadcastCircleWarning(PreWarningTime) end

---@param PreWarningTime number
function ACirclePainVolumeBRLike:ShowCircleWarning(PreWarningTime) end

---@param PreWarningTime number
function ACirclePainVolumeBRLike:ShowCircleWarningInner(PreWarningTime) end

function ACirclePainVolumeBRLike:OnRep_CircleData() end

function ACirclePainVolumeBRLike:OnStartCircle() end

function ACirclePainVolumeBRLike:PostSetBlueCircle() end

function ACirclePainVolumeBRLike:PostSetWhiteCircle() end

---@return boolean
function ACirclePainVolumeBRLike:CanPostCircleData() end
