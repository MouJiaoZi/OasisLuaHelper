---@meta

---@class ELostTombPlayerSettleReason
---@field None number
---@field Success number
---@field Dead number
---@field Timeout number
---@field Exit number
ELostTombPlayerSettleReason = {}


---@class FLTSimplePlayerItem
---@field TypeSpecificID number
---@field Count number
FLTSimplePlayerItem = {}


---@class FLTPlayerData
---@field UID number
---@field PlayerKey number
---@field KillNum number
---@field KillPlayerNum number
---@field Value number
---@field BagItemValue number
---@field SafetyBoxItemValue number
---@field InitialValue number
---@field InCome number
---@field ClipBulletValue number
---@field SendSafetyBoxItemValue number
---@field SendSafetyBoxItemSeasonValue number
---@field SeasonValue number
---@field SeasonBagItemValue number
---@field SeasonSafetyBoxItemValue number
---@field SeasonInitialValue number
---@field SeasonInCome number
---@field bHasInitialValue boolean
---@field ValidPlayerItemList ULuaArrayHelper<FLTSimplePlayerItem>
---@field SettleReason ELostTombPlayerSettleReason
FLTPlayerData = {}


---@class FOnLTPlayerSettleDelegate : ULuaMulticastDelegate
FOnLTPlayerSettleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerController: ASTExtraPlayerController, Reason: ELostTombPlayerSettleReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLTPlayerSettleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerController ASTExtraPlayerController
---@param Reason ELostTombPlayerSettleReason
function FOnLTPlayerSettleDelegate:Broadcast(PlayerController, Reason) end


---@class FOnLTPlayerItemValueChanged : ULuaMulticastDelegate
FOnLTPlayerItemValueChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerController: ASTExtraPlayerController, ItemValue: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLTPlayerItemValueChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerController ASTExtraPlayerController
---@param ItemValue number
function FOnLTPlayerItemValueChanged:Broadcast(PlayerController, ItemValue) end


---@class ALostTomb_GameMode: ABattleRoyaleGameModeTeam
---@field ItemTypesToPack ULuaMapHelper<number, number>
---@field ItemTypesForbitToTombBox ULuaArrayHelper<number>
---@field bIsDropBulletPickup boolean
---@field bEnableExceptionReport boolean
---@field bIsUseEquipDurability boolean
---@field SuccessReduceDurabilityRate number
---@field FailReduceDurabilityRate number
---@field LastBreathReduceDurabilityRate number
---@field TakeDamageReduceDurabilityRate number
---@field PlayerDataList ULuaMapHelper<number, FLTPlayerData>
---@field ValidItemStoreAreaToCalPlayerItemValue ULuaArrayHelper<EItemStoreArea>
---@field bIgnoreServerItemValue boolean
---@field bOnlyCalSpecificItemType boolean
---@field OnlyCalSpecificItemTypeList ULuaArrayHelper<number>
---@field GemItemSubType number
---@field ItemGenerationTlogStatisticsID number
---@field bIsNormalMode boolean
---@field bIsAdvanceMode boolean
---@field bIsCrazyMode boolean
---@field bIsPVEMode boolean
---@field bIsPeaceMode boolean
---@field SeasonID number
---@field NotifyPlayerSettleDelegate FOnLTPlayerSettleDelegate
---@field OnLTPlayerItemValueChangedDelegate FOnLTPlayerItemValueChanged
---@field OnLTPlayerInComeChangedDelegate FOnLTPlayerItemValueChanged
---@field OnLTPlayerBagValueChangedDelegate FOnLTPlayerItemValueChanged
---@field OnLTPlayerSafetyBoxValueChangedDelegate FOnLTPlayerItemValueChanged
---@field OnLTPlayerItemSeasonValueChangedDelegate FOnLTPlayerItemValueChanged
---@field OnLTPlayerSeasonInComeChangedDelegate FOnLTPlayerItemValueChanged
---@field OnLTPlayerSeasonBagValueChangedDelegate FOnLTPlayerItemValueChanged
---@field OnLTPlayerSeasonSafetyBoxValueChangedDelegate FOnLTPlayerItemValueChanged
---@field PlayerStartLocErrorIDList ULuaArrayHelper<number>
local ALostTomb_GameMode = {}

---@param Damage number
---@param EventInstigator AController
---@param VictimController AController
---@param DamageCauser AActor
---@return number
function ALostTomb_GameMode:ModifyReductionDamageBreak(Damage, EventInstigator, VictimController, DamageCauser) end

---@param Box AAirDropBoxActor
---@param InPos FVector
function ALostTomb_GameMode:BP_OnAirDropBoxLanded(Box, InPos) end

---@param Damage number
---@param FinalDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param VictimController AController
---@param DamageCauser AActor
---@return number
function ALostTomb_GameMode:CheckForSettleDamage(Damage, FinalDamage, DamageEvent, EventInstigator, VictimController, DamageCauser) end

