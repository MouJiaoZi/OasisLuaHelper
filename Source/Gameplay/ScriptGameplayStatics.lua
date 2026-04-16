---@meta

---@class FPlayerAccountInfo
---@field UID number
---@field PlayerName string
---@field TeamID number
---@field Gender number
---@field PlatformGender number
---@field PlayerLevel number
---@field SegmentLevel number
---@field IconURL string
FPlayerAccountInfo = {}


---@class FPlayerBattleInfo
---@field Kills number
---@field Assists number
FPlayerBattleInfo = {}


---@class FSimpleItemData
---@field ItemID number
---@field InstanceID number
---@field Count number
---@field ItemType number
---@field ItemSubType number
---@field IsAvatar boolean
FSimpleItemData = {}


---@class UScriptGameplayStatics: UBlueprintFunctionLibrary
local UScriptGameplayStatics = {}

---@param Actor AActor
---@param ComponentClass UClass
function UScriptGameplayStatics:FindComponents(Actor, ComponentClass) end

---@param WorldContextObject UObject
---@param ActorClass UClass
function UScriptGameplayStatics:GetActorsOfClass(WorldContextObject, ActorClass) end

---@param WorldContextObject UObject
function UScriptGameplayStatics:GetPlayerControllers(WorldContextObject) end

---@return number
function UScriptGameplayStatics:GetRandomAIPlayerKey() end

---@param SrcActor AActor
---@param DstActor AActor
---@param TraceZOffset number
---@param doReturnCheck boolean
---@return boolean
function UScriptGameplayStatics:IsTargetVisibility(SrcActor, DstActor, TraceZOffset, doReturnCheck) end

---@return string
function UScriptGameplayStatics:GetDateTimeString() end

---@return string
function UScriptGameplayStatics:GetDateTimeFrameString() end

---@param WorldContextObject UObject
---@param PlayerKey number
---@param PlayerType string
---@return FGameModePlayerParams
function UScriptGameplayStatics:GetPlayerParams(WorldContextObject, PlayerKey, PlayerType) end

---@param WorldContextObject UObject
---@param PlayerKey number
---@return FPlayerAccountInfo
function UScriptGameplayStatics:GetPlayerAccountInfo(WorldContextObject, PlayerKey) end

---@param WorldContextObject UObject
---@param PlayerKey number
---@return FPlayerBattleInfo
function UScriptGameplayStatics:GetPlayerBattleInfo(WorldContextObject, PlayerKey) end

---@param WorldContextObject UObject
function UScriptGameplayStatics:GetAllPlayerPawn(WorldContextObject) end

---@param BackPackComp UBackpackComponent
function UScriptGameplayStatics:UGCGetAllItemData(BackPackComp) end

---@param ErrMsg string
function UScriptGameplayStatics:LogFatal(ErrMsg) end

---@return boolean
function UScriptGameplayStatics:IsWindowOB() end

---@param WorldContextObject UObject
---@return number
function UScriptGameplayStatics:GetWorldTimeSeconds(WorldContextObject) end

---@param Itembject UObject
---@param ID number
---@param VariableName string
---@return boolean
function UScriptGameplayStatics:ModifyItemAttributeValueByIDIP(Itembject, ID, VariableName) end

---@param Itembject UObject
---@param ID number
---@param VariableName string
---@param OriginValue number
---@return number
function UScriptGameplayStatics:GetItemAttributeValueAsIntByIDIP(Itembject, ID, VariableName, OriginValue) end

---@param Itembject UObject
---@param ID number
---@param VariableName string
---@param OriginValue number
---@return number
function UScriptGameplayStatics:GetItemAttributeValueAsFloatByIDIP(Itembject, ID, VariableName, OriginValue) end

---@param Itembject UObject
---@param ID number
---@param VariableName string
---@param OriginValue string
---@return string
function UScriptGameplayStatics:GetItemAttributeValueAsStringByIDIP(Itembject, ID, VariableName, OriginValue) end

---@param Itembject UObject
---@param ID number
---@param VariableName string
---@param OriginValue boolean
---@return boolean
function UScriptGameplayStatics:GetItemAttributeValueAsBoolByIDIP(Itembject, ID, VariableName, OriginValue) end

---@param ItemObject UObject
---@param ID number
---@param VariableName string
---@param RepObj UObject
---@return boolean
function UScriptGameplayStatics:ModifyItemAttributeValueByIDIPLua(ItemObject, ID, VariableName, RepObj) end

---@param WorldContextObject UObject
---@param AssetObject UObject
---@param ID number
---@param VariableName string
---@param RepObj UObject
---@return boolean
function UScriptGameplayStatics:ModifyItemAttributeValueByIDIPWithRefLua(WorldContextObject, AssetObject, ID, VariableName, RepObj) end

---@param WorldContextObject UObject
---@param buttonType number
---@param reason number
---@param ext_arg1 string
---@param ext_arg2 string
---@return boolean
function UScriptGameplayStatics:ClientSendBAReport(WorldContextObject, buttonType, reason, ext_arg1, ext_arg2) end

---@param WorldContextObject UObject
---@param buttonType EOBReportReason_BP
---@param reason number
---@param ext_arg1 string
---@param ext_arg2 string
---@return boolean
function UScriptGameplayStatics:BP_ClientSendBAReport(WorldContextObject, buttonType, reason, ext_arg1, ext_arg2) end
