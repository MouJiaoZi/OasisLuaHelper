---@meta

---@class FAsianGameTrackPlayerComponent_AsianGameTracks
---@field AsianGameTracks ULuaSetHelper<UAsianGameTrackComponent>
FAsianGameTrackPlayerComponent_AsianGameTracks = {}


---@class UAsianGameTrackPlayerComponent: UActorComponent
---@field CharacterLocationTolerance number
---@field SetOfAsianGameTracks ULuaSetHelper<UAsianGameTrackComponent>
---@field STExtraPlayerControllerToLocations ULuaMapHelper<ASTExtraPlayerController, FVector>
---@field STExtraPlayerControllerToEnteredAsianGameTracks ULuaMapHelper<ASTExtraPlayerController, FAsianGameTrackPlayerComponent_AsianGameTracks>
---@field STExtraPlayerControllerToLastEnteredAsianGameTracks ULuaMapHelper<ASTExtraPlayerController, FAsianGameTrackPlayerComponent_AsianGameTracks>
---@field STExtraPlayerControllerToExitedAsianGameTracks ULuaMapHelper<ASTExtraPlayerController, FAsianGameTrackPlayerComponent_AsianGameTracks>
---@field bConsumingOrProducing number
---@field OnActorEnteredAsianGameTrackDynamicDelegate FOnActorEnteredAsianGameTrackDynamicDelegate
---@field OnActorExitedAsianGameTrackDynamicDelegate FOnActorExitedAsianGameTrackDynamicDelegate
local UAsianGameTrackPlayerComponent = {}

---@param Location FVector
function UAsianGameTrackPlayerComponent:GetAsianGameTracksContainsLocation(Location) end

---@param Track UAsianGameTrackComponent
---@param Actor AActor
function UAsianGameTrackPlayerComponent:OnAsianGameTrackActorEnteredAsianGameTrack(Track, Actor) end

---@param Track UAsianGameTrackComponent
---@param Actor AActor
function UAsianGameTrackPlayerComponent:OnAsianGameTrackActorExitedAsianGameTrack(Track, Actor) end

function UAsianGameTrackPlayerComponent:SetupAsianGameTracks() end

function UAsianGameTrackPlayerComponent:InvalidateCharacterInAsianGameTrack() end

function UAsianGameTrackPlayerComponent:BindPlayerLoginExit() end

function UAsianGameTrackPlayerComponent:UnbindPlayerLoginExit() end

function UAsianGameTrackPlayerComponent:HandlePlayerAlreadyLogin() end

---@param PlayerController APlayerController
function UAsianGameTrackPlayerComponent:OnPlayerLogin(PlayerController) end

---@param PlayerController APlayerController
function UAsianGameTrackPlayerComponent:OnPlayerExit(PlayerController) end
