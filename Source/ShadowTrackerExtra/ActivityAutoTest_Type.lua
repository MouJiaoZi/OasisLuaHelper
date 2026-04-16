---@meta

---@class EAT_PCManagerType
---@field Base number @基础
---@field Regional number @区域
EAT_PCManagerType = {}


---@class FAT_TestExampleConfig
---@field ConfigID number
---@field ExampleClass string
FAT_TestExampleConfig = {}


---@class FAT_ActivityAction
---@field ActionID number
---@field KeyTime number
---@field PCIndexList ULuaArrayHelper<number>
FAT_ActivityAction = {}


---@class FAT_ActivityTestInfo
---@field ActivityClass string
---@field bNeedTeleport boolean
---@field TeleportOffset FVector
---@field NeedPC number
---@field ActionSequence ULuaArrayHelper<FAT_ActivityAction>
---@field AutoGenerateActionGap number
FAT_ActivityTestInfo = {}


---@class FAT_RegionalDivision
---@field AreaNumber number
---@field Center FVector
---@field Radius number
---@field AreaCapOfPlayer number
---@field AreaCapOfCircle number
FAT_RegionalDivision = {}


---@class FAT_Object
---@field ClassName string
---@field ATObjects ULuaMapHelper<UObject, boolean>
FAT_Object = {}


---@class FAT_RegionalObject
---@field AreaIndex number
---@field Class2Objects ULuaMapHelper<string, FAT_Object>
FAT_RegionalObject = {}


---@class FAT_ObjectPC
---@field PC UObject
---@field PCIndex number
---@field bUsed boolean
---@field Placement FVector
FAT_ObjectPC = {}


---@class FAT_RegionalPC
---@field AreaIndex number
---@field PCList ULuaArrayHelper<FAT_ObjectPC>
---@field IdleIndexes ULuaArrayHelper<number>
---@field OccupiedIndexes ULuaArrayHelper<number>
FAT_RegionalPC = {}


---@class UAT_ExampleBase: UPersistEffectBase
local UAT_ExampleBase = {}

---@param InAutoTestComp UActorComponent
function UAT_ExampleBase:SetAutoTestComp(InAutoTestComp) end

function UAT_ExampleBase:OnSetAutoTestComp() end


---@class UAT_ExampleNodeBase: UGameplayTask
local UAT_ExampleNodeBase = {}


---@class UControllerGetter: UObject
---@field ControllerList ULuaArrayHelper<APlayerController>
---@field PCToID ULuaMapHelper<APlayerController, number>
---@field IDToPC ULuaMapHelper<number, APlayerController>
local UControllerGetter = {}

---@param OutPC APlayerController
---@param InUseID number
---@return number
function UControllerGetter:RequsetPCWithUseID(OutPC, InUseID) end

---@param InUseID number
function UControllerGetter:ReturnPC(InUseID) end

---@param NewPC APlayerController
function UControllerGetter:OnAddNewPC(NewPC) end

---@param NewPC APlayerController
function UControllerGetter:OnRemoveNewPC(NewPC) end
