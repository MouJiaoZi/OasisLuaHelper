---@meta

---@class FWingManInfoWrapper
---@field CharmValue number
---@field PlayerKey number
---@field PlayerKeyString string
---@field WingManInfo FWingManInfo
---@field PassengerPlayerKeys ULuaArrayHelper<number>
---@field PassengerPlayerKeysString ULuaArrayHelper<string>
FWingManInfoWrapper = {}


---@class FWingManBoardInfo
---@field CharmValue number
---@field OwnerName string
---@field TeamID number
---@field CurrentWingManID number
---@field bShowCharm boolean
FWingManBoardInfo = {}


---@class FWingManClientInfo
---@field WingInfos ULuaArrayHelper<FWingManBoardInfo>
---@field LargeAircraftID number
---@field OwnerName string
---@field TeamID number
---@field bShow boolean
FWingManClientInfo = {}


---@class FWingManInfoRep
---@field SeverStartWingPlanesTime number
---@field ClientPlayerWingInfos ULuaArrayHelper<FWingManInfoWrapper>
FWingManInfoRep = {}


---@class FWingPlaneCaller
---@field PlayerKey number
---@field EffectsIDs ULuaArrayHelper<number>
---@field EffectsFuleCount number
---@field EffectsFreeFuelCount number
FWingPlaneCaller = {}


---@class AWingPlanePlayersInfo: AInfo
---@field WingInfos FWingManInfoRep
---@field WingPlaneCallerInfos ULuaArrayHelper<FWingPlaneCaller>
local AWingPlanePlayersInfo = {}

function AWingPlanePlayersInfo:OnRep_WingInfo() end

function AWingPlanePlayersInfo:WingPlaneCallerInfosClientLua() end

function AWingPlanePlayersInfo:OnRep_WingPlaneCallerInfos() end

---@return FWingPlaneCaller
function AWingPlanePlayersInfo:GetMyWingPlaneEffects() end

---@param ThePC ASTExtraPlayerController
---@param EffectID number
function AWingPlanePlayersInfo:CallWingPlan(ThePC, EffectID) end

---@param PlayerKey number
---@param EffectID number
function AWingPlanePlayersInfo:NetMulticast_NotifyWingPlaneCalled(PlayerKey, EffectID) end
