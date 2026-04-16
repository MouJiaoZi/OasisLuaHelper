---@meta

---@class EAutoLockVisibilityLocation
---@field EAutoLockVisibilityType_ActorLocation number @Actor位置
---@field EAutoLockVisibilityType_CharacterHeadLocation number @Character头部
---@field EAutoLockVisibilityType_CharacterMidLocation number @Character位置和头部中间
EAutoLockVisibilityLocation = {}


---@class EAutoLockVisibilityType
---@field EAutoLockVisibilityType_OR number
---@field EAutoLockVisibilityType_AND number
EAutoLockVisibilityType = {}


---@class EAutoLockSortMethord
---@field EAutoLockSortMethord_None number
---@field EAutoLockSortMethord_Distance number
---@field EAutoLockSortMethord_Degree number
EAutoLockSortMethord = {}


---@class FActorQueryConfig
---@field ConfigMaxDegrees number
---@field ConfigMinDistance number
---@field ConfigMaxDistance number
---@field bFindByActorClassDirectly boolean
---@field OverlapChannelList ULuaArrayHelper<ECollisionChannel>
---@field AutoLockSortMethord EAutoLockSortMethord
---@field bIgnoreFreeCamera boolean
---@field bDoVisibiityCheck boolean
---@field AutoLockVisibilityLocationList ULuaArrayHelper<EAutoLockVisibilityLocation>
---@field BlockChannel_Visibility ECollisionChannel
---@field AutoLockVisibilityType EAutoLockVisibilityType
---@field bLockInSmokeEffect boolean
---@field InvalidPawnState ULuaArrayHelper<EPawnState>
FActorQueryConfig = {}


---@class FActorQueryParams
---@field IgnoreActors ULuaArrayHelper<AActor>
FActorQueryParams = {}


---@class FActorQueryResult
---@field Degree number
---@field Distance number
FActorQueryResult = {}


---@class FAutoLockActorFinderWrapper
FAutoLockActorFinderWrapper = {}


---@class UAutoLockActorFinder: UObject
---@field QueryConfig FActorQueryConfig
local UAutoLockActorFinder = {}

---@param OwnerPawn ASTExtraCharacter
---@param QueryParams FActorQueryParams
---@param Result FActorQueryResult
---@return boolean
function UAutoLockActorFinder:IsResultValid(OwnerPawn, QueryParams, Result) end

---@param OwnerPawn ASTExtraCharacter
---@param OriginLocation FVector
---@param OriginRotation FRotator
---@param BoxExtend FVector
---@param QueryParams FActorQueryParams
function UAutoLockActorFinder:QueryValidResultWithParams(OwnerPawn, OriginLocation, OriginRotation, BoxExtend, QueryParams) end