function ALostTomb_GameMode:ReceiveNotifyGameModeInit() end

---@return boolean
function ALostTomb_GameMode:IsNormalMode() end

---@return boolean
function ALostTomb_GameMode:IsAdvanceMode() end

---@return boolean
function ALostTomb_GameMode:IsCrazyMode() end

---@return boolean
function ALostTomb_GameMode:IsPVEMode() end

---@return boolean
function ALostTomb_GameMode:IsPeaceMode() end

---@param InTempDropListForEqiuped ULuaArrayHelper<FPickUpItemData>
function ALostTomb_GameMode:EquipmentFilter(InTempDropListForEqiuped) end

---@param InPc ASTExtraPlayerController
---@param InTempDropListForEqiuped ULuaArrayHelper<FPickUpItemData>
function ALostTomb_GameMode:EquipmentProtected(InPc, InTempDropListForEqiuped) end

---@param InID number
function ALostTomb_GameMode:SetSeasonID(InID) end

---@return boolean
function ALostTomb_GameMode:IsNewSeason() end

---@param InPc ASTExtraPlayerController
---@param ItemID number
---@param OutDropItemList ULuaArrayHelper<FPickUpItemData>
---@return boolean
function ALostTomb_GameMode:NewEquipmentProtected(InPc, ItemID, OutDropItemList) end

---@param DropNums ULuaArrayHelper<number>
---@param DropWeights ULuaArrayHelper<number>
function ALostTomb_GameMode:GetItemDropTableInf(DropNums, DropWeights) end

---@param InPc AController
---@param CauserTeamId number
---@param InDefaultItemList ULuaArrayHelper<FPickUpItemData>
---@param Caches ULuaArrayHelper<FBattleItemData>
---@param PlayerRst FLTPlayerRst
---@param OutDropItemList ULuaArrayHelper<FPickUpItemData>
---@param OutGemsItemList ULuaArrayHelper<FPickUpItemData>
function ALostTomb_GameMode:PlayerCustomTombBoxItemList(InPc, CauserTeamId, InDefaultItemList, Caches, PlayerRst, OutDropItemList, OutGemsItemList) end

---@param InController AController
---@return string
function ALostTomb_GameMode:GetPlayerNameByController(InController) end

---@param PlayerName string
---@param InDefaultItemList ULuaArrayHelper<FPickUpItemData>
---@param CachedBattleItemDatas ULuaArrayHelper<FBattleItemData>
function ALostTomb_GameMode:DumpItemInfo(PlayerName, InDefaultItemList, CachedBattleItemDatas) end

---@param InDefaultItemList ULuaArrayHelper<FPickUpItemData>
---@param CachedBattleItemData ULuaArrayHelper<FBattleItemData>
---@param OutDropItemList ULuaArrayHelper<FPickUpItemData>
function ALostTomb_GameMode:PreFilterWrappersForTombBox(InDefaultItemList, CachedBattleItemData, OutDropItemList) end

---@param TarID FItemDefineID
---@param CachedBattledItemDatas ULuaArrayHelper<FBattleItemData>
---@param OutList ULuaArrayHelper<FItemDefineID>
function ALostTomb_GameMode:GetAttachmentsFromGiveList(TarID, CachedBattledItemDatas, OutList) end

---@param PlayerController ASTExtraPlayerController
---@param InDropItemList ULuaArrayHelper<FPickUpItemData>
---@param CachedHandles ULuaArrayHelper<FBattleItemData>
function ALostTomb_GameMode:FlagFirstPlayerTombBoxPickupForReturn(PlayerController, InDropItemList, CachedHandles) end

---@param Caches ULuaArrayHelper<FBattleItemData>
---@param Equipments ULuaArrayHelper<FItemDefineID>
function ALostTomb_GameMode:GetEquipedItems(Caches, Equipments) end

---@param InController AController
---@return number
function ALostTomb_GameMode:GetDivinationReserveEquipmentChance(InController) end

---@param Item FPickUpItemData
---@param CachedData ULuaArrayHelper<FBattleItemData>
---@param OutAttachments ULuaArrayHelper<FItemDefineID>
---@return boolean
function ALostTomb_GameMode:IsEquippedMainItem(Item, CachedData, OutAttachments) end

---@param BID FBattleItemData
---@param CachedData ULuaArrayHelper<FBattleItemData>
---@param outbEquipping boolean
---@return boolean
function ALostTomb_GameMode:IsAttachmentParentEquipping(BID, CachedData, outbEquipping) end

---@param Handle UBattleItemHandleBase
---@param Reason EBattleItemDropReason
function ALostTomb_GameMode:DoSomethingBeforeDrop(Handle, Reason) end

