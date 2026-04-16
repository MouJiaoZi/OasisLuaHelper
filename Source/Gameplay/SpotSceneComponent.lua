---@meta

---@class FSpotCookSpreadParam
---@field SpreadSpotNumMin number
---@field SpreadSpotNumMax number
---@field bDivideIntoEqualParts boolean
---@field SpreadRadiusMin number
---@field SpreadRadiusMax number
---@field bTraceGroundHeight boolean
---@field TraceEndOffset number
---@field TraceBeginOffset number
---@field bTraceGroundNormal boolean
---@field bIncludeSelf boolean
FSpotCookSpreadParam = {}


---@class FSpotCookSpreadOutData
FSpotCookSpreadOutData = {}


---@class USpotSceneComponent: UItemSceneComponent
---@field SpotType ESpotType
---@field HalfHeight number
---@field SpotProbability number
---@field WorldCompositionID number
---@field bRepeatGenerateItem boolean
---@field bIsSpotValid boolean
---@field LineOffsetZ number
local USpotSceneComponent = {}

---@return boolean
function USpotSceneComponent:GenerateSpot() end

---@param Valid boolean
function USpotSceneComponent:SetSpotValid(Valid) end

---@param WorldContextObject UObject
---@param Start FVector
---@param End FVector
---@param bTraceComplex boolean
---@param ActorsToIgnore ULuaArrayHelper<AActor>
---@param OutHit FHitResult
---@param bIgnoreSelf boolean
---@return boolean
function USpotSceneComponent:LineTraceSingle(WorldContextObject, Start, End, bTraceComplex, ActorsToIgnore, OutHit, bIgnoreSelf) end
