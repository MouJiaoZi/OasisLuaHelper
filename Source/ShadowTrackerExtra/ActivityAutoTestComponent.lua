---@meta

---@class UActivityAutoTestComponent: UActorComponent
---@field TestingPCKey ULuaArrayHelper<number>
---@field ExampleClassConfigs ULuaArrayHelper<FAT_TestExampleConfig>
---@field ActivityList ULuaMapHelper<number, FAT_RegionalObject>
---@field AreaListConfig ULuaArrayHelper<FAT_RegionalDivision>
---@field AreaListForEditorTest ULuaArrayHelper<FAT_RegionalDivision>
---@field AreaList ULuaArrayHelper<FAT_RegionalDivision>
---@field PCManagerType EAT_PCManagerType
---@field TeleportPcHeight number
---@field RegionalPCList ULuaMapHelper<number, FAT_RegionalPC>
---@field PC2AreaNumber ULuaMapHelper<APlayerController, number>
local UActivityAutoTestComponent = {}

---@param ExampleID number
---@param SponsorPC APlayerController
function UActivityAutoTestComponent:RequestTest(ExampleID, SponsorPC) end

---@param ExampleClassPath string
---@param SponsorPC APlayerController
---@param TestParams string
function UActivityAutoTestComponent:RequestTestByClassPath(ExampleClassPath, SponsorPC, TestParams) end

---@param SponsorPC APlayerController
function UActivityAutoTestComponent:OverTest(SponsorPC) end

---@param PlayerController ASTExtraPlayerController
---@param Location FVector
---@param DisableFallingDamageTime number
function UActivityAutoTestComponent:NoHurtTeleportCharacter(PlayerController, Location, DisableFallingDamageTime) end

---@param InAreaList ULuaArrayHelper<FAT_RegionalDivision>
function UActivityAutoTestComponent:CollectActivityWithRegional(InAreaList) end

---@param Activity AActor
---@param AreaNumber number
function UActivityAutoTestComponent:ReturnActivity(Activity, AreaNumber) end

---@param InAreaList ULuaArrayHelper<FAT_RegionalDivision>
function UActivityAutoTestComponent:PlanningControllerRegional(InAreaList) end

---@param InPC APlayerController
---@return number
function UActivityAutoTestComponent:RequestAreaIndex(InPC) end

---@param InPC APlayerController
function UActivityAutoTestComponent:ReturnAreaIndex(InPC) end

---@param InPC APlayerController
---@return number
function UActivityAutoTestComponent:GetAreaIndex(InPC) end

---@param AreaNumber number
---@param Count number
function UActivityAutoTestComponent:RequestIdlePC(AreaNumber, Count) end

---@param InPC APlayerController
---@return number
function UActivityAutoTestComponent:RequestUseSpecialPC(InPC) end

---@param AreaNumber number
---@param returnPCs ULuaArrayHelper<number>
function UActivityAutoTestComponent:ReturnPC(AreaNumber, returnPCs) end

---@param NewPC APlayerController
function UActivityAutoTestComponent:OnAddNewPC(NewPC) end

---@param NewPC APlayerController
function UActivityAutoTestComponent:OnRemoveNewPC(NewPC) end
