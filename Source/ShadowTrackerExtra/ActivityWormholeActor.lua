---@meta

---@class FWormholeStateConfig
---@field StateTime number
---@field bMove boolean
---@field bSimulateUpdown boolean
---@field SimulateUpdownDelta number
---@field SimulateUpdownOffsetMax number
FWormholeStateConfig = {}


---@class AActivityWormholeActor: AActivityBaseActor
---@field EndLifeSpan number
---@field WormholeBoxLocRadio number
---@field WormholeStateConfig ULuaMapHelper<string, FWormholeStateConfig>
---@field CanOpenParachuteHeight number
---@field ForceOpenParachuteHeight number
---@field CloseParachuteHeight number
---@field CurrentStateIndex number
---@field CurrentStateTime number
---@field CurrentTime number
---@field CurrentTotalTime number
---@field FreeFlyJoystickSensitivity number
---@field FreeFlyForwardMaxSpeed number
---@field FreeFlySideMaxSpeed number
---@field DisableStateList ULuaArrayHelper<EPawnState>
---@field WormholePlayerList ULuaArrayHelper<ASTExtraPlayerCharacter>
---@field bWormholeFlyingStart boolean
---@field FlyEndLocationPlayerOffset number
---@field WormholeEndLocRadio number
---@field WormholeEndLocZOffset number
---@field ParachuteJumpRadius number
---@field ParachuteJumpPlayerOffset number
---@field ParachuteJumpOffsetZ number
local AActivityWormholeActor = {}

---@param InPlayerList ULuaArrayHelper<ASTExtraPlayerCharacter>
function AActivityWormholeActor:InitWormholePlayer(InPlayerList) end

---@param WormholeBoxLoc FVector
---@param PlayerCount number
function AActivityWormholeActor:SpawnWormholeBox(WormholeBoxLoc, PlayerCount) end

function AActivityWormholeActor:StartFreeFlying() end

function AActivityWormholeActor:OnRep_bWormholeFlyingStart() end

---@param bFlyingStart boolean
function AActivityWormholeActor:WormholeFlyingStateChange(bFlyingStart) end