---@param Handle UBattleItemHandleBase
---@param Reason EBattleItemUseReason
---@param ToBackpack boolean
function ALostTomb_GameMode:DoSomethingAfterPickup(Handle, Reason, ToBackpack) end

---@param InId FItemDefineID
---@return string
function ALostTomb_GameMode:ItemDefineIDToString(InId) end

function ALostTomb_GameMode:GenerateRoom() end

---@return number
function ALostTomb_GameMode:GetMaxModifiersNum() end

---@param Type string
---@param StackStr string
---@param ExtraStr string
function ALostTomb_GameMode:ExceptionReport(Type, StackStr, ExtraStr) end

---@param HostActor AActor
---@param TriggerID number
function ALostTomb_GameMode:OnUseXBLPFail(HostActor, TriggerID) end

---@param HostActor AActor
---@param Box AActor
function ALostTomb_GameMode:OnUseXBLPSuccess(HostActor, Box) end

---@param PlayerKeyStr string
---@param PlayerType string
function ALostTomb_GameMode:LuaNotifyPrePlayerExit(PlayerKeyStr, PlayerType) end

---@param PlayerKeyStr string
---@param PlayerType string
---@param bDestroyPlayerController boolean
---@param bDestroyCharacter boolean
---@param bSendFailure boolean
---@param FailureMessage string
function ALostTomb_GameMode:LuaNotifyPlayerExit(PlayerKeyStr, PlayerType, bDestroyPlayerController, bDestroyCharacter, bSendFailure, FailureMessage) end

---@param Killer AController
---@param VictimPlayer AController
---@param VictimPawn APawn
---@param KillerKey number
function ALostTomb_GameMode:LuaHandlePlayerKilledWithRevive(Killer, VictimPlayer, VictimPawn, KillerKey) end

function ALostTomb_GameMode:OnLostTombGameModeInitFinished() end

---@param InPlayerController ASTExtraPlayerController
---@return number
function ALostTomb_GameMode:GetValueOfBulletInClip(InPlayerController) end

---@param InItemHandle UItemHandleBase
function ALostTomb_GameMode:OnPlayerItemChanged(InItemHandle) end

---@param InBattleItemData FBattleItemData
---@return boolean
function ALostTomb_GameMode:CanCalculateItemValue(InBattleItemData) end

---@param InItemID number
---@return boolean
function ALostTomb_GameMode:IsCanNotCalculateConsumeableItemValue(InItemID) end

---@param InPlayerController ASTExtraPlayerController
function ALostTomb_GameMode:SetPlayerInitialItemValue(InPlayerController) end

---@param InPlayerController ASTExtraPlayerController
function ALostTomb_GameMode:UpdatePlayerItemValue(InPlayerController) end

---@param InPlayerController ASTExtraPlayerController
function ALostTomb_GameMode:UpdatePlayerItemValueByBulletChange(InPlayerController) end

---@param InPlayerController ASTExtraPlayerController
---@param Value number
---@param SeasonValue number
function ALostTomb_GameMode:AddPlayerSendSafetyBoxItemValue(InPlayerController, Value, SeasonValue) end

---@param InPlayerController ASTExtraPlayerController
---@param InItemDefineID FItemDefineID
---@return boolean
function ALostTomb_GameMode:CheckIsTeammateSvrItem(InPlayerController, InItemDefineID) end

---@param UID1 string
---@param UID2 string
---@return boolean
function ALostTomb_GameMode:CheckUIDsAreTeammate(UID1, UID2) end

---@param InPlayerController ASTExtraPlayerController
---@param InComeValue number
function ALostTomb_GameMode:ReportPlayerInComeToReplay(InPlayerController, InComeValue) end

---@param InPlayerController ASTExtraPlayerController
---@param InComeValue number
function ALostTomb_GameMode:ReportPlayerSeasonInComeToReplay(InPlayerController, InComeValue) end

---@param Item FBattleItemData
---@return number
function ALostTomb_GameMode:GetItemValue(Item) end

---@param Item FBattleItemData
---@return number
function ALostTomb_GameMode:GetItemSeasonValue(Item) end

---@param InPc AController
---@return boolean
function ALostTomb_GameMode:IsReviveNeedKeepAllItems(InPc) end

---@param PC ASTExtraPlayerController
---@param OriginLoc FVector
---@param Radius number
function ALostTomb_GameMode:CheckPlayerStartLoc(PC, OriginLoc, Radius) end

---@param CauserTeamId number
---@param InController AController
---@return boolean
function ALostTomb_GameMode:CheckNeedGenerateDogTag(CauserTeamId, InController) end

---@param InController AController
---@param PickupStartInstanceId number
---@param RetPickupItemData FPickUpItemData
---@return boolean
function ALostTomb_GameMode:GenerateDogTagPickupItem(InController, PickupStartInstanceId, RetPickupItemData) end
