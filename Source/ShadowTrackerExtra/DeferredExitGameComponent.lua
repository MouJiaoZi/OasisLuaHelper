---@meta

---@class FDeferredExitGameInfo
---@field bHasFindGameTerminator boolean
---@field GameTerminatorLoc FVector
---@field GameTerminatorTeam number
FDeferredExitGameInfo = {}


---@class UDeferredExitGameComponent: UGameModeBaseComponent
---@field OverridePlaneRouteData FGameModeParam
---@field DeferredExitGameInfo FDeferredExitGameInfo
local UDeferredExitGameComponent = {}

---@param InDeferredExitGameInfo FDeferredExitGameInfo
function UDeferredExitGameComponent:SetDeferredExitingGameInfo(InDeferredExitGameInfo) end

function UDeferredExitGameComponent:RespawnTeammateWhenDeferredExitingGame() end

---@param TGameState ASTExtraGameStateBase
---@param InPlayerstate AUAEPlayerState
---@param InPlayerCharacter ASTExtraBaseCharacter
function UDeferredExitGameComponent:TryFillDeferredInfo(TGameState, InPlayerstate, InPlayerCharacter) end

function UDeferredExitGameComponent:ResetPlaneRouteData() end
