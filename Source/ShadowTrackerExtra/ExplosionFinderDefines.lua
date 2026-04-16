---@meta

---@class FExplosionFinderParams
---@field Origin FVector
---@field Direction FVector
---@field RangeScale number
---@field EffectRangeScale number
---@field EffectScale number
---@field IgnoreActors ULuaArrayHelper<AActor>
---@field IgnoreComponents ULuaArrayHelper<UPrimitiveComponent>
---@field AdditionalParams ULuaArrayHelper<FUAEBlackboardParameter>
FExplosionFinderParams = {}


---@class UExplosionFinderParamsFunctionLibrary: UBlueprintFunctionLibrary
local UExplosionFinderParamsFunctionLibrary = {}

---@param Origin FVector
---@param Direction FVector
---@param Context UObject
---@param Causer AActor
---@param Instigator AController
---@param RangeScale number
---@param EffectRangeScale number
---@param EffectScale number
---@param IgnoredActors ULuaArrayHelper<AActor>
---@param IgnoredComponents ULuaArrayHelper<UPrimitiveComponent>
---@param AdditionalParams ULuaArrayHelper<FUAEBlackboardParameter>
---@return FExplosionFinderParams
function UExplosionFinderParamsFunctionLibrary:MakeFindParams(Origin, Direction, Context, Causer, Instigator, RangeScale, EffectRangeScale, EffectScale, IgnoredActors, IgnoredComponents, AdditionalParams) end

---@param FindParams FExplosionFinderParams
---@param Origin FVector
---@param Direction FVector
---@param Causer AActor
---@param Instigator AController
---@param RangeScale number
---@param EffectRangeScale number
---@param EffectScale number
---@param IgnoredActors ULuaArrayHelper<AActor>
---@param IgnoredComponents ULuaArrayHelper<UPrimitiveComponent>
---@param AdditionalParams ULuaArrayHelper<FUAEBlackboardParameter>
function UExplosionFinderParamsFunctionLibrary:BreakFindParams(FindParams, Origin, Direction, Causer, Instigator, RangeScale, EffectRangeScale, EffectScale, IgnoredActors, IgnoredComponents, AdditionalParams) end
