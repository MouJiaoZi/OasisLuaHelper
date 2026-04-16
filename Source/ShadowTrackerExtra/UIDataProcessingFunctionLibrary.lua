---@meta

---@class FCompatableComsumableItemType
---@field BattleItemData FBattleItemData
---@field ConsumableItemType EConsumeItemType
---@field ItemPriority number
FCompatableComsumableItemType = {}


---@class FComparableGrenadeItemType
---@field BattleItemData FBattleItemData
---@field GrenadeItemID number
---@field ItemPriority number
FComparableGrenadeItemType = {}


---@class FComsumableItemSortData
---@field ItemID number
---@field EnumType number
---@field H1S1 number
---@field H1S2 number
---@field H1S3 number
---@field H1S4 number
---@field H1S5 number
---@field H2S1 number
---@field H2S2 number
---@field H2S3 number
---@field H2S4 number
---@field H2S5 number
---@field H3S1 number
---@field H3S2 number
---@field H3S3 number
---@field H3S4 number
---@field H3S5 number
---@field H4S1 number
---@field H4S2 number
---@field H4S3 number
---@field H4S4 number
---@field H4S5 number
---@field H5S1 number
---@field H5S2 number
---@field H5S3 number
---@field H5S4 number
---@field H5S5 number
---@field RemainingTimePriority number
FComsumableItemSortData = {}


---@class UUIDataProcessingFunctionLibrary: UBlueprintFunctionLibrary
local UUIDataProcessingFunctionLibrary = {}

---@param Player ASTExtraPlayerCharacter
---@return boolean
function UUIDataProcessingFunctionLibrary:IsPlayerCanDoSprintOperation(Player) end

---@param AttrName string
---@param Character ASTExtraBaseCharacter
function UUIDataProcessingFunctionLibrary:HandleCharacterAttrChange(AttrName, Character) end

---@param PC ASTExtraPlayerController
function UUIDataProcessingFunctionLibrary:UpdatePlayerHealthUI(PC) end

---@param PC ASTExtraPlayerController
function UUIDataProcessingFunctionLibrary:UpdatePlayerEnergyUI(PC) end

---@param CharaterPawn APawn
---@return number
function UUIDataProcessingFunctionLibrary:GetCharacterEnergyValue(CharaterPawn) end

---@param PC ASTExtraPlayerController
function UUIDataProcessingFunctionLibrary:UpdatePlayerPredictHealthUI(PC) end

---@param PC ASTExtraPlayerController
function UUIDataProcessingFunctionLibrary:UpdatePlayerDyingHealth(PC) end

---@param PC ASTExtraPlayerController
function UUIDataProcessingFunctionLibrary:UpdatePlayerBreathAmmount(PC) end

---@param widget UUAEUserWidget
---@return boolean
function UUIDataProcessingFunctionLibrary:BatteryRecommand_ByHpAndSignal(widget) end

---@param ConsumableArray ULuaArrayHelper<FCompatableComsumableItemType>
---@param IgnoreFirst boolean
---@param FirstItemType EConsumeItemType
---@param FirstItemID number
function UUIDataProcessingFunctionLibrary:SortConsumableItemArray(ConsumableArray, IgnoreFirst, FirstItemType, FirstItemID) end

---@param ConsumableArray ULuaArrayHelper<FCompatableComsumableItemType>
---@param IgnoreFirst boolean
---@param FirstItemType EConsumeItemType
---@param widget UUAEUserWidget
---@param FirstItemID number
function UUIDataProcessingFunctionLibrary:SortConsumableBatteryArray(ConsumableArray, IgnoreFirst, FirstItemType, widget, FirstItemID) end

---@param type number
---@param ConsumableArray ULuaArrayHelper<FCompatableComsumableItemType>
function UUIDataProcessingFunctionLibrary:GetConsumableArrayByType(type, ConsumableArray) end

---@param GPanel UPanelWidget
---@param BBorder UBorder
---@param Scale FVector2D
---@param Opacity number
---@param OffsetVector FVector2D
function UUIDataProcessingFunctionLibrary:SetUnitPosAndOpacityAndSize(GPanel, BBorder, Scale, Opacity, OffsetVector) end

---@param PanelWidget UPanelWidget
---@param Border UBorder
---@param Anchors FAnchors
---@param Scale FVector2D
---@param Opacity number
---@param Offset FVector2D
function UUIDataProcessingFunctionLibrary:SetUnitLayoutCustomData(PanelWidget, Border, Anchors, Scale, Opacity, Offset) end

---@param GrenadeArray ULuaArrayHelper<FComparableGrenadeItemType>
---@param PlayerCharacter ASTExtraBaseCharacter
---@param CurListFirstID FItemDefineID
function UUIDataProcessingFunctionLibrary:SortGrenadeItemArray(GrenadeArray, PlayerCharacter, CurListFirstID) end

---@return number
function UUIDataProcessingFunctionLibrary:GetCurPlatformType() end

---@param WorldContextObject UObject
---@return number
function UUIDataProcessingFunctionLibrary:GetServerWorldSecond(WorldContextObject) end

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@param HitAreaRadius number
---@return boolean
function UUIDataProcessingFunctionLibrary:IsHitPointValidInCircularHitTestPolicy(MyGeometry, MouseEvent, HitAreaRadius) end

---@param MyGeometry FGeometry
---@return FVector2D
function UUIDataProcessingFunctionLibrary:GetDrawSizeForGeometry(MyGeometry) end

---@param SimSignal number
---@param DeltaSec number
---@param DecreaseRate number
---@param SimulatingTime number
---@param SignalMax number
---@param CDRatio number
---@param CDText string
---@return number
function UUIDataProcessingFunctionLibrary:CalSignalCD(SimSignal, DeltaSec, DecreaseRate, SimulatingTime, SignalMax, CDRatio, CDText) end

---@param CurrRadio number
---@param TargetRadio number
---@param deltaRadio number
---@param change boolean
---@return number
function UUIDataProcessingFunctionLibrary:GetCurrToTargetValue(CurrRadio, TargetRadio, deltaRadio, change) end

---@param widget UUAEUserWidget
---@return boolean
function UUIDataProcessingFunctionLibrary:IsInCircle(widget) end

---@param PreSignal number
---@param CurrSignal number
---@param SignalMax number
---@param Radio number
---@return number
function UUIDataProcessingFunctionLibrary:GetTargetSignalRadio(PreSignal, CurrSignal, SignalMax, Radio) end

---@param PreSignal number
---@param CurrSignal number
---@param SingleChangeCostTime number
---@return number
function UUIDataProcessingFunctionLibrary:GetTargetSignalTime(PreSignal, CurrSignal, SingleChangeCostTime) end

---@param RootUI UUAEUserWidget
---@param SaveGame USaveGame
---@param CrtUseIndex number
function UUIDataProcessingFunctionLibrary:ApplyAllCustomizeChange(RootUI, SaveGame, CrtUseIndex) end

---@param CustomizePanel UUAECustomizePanel
---@param pSaveGame USaveGame
---@param CrtUseIndex number
function UUIDataProcessingFunctionLibrary:ApplySingleCustomizeChange(CustomizePanel, pSaveGame, CrtUseIndex) end


---@class UComsumablePriorityTraver: UTableTraver
local UComsumablePriorityTraver = {}
