---@meta

---@class FAreaParam
---@field AreaAnchors ULuaArrayHelper<FVector>
---@field BattleTextID number
FAreaParam = {}


---@class UBaseTaskComponent: UActorComponent
---@field OwningPlayerName string @The owning player name
---@field TaskTriggerObjects ULuaArrayHelper<UUAETriggerObject> @The Array of task trigger objects
---@field TriggerEvents ULuaMapHelper<string, UTriggerEvent> @The map of task events
---@field AreaParamCache ULuaMapHelper<number, FAreaParam>
---@field LastAreaID number
local UBaseTaskComponent = {}

---Add event to task
---@param TriggerObj UUAETriggerObject
---@param Event UClass
---@param TaskEventType ETaskEventType
function UBaseTaskComponent:AddEventToTrigger(TriggerObj, Event, TaskEventType) end

---Add event to local map and register task trigger to event, so event can know which task need to notify
---@param RegisterEventClass UClass
---@param TriggerListener UUAETriggerObject
---@param TaskEventType ETaskEventType
---@return boolean
function UBaseTaskComponent:RegisterEvent(RegisterEventClass, TriggerListener, TaskEventType) end

---Get resource path of specified task class
---@param TaskType ETaskType
---@param TaskUID number
---@return string
function UBaseTaskComponent:GetTaskClassPath(TaskType, TaskUID) end

---Get task parameters from data table
---@param InTaskID number
---@param outMainConditionParamStr string
---@param outTaskProcess number
---@return boolean
function UBaseTaskComponent:GetTaskParams(InTaskID, outMainConditionParamStr, outTaskProcess) end

---Get owning player name
---@return string
function UBaseTaskComponent:GetOwningPlayerName() end

---Create task object
---@param TaskType ETaskType
---@param TaskID number
---@param Process number
---@param Ext_Info string
---@return boolean
function UBaseTaskComponent:AddTrigger(TaskType, TaskID, Process, Ext_Info) end

---Notify tasks to activate specified condition
---@param InTaskConditionType ETaskConditionType
---@param InDataSource UVariableSet
function UBaseTaskComponent:ActiveCondition(InTaskConditionType, InDataSource) end

---Notify tasks to deactivate specified condition
---@param InTaskConditionType ETaskConditionType
---@param InDataSource UVariableSet
function UBaseTaskComponent:DeactiveCondition(InTaskConditionType, InDataSource) end

---Whether a task trigger is active
---@param InTaskID number
---@return boolean
function UBaseTaskComponent:IsTriggerActive(InTaskID) end

---Whether InItemID is a special pick item
---@param InItemID number
---@return boolean
function UBaseTaskComponent:IsSpecialPickItem(InItemID) end

---Fire task event with params
---@param TaskEventType ETaskEventType
---@param Param number
---@param ExtMsg string
function UBaseTaskComponent:FireEvent(TaskEventType, Param, ExtMsg) end

---Report original process when task is initialized
---@param TaskType ETaskType
---@param TaskID number
---@param Process number
function UBaseTaskComponent:ReportTaskAndSpecialCollection(TaskType, TaskID, Process) end

---BP_FUN: Read task data table in BP and return task sub type
---@param InTaskID number
---@return number
function UBaseTaskComponent:GetTaskSubTypeFromDataTable(InTaskID) end

---BP_FUN: Read LandLocType data table in BP and return land location id, such as roof
---@param InTargetName string
---@return number
function UBaseTaskComponent:GetLandLocIDFromDataTable(InTargetName) end

---BP_FUN: Read TaskArea data table in BP and return task area id, such as City_P
---@param InPlayerLocation FVector
---@return number
function UBaseTaskComponent:GetTaskAreaIDFromDataTable(InPlayerLocation) end

---BP_FUN: Read task data table in BP and return task parameters as FString
---@param InTaskID number
---@param outMainConditionParam string
---@param outTargetProcess number
---@return boolean
function UBaseTaskComponent:GetTaskParamsFromDataTable(InTaskID, outMainConditionParam, outTargetProcess) end

---BP_FUN: Check if specified location is in the area defined by area anchors
---@param PlayerLocation FVector
---@param outAreaAnchorsStr string
---@param InMapName string
---@param InTargetName string
---@param AreaID number
---@return boolean
function UBaseTaskComponent:IsInSpecifiedArea(PlayerLocation, outAreaAnchorsStr, InMapName, InTargetName, AreaID) end

---Get map name of PersistentLevel
---@return string
function UBaseTaskComponent:GetMapName() end

---Handle OnInitTaskData delegate and create common task object
---@param TaskID number
---@param Process number
---@param Ext_Info string
function UBaseTaskComponent:HandleInitTaskData(TaskID, Process, Ext_Info) end

---Handle OnInitCollectionData delegate and create pure collection task object
---@param ItemID number
---@param CurrentCount number
---@param TotalCount number
function UBaseTaskComponent:HandleInitCollectionData(ItemID, CurrentCount, TotalCount) end

---Handle OnPlayerDoEmote delegate and fire DoEmote event
---@param EmoteIndex number
function UBaseTaskComponent:HandlePlayerDoEmote(EmoteIndex) end

---Handle OnPlayerEnterArea delegate and fire EnterArea event
---@param AreaID number
function UBaseTaskComponent:HandlePlayerEnterArea(AreaID) end

---Handle OnPlayerKilling delegate and fire KillPlayer event
function UBaseTaskComponent:HandlePlayerKilling() end

---Handle OnPickupItem delegate and fire PickupItem event
---@param ItemID number
---@param Count number
---@param PC ASTExtraPlayerController
function UBaseTaskComponent:HandlePlayerPickupItem(ItemID, Count, PC) end

---Handle OnDropItem delegate and fire DropItem event
---@param ItemID number
---@param Count number
---@param PC ASTExtraPlayerController
function UBaseTaskComponent:HandlePlayerDropItem(ItemID, Count, PC) end

---Handle OnDeathBoxSpawned delegate
---@param SpawnTransform FTransform
function UBaseTaskComponent:HandleDeathBoxSpawned(SpawnTransform) end

---Handle OnTaskConditionActived delegate and return land loc type
---@param TargetName string
---@return number
function UBaseTaskComponent:RetrieveLandLocType(TargetName) end

---Handle OnTaskConditionActived delegate and return task area type
---@param PlayerLocation FVector
---@return number
function UBaseTaskComponent:RetrieveTaskAreaType(PlayerLocation) end

---@param PlayerLocation FVector
---@return number
function UBaseTaskComponent:FetchSpecifiedAreaIDByCache(PlayerLocation) end
