---@meta

---@class USTExtraBusinessFunctionLibrary: UBlueprintFunctionLibrary
local USTExtraBusinessFunctionLibrary = {}

---@param WorldContextObject UObject
---@param Location FVector
---@param CreateAirplaneParam FCreateAirplaneParam
---@return boolean
function USTExtraBusinessFunctionLibrary:CreateAirlineForPlayers(WorldContextObject, Location, CreateAirplaneParam) end

---@param WorldContextObject UObject
---@param Location FVector
---@param CreateAirplaneParam FCreateAirplaneParam
---@param bResetPlayerAvatar boolean
---@return boolean
function USTExtraBusinessFunctionLibrary:CreateAirlineForPlayersV2(WorldContextObject, Location, CreateAirplaneParam, bResetPlayerAvatar) end

---@param WorldContextObject UObject
---@param StartLocation FVector
---@param CreateAirplaneParam FCreateAirplaneParam
---@param bResetPlayerAvatar boolean
---@return boolean
function USTExtraBusinessFunctionLibrary:CreateAirlineForPlayersByStartLoc(WorldContextObject, StartLocation, CreateAirplaneParam, bResetPlayerAvatar) end

---@param WorldContextObject UObject
---@param PlaneParam FCreateAirplaneParam
---@param PlayerController ASTExtraPlayerController
---@param CurPlaneData FAirplaneData
function USTExtraBusinessFunctionLibrary:SetSinglePlayerRevival(WorldContextObject, PlaneParam, PlayerController, CurPlaneData) end

---@param WorldContextObject UObject
---@param PlaneParam FCreateAirplaneParam
---@param AirplaneControllerMap ULuaMapHelper<APlayerController, AAirplaneCharacter>
---@param CurPlaneData FAirplaneData
function USTExtraBusinessFunctionLibrary:SetPlayersRevival(WorldContextObject, PlaneParam, AirplaneControllerMap, CurPlaneData) end

---@param RevivalBackbackTotalWeight number
---@param RevivalBackbackCfgs ULuaArrayHelper<FRevivalBackpackParam>
function USTExtraBusinessFunctionLibrary:InitRevivalBackPack(RevivalBackbackTotalWeight, RevivalBackbackCfgs) end

---@param PlayerControllersMap ULuaMapHelper<APlayerController, AAirplaneCharacter>
---@param RevivalBackbackCfgs ULuaArrayHelper<FRevivalBackpackParam>
---@param RevivalBackbackTotalWeight number
---@param SpecificIndex number
function USTExtraBusinessFunctionLibrary:GenerateBackPack(PlayerControllersMap, RevivalBackbackCfgs, RevivalBackbackTotalWeight, SpecificIndex) end

---@param PlayerController ASTExtraPlayerController
---@param RevivalBackbackCfgs ULuaArrayHelper<FRevivalBackpackParam>
---@param RevivalBackbackTotalWeight number
---@param SpecificIndex number
function USTExtraBusinessFunctionLibrary:GenerateSinglePlayerBackPack(PlayerController, RevivalBackbackCfgs, RevivalBackbackTotalWeight, SpecificIndex) end

---@param RevivalBackbackCfgs ULuaArrayHelper<FRevivalBackpackParam>
---@param RevivalBackbackTotalWeight number
---@return number
function USTExtraBusinessFunctionLibrary:RandomBackPack(RevivalBackbackCfgs, RevivalBackbackTotalWeight) end

---@param WorldContextObject UObject
---@param PlayerKey number
---@return boolean
function USTExtraBusinessFunctionLibrary:EventFunc_PlayerEscape(WorldContextObject, PlayerKey) end

---@param WorldContextObject UObject
---@param PlayerKey number
---@return boolean
function USTExtraBusinessFunctionLibrary:EventFunc_PlayerFailed(WorldContextObject, PlayerKey) end

---@param WorldContextObject UObject
---@param PlayerKey number
---@param KillerKey number
---@param RealKillerKey number
---@return boolean
function USTExtraBusinessFunctionLibrary:EventFunc_PlayerKilled(WorldContextObject, PlayerKey, KillerKey, RealKillerKey) end

---@param WorldContextObject UObject
---@param PlayerKey number
---@param bIsWinner boolean
---@return boolean
function USTExtraBusinessFunctionLibrary:EventFunc_AddDynamicRank(WorldContextObject, PlayerKey, bIsWinner) end

---@param WorldContextObject UObject
---@param PlayerKey number
---@return boolean
function USTExtraBusinessFunctionLibrary:EventFunc_RemoveDynamicRank(WorldContextObject, PlayerKey) end

---@param WorldContextObject UObject
---@param TeamID number
---@return boolean
function USTExtraBusinessFunctionLibrary:EventFunc_TeamTerminated(WorldContextObject, TeamID) end

---@param WorldContextObject UObject
---@param PlayerKey number
---@param KillerKey number
---@return boolean
function USTExtraBusinessFunctionLibrary:EventFunc_EnterRevival(WorldContextObject, PlayerKey, KillerKey) end

---@param WorldContextObject UObject
---@param PlayerKey number
---@param SaviorKey number
---@return boolean
function USTExtraBusinessFunctionLibrary:EventFunc_LeaveRevival(WorldContextObject, PlayerKey, SaviorKey) end

---@param WorldContextObject UObject
---@param TeamID number
---@return boolean
function USTExtraBusinessFunctionLibrary:EventFunc_TeamBattleResult(WorldContextObject, TeamID) end

---@param WorldContextObject UObject
---@param TeamIDList ULuaArrayHelper<number>
---@return boolean
function USTExtraBusinessFunctionLibrary:EventFunc_TeamBattleResultBatch(WorldContextObject, TeamIDList) end

---@param WorldContextObject UObject
---@return boolean
function USTExtraBusinessFunctionLibrary:EventFunc_FinishMatch(WorldContextObject) end

---@param WorldContextObject UObject
---@param PlayerKeyList ULuaArrayHelper<number>
---@param Location FVector
---@param RevivalBackbackCfgs ULuaArrayHelper<FRevivalBackpackParam>
---@param CreateAirplaneParam FCreateAirplaneParam
---@param SpecificIndex number
---@return boolean
function USTExtraBusinessFunctionLibrary:SpawnAirplane(WorldContextObject, PlayerKeyList, Location, RevivalBackbackCfgs, CreateAirplaneParam, SpecificIndex) end
