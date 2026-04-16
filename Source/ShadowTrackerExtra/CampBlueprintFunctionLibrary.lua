---@meta

---@class UCampBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local UCampBlueprintFunctionLibrary = {}

---@param WorldContextObject UObject
function UCampBlueprintFunctionLibrary:Client_GetSameCampCaptainPlayerKeys(WorldContextObject) end

---@param WorldContextObject UObject
---@return number
function UCampBlueprintFunctionLibrary:Client_GetCampType(WorldContextObject) end

---@param WorldContextObject UObject
---@return number
function UCampBlueprintFunctionLibrary:Client_GetCampID(WorldContextObject) end

---@param WorldContextObject UObject
---@param MyPlayerKey number
---@param PlayerKey number
---@return boolean
function UCampBlueprintFunctionLibrary:Client_IsInSameCampByPlayerKey(WorldContextObject, MyPlayerKey, PlayerKey) end

---@param WorldContextObject UObject
---@param MyUID string
---@param UID string
---@return boolean
function UCampBlueprintFunctionLibrary:Client_IsInSameCampByUID(WorldContextObject, MyUID, UID) end

---@param WorldContextObject UObject
---@param CampID number
---@return number
function UCampBlueprintFunctionLibrary:Client_CampSurvivePlayerNum(WorldContextObject, CampID) end

---@param WorldContextObject UObject
function UCampBlueprintFunctionLibrary:Client_SortCampPlayerDataList(WorldContextObject) end

---@param WorldContextObject UObject
---@param CampID number
function UCampBlueprintFunctionLibrary:Client_SortCampPlayerDataListWithCampID(WorldContextObject, CampID) end

---ds only
---@return number
function UCampBlueprintFunctionLibrary:DS_GetCampType() end

---@param WorldContextObject UObject
---@param PlayerKey number
---@return number
function UCampBlueprintFunctionLibrary:DS_GetCampIDByPlayerKey(WorldContextObject, PlayerKey) end

---@param PC ASTExtraPlayerController
---@return number
function UCampBlueprintFunctionLibrary:DS_GetCampIDByPC(PC) end

---@param Controller AController
---@return number
function UCampBlueprintFunctionLibrary:DS_GetCampIDByController(Controller) end

---@param MyPC ASTExtraPlayerController
---@param PC ASTExtraPlayerController
---@return boolean
function UCampBlueprintFunctionLibrary:DS_IsInSameCampByPC(MyPC, PC) end

---@param WorldContextObject UObject
---@param MyPlayerKey number
---@param PlayerKey number
---@return boolean
function UCampBlueprintFunctionLibrary:DS_IsInSameCampByPlayerKey(WorldContextObject, MyPlayerKey, PlayerKey) end

---@param WorldContextObject UObject
---@param MyPlayerKey number
---@param PlayerKey number
---@return boolean
function UCampBlueprintFunctionLibrary:IsInSameCampByPlayerKey(WorldContextObject, MyPlayerKey, PlayerKey) end

---@param KillerPlayerKey number
---@param KilledPlayerKey number
function UCampBlueprintFunctionLibrary:DS_UpdatePlayerKilled(KillerPlayerKey, KilledPlayerKey) end

---@param CampID number
---@param CampPlayerStateList ULuaArrayHelper<ASTExtraPlayerState>
function UCampBlueprintFunctionLibrary:DS_GetCampPlayerStateList(CampID, CampPlayerStateList) end

---@param CampID number
---@param CampPlayerStateList ULuaArrayHelper<ASTExtraPlayerState>
function UCampBlueprintFunctionLibrary:DS_GetOtherCampPlayerStateList(CampID, CampPlayerStateList) end

---@param CampID number
---@param PlayerKey number
---@return number
function UCampBlueprintFunctionLibrary:DS_GetOneCaptainRevivalTimes(CampID, PlayerKey) end
