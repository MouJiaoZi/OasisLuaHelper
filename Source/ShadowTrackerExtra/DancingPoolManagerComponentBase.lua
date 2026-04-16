---@meta

---@class FDPMPairData
---@field PlayerOne ASTExtraPlayerCharacter
---@field PlayerTwo ASTExtraPlayerCharacter
FDPMPairData = {}


---@class FDPMPairDataWrapper
FDPMPairDataWrapper = {}


---@class UDancingPoolManagerComponentBase: UActorComponent
---@field PreviousInBoundActors ULuaArrayHelper<AActor>
---@field OverlapComponentName string
---@field DancingState EPawnState
---@field bPrevHasAnyoneDancing boolean
---@field DancingPlayers ULuaArrayHelper<ASTExtraPlayerCharacter>
---@field Pairs ULuaArrayHelper<FDPMPairDataWrapper>
---@field RangeMap ULuaMapHelper<EPlayerPartyDanceState, number>
---@field bDebugDraw boolean
local UDancingPoolManagerComponentBase = {}

---@param bAnyoneDancing boolean
function UDancingPoolManagerComponentBase:OnStageChanged(bAnyoneDancing) end

function UDancingPoolManagerComponentBase:OnRep_PrevHasAnyoneDancing() end
