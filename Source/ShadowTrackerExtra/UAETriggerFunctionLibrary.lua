---@meta

---@class UUAETriggerParamLibrary: UUAETriggerParamFuncLib
local UUAETriggerParamLibrary = {}

---@param PlayerKey number
function UUAETriggerParamLibrary:RestartPlayer(PlayerKey) end

---@param ClassTag string
---@return string
function UUAETriggerParamLibrary:GetClassPathByTag(ClassTag) end

---@param ClassTag string
---@param TargetClassItem FTriggerClassItem
---@return boolean
function UUAETriggerParamLibrary:GetTriggerClassParam(ClassTag, TargetClassItem) end

---@param InKey1 string
---@param InKey2 string
---@return number
function UUAETriggerParamLibrary:GetIntValueBySplicedKey(InKey1, InKey2) end

---@param InKey string
---@return boolean
function UUAETriggerParamLibrary:IsKeyExist(InKey) end

---@param InValue number
---@return string
function UUAETriggerParamLibrary:ConvertIntToString(InValue) end

---@param InValue string
---@return number
function UUAETriggerParamLibrary:ConvertStringToUint(InValue) end

---@param InValue number
---@return string
function UUAETriggerParamLibrary:ConvertFloatToString(InValue) end

---@param Value1 number
---@param Value2 number
---@return number
function UUAETriggerParamLibrary:IncreaseInt(Value1, Value2) end

---@param Min number
---@param Max number
---@return number
function UUAETriggerParamLibrary:RandomInRange(Min, Max) end

---@param TargetTimeStamp string
---@return number
function UUAETriggerParamLibrary:GetDifferenceFromCurrentTimeStamp(TargetTimeStamp) end

---@return FVector
function UUAETriggerParamLibrary:GetControlledPawnLocation() end

function UUAETriggerParamLibrary:GetAllTeamatesLocations() end

---@param ParamName string
---@param Value number
function UUAETriggerParamLibrary:Int32Assign(ParamName, Value) end

---@param ParamName string
---@param Value number
function UUAETriggerParamLibrary:FloatAssign(ParamName, Value) end

---@param ParamName string
---@param Value string
function UUAETriggerParamLibrary:StringAssign(ParamName, Value) end


---@class UUAETriggerEventLibrary: UUAETriggerEventFuncLib
local UUAETriggerEventLibrary = {}

---@param SpawnedActor AActor
function UUAETriggerEventLibrary:EventFunc_SpawnActor(SpawnedActor) end

---@param SpawnClassID number
---@param SpawnGroupID number
---@param SpawnLoc FVector
---@param SpawnRange number
---@param MakerName string
---@param SpawnType number
---@param Owner AActor
---@param BornType number
---@param SpawnRot FVector
function UUAETriggerEventLibrary:EventFunc_PawnGenerate(SpawnClassID, SpawnGroupID, SpawnLoc, SpawnRange, MakerName, SpawnType, Owner, BornType, SpawnRot) end

---@param TimeToWait number
---@param BaseTime number
function UUAETriggerEventLibrary:EventFunc_ShrinkStartTimer(TimeToWait, BaseTime) end

---@param ShrinkTime number
---@param BaseTime number
function UUAETriggerEventLibrary:EventFunc_ShrinkCircle(ShrinkTime, BaseTime) end

---@param TimeToWait number
---@param BaseTime number
function UUAETriggerEventLibrary:EventFunc_ShrinkCircleTimer(TimeToWait, BaseTime) end

---@param TerminatorTag string
function UUAETriggerEventLibrary:EventFunc_TerminateShrinkCircle(TerminatorTag) end

---@param ClassTag string
---@param TargetLocation FVector
---@param ExtraInfoTag string
function UUAETriggerEventLibrary:EventFunc_SpawnActorAtLocation(ClassTag, TargetLocation, ExtraInfoTag) end
