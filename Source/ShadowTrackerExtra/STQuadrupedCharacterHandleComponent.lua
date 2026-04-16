---@meta

---@class ESTQuadrupedCharacterPickableActorType
---@field None number @无
---@field TombBox number @死亡盒子
---@field AirDrop number @空投
---@field PickUpWrapper number @地面物资
---@field PickUpListWrapper number @死亡盒
---@field EscapeSupplyBox number @E玩法物资箱
---@field SpecialAirDrop number @特殊空投
ESTQuadrupedCharacterPickableActorType = {}


---@class ESTQuadrupedCharacterQueryItemType
---@field None number @无
---@field PickupWrapper number @地面物资
---@field AirDropBox number @空投
---@field SpecialAirDropBox number @特殊空投（宝箱）
---@field TombBox number @死亡盒
---@field EscapeSupplyBox number @E玩法物资箱
ESTQuadrupedCharacterQueryItemType = {}


---@class FSTQuadrupedCharacterFetchSupplyItem
---@field UniqueID number
---@field Name string
---@field DataList ULuaArrayHelper<FPickUpItemData>
---@field Owner APickUpListWrapperActor
---@field Type ESTQuadrupedCharacterPickableActorType
FSTQuadrupedCharacterFetchSupplyItem = {}


---@class FSTQuadrupedCharacterFetchSuppliesInfo
---@field bValid boolean
---@field Data ULuaArrayHelper<FSTQuadrupedCharacterFetchSupplyItem>
---@field MainSupplyActor AActor
---@field Type ESTQuadrupedCharacterPickableActorType
FSTQuadrupedCharacterFetchSuppliesInfo = {}


---搜索CD信息
---@class FSTQuadrupedCharacterSearchCDInfo
---@field TotalTime number
---@field EndTime number
---@field CommandType number
FSTQuadrupedCharacterSearchCDInfo = {}


---语音指令解析状态
---@class FSTQuadrupedCharacterVoiceCommandResolveStatus
---@field bSuccess boolean
---@field StartTime number
---@field EndTime number
---@field FailedReason string
FSTQuadrupedCharacterVoiceCommandResolveStatus = {}


---指令CD信息
---@class FSTQuadrupedCharacterCommandCDInfo
---@field LastExecuteTime number
---@field CommandType number
---@field CommandIndex number
FSTQuadrupedCharacterCommandCDInfo = {}


---语音唤醒CD信息
---@class FSTQuadrupedCharacterVoiceNotifyCDInfo
---@field LastExecuteTime number
---@field NotifyType string
FSTQuadrupedCharacterVoiceNotifyCDInfo = {}


---快捷标点信息
---@class FSTQuadrupedCharacterQuickSignInfo
---@field Actor AActor
---@field Type string
---@field MsgID string
---@field Time number
---@field EndTime number
---@field Loc FVector
---@field PlayerKey number
---@field TypeSpecificID number
---@field InstanceID number
---@field ParamString string
---@field bActivate boolean
FSTQuadrupedCharacterQuickSignInfo = {}


---召唤信息
---@class FSTQuadrupedCharacterSpawnInfo
---@field bValid boolean
---@field bVisible boolean
---@field bOnNavMesh boolean
---@field Rot FRotator
---@field Loc FVector
FSTQuadrupedCharacterSpawnInfo = {}


---@class FSTQuadrupedCharacterQueryItemInfo
---@field Actor AActor
---@field Distance number
---@field ZDistance number
---@field ZScale number
---@field Type ESTQuadrupedCharacterQueryItemType
---@field Level number
---@field Durability number
---@field Priority number
---@field Time number
---@field TypeSpecificID number
---@field InstanceID number
---@field bPreferKillTombBox boolean @是否优先玩家或队友击杀的死亡盒子
---@field TombBoxSpawnTime number
FSTQuadrupedCharacterQueryItemInfo = {}


---@class FSTQuadrupedCharacterBoxItemInfo
---@field TypeSpecificID number
---@field Level number
---@field Durability number
FSTQuadrupedCharacterBoxItemInfo = {}


---@class FSTQuadrupedCharacterItemCommonQueryParam
---@field Actor AActor
---@field Time number
---@field InstanceID number
FSTQuadrupedCharacterItemCommonQueryParam = {}


---@class FSTQuadrupedCharacterItemRequirementInfo
---@field bMeetsRequirement boolean
---@field MaxLevel number
---@field MaxDurability number
---@field Priority number
---@field TypeSpecificID number
---@field InstanceID number
---@field ExtraInfo number
FSTQuadrupedCharacterItemRequirementInfo = {}


---@class FSTQuadrupedCharacterQueryAirDropInfo
---@field bAllAirDropBoxOpened boolean
---@field bAllSpecialAirDropBoxOpened boolean
---@field bExistsAirDropBox boolean
---@field bShowTipsWhenAllAirDropBoxOpened boolean
FSTQuadrupedCharacterQueryAirDropInfo = {}


---@class USTQuadrupedCharacterHandleComponent: UActorComponent
---@field ZScale number @Z轴距离系数
---@field ClientQuickSignInfo ULuaMapHelper<string, FSTQuadrupedCharacterQuickSignInfo>
---@field DSQuickSignInfo ULuaMapHelper<string, FSTQuadrupedCharacterQuickSignInfo>
---@field WarDogSignInfo ULuaArrayHelper<FSTQuadrupedCharacterQuickSignInfo>
---@field QuickSignTickInterval number
---@field OverlapCheckTraceChannels ULuaArrayHelper<ECollisionChannel>
---@field SweepFindFloorTraceChannels ULuaArrayHelper<ECollisionChannel>
---@field VisibleCheckTraceChannels ULuaArrayHelper<ECollisionChannel>
---@field InValidFloorClasses ULuaArrayHelper<AActor>
---@field SpecialFloorClasses ULuaArrayHelper<AActor>
---@field Radius number
---@field HalfHeight number
---@field TraceDownwardDistance number
---@field MinAngle number
---@field MaxAngle number
---@field MinAngleRespawn number
---@field MaxAngleRespawn number
---@field FetchSuppliesInfo FSTQuadrupedCharacterFetchSuppliesInfo
---@field QueryAirDropBoxRegions ULuaArrayHelper<ERegionSizeIndex>
---@field QueryTombBoxRegions ULuaArrayHelper<ERegionSizeIndex>
---@field QueryPickupWrapperRegions ULuaArrayHelper<ERegionSizeIndex>
---@field EscapeSupplyBoxClass AActor
---@field QueryAirDropBoxInfo FSTQuadrupedCharacterQueryAirDropInfo
---@field SpecialAirdropBoxClasses ULuaArrayHelper<AActor>
---@field TombBoxClasses ULuaArrayHelper<AActor>
---@field AllOpenedAirDropBoxTipsID number
---@field CommandPanelInteractStatus number
---@field SearchEndTime FSTQuadrupedCharacterSearchCDInfo
---@field VoiceRoomState number
---@field VoiceRoomName string
---@field VoiceActivateType number
---@field VoiceCommandResolveStatus FSTQuadrupedCharacterVoiceCommandResolveStatus
---@field LastExecuteCommandTimeRep ULuaArrayHelper<FSTQuadrupedCharacterCommandCDInfo>
---@field LastExecuteVoiceNotifyTimeRep ULuaArrayHelper<FSTQuadrupedCharacterVoiceNotifyCDInfo>
---@field NotifyText string
local USTQuadrupedCharacterHandleComponent = {}

---@param Key string
---@param Info FSTQuadrupedCharacterQuickSignInfo
function USTQuadrupedCharacterHandleComponent:ClientAddQuickSignInfo(Key, Info) end

---@param Key string
---@return boolean
function USTQuadrupedCharacterHandleComponent:ClientRemoveQuickSignInfo(Key) end

---@param Key string
---@param Info FSTQuadrupedCharacterQuickSignInfo
function USTQuadrupedCharacterHandleComponent:DSAddQuickSignInfo(Key, Info) end

---@param Key string
---@return boolean
function USTQuadrupedCharacterHandleComponent:DSRemoveQuickSignInfo(Key) end

---@param Key string
---@param Info FSTQuadrupedCharacterQuickSignInfo
---@return boolean
function USTQuadrupedCharacterHandleComponent:GetDSQuickSignInfo(Key, Info) end

---@return boolean
function USTQuadrupedCharacterHandleComponent:DSClearQuickSignInfo() end

function USTQuadrupedCharacterHandleComponent:OnRep_WarDogSignInfo() end

---@param Info FSTQuadrupedCharacterQuickSignInfo
function USTQuadrupedCharacterHandleComponent:AddWarDogSignInfo(Info) end

---@param Key string
---@return boolean
function USTQuadrupedCharacterHandleComponent:RemoveWarDogSignInfo(Key) end

---@param Key string
---@param Info FSTQuadrupedCharacterQuickSignInfo
---@return boolean
function USTQuadrupedCharacterHandleComponent:GetWarDogSignInfo(Key, Info) end

---@return boolean
function USTQuadrupedCharacterHandleComponent:ClearWarDogSignInfo() end

---@param MsgID string
function USTQuadrupedCharacterHandleComponent:OnQuickSignDisappear(MsgID) end

---@param InLocation FVector
---@param InRotator FRotator
---@param InDirection FVector
---@param InMinDist number
---@param InMaxDist number
---@param InMinAngle number
---@param InMaxAngle number
---@param InRadius number
---@param InHalfHeight number
---@param InTraceDownwardDistance number
---@return FSTQuadrupedCharacterSpawnInfo
function USTQuadrupedCharacterHandleComponent:GetSpawnInfo(InLocation, InRotator, InDirection, InMinDist, InMaxDist, InMinAngle, InMaxAngle, InRadius, InHalfHeight, InTraceDownwardDistance) end

---@param IgnoreActors ULuaArrayHelper<AActor>
---@param InStartLoc FVector
---@param InEndLoc FVector
---@param InRadius number
---@param InHalfHeight number
---@param OutSpawnLocation FVector
---@return boolean
function USTQuadrupedCharacterHandleComponent:SweepFindFloor(IgnoreActors, InStartLoc, InEndLoc, InRadius, InHalfHeight, OutSpawnLocation) end

---@param IgnoreActors ULuaArrayHelper<AActor>
---@param InLoc FVector
---@param InRadius number
---@param InHalfHeight number
---@return boolean
function USTQuadrupedCharacterHandleComponent:OverlapTest(IgnoreActors, InLoc, InRadius, InHalfHeight) end

---@param IgnoreActors ULuaArrayHelper<AActor>
---@param InStartLoc FVector
---@param InEndLoc FVector
---@return boolean
function USTQuadrupedCharacterHandleComponent:VisibleTest(IgnoreActors, InStartLoc, InEndLoc) end

---@param InLoc FVector
---@return boolean
function USTQuadrupedCharacterHandleComponent:NavMeshTest(InLoc) end

---@return number
function USTQuadrupedCharacterHandleComponent:GetHeightOffset() end

---@param PickableActor AActor
---@return ESTQuadrupedCharacterPickableActorType
function USTQuadrupedCharacterHandleComponent:GetPickableActorType(PickableActor) end

---@param InFetchSuppliesInfo FSTQuadrupedCharacterFetchSuppliesInfo
function USTQuadrupedCharacterHandleComponent:SetFetchSuppliesInfo(InFetchSuppliesInfo) end

function USTQuadrupedCharacterHandleComponent:ClearFetchSuppliesInfo() end

---@param InFetchSuppliesInfo FSTQuadrupedCharacterFetchSuppliesInfo
function USTQuadrupedCharacterHandleComponent:ClientRPC_SetFetchSuppliesInfo(InFetchSuppliesInfo) end

function USTQuadrupedCharacterHandleComponent:OnChangeFetchSuppliesInfo() end

---@param UniqueID number
---@param OutFetchSupplyItem FSTQuadrupedCharacterFetchSupplyItem
---@return boolean
function USTQuadrupedCharacterHandleComponent:GetFetchSupplyItemByUniqueID(UniqueID, OutFetchSupplyItem) end

---@return number
function USTQuadrupedCharacterHandleComponent:GetFetchSupplyCount() end

---@param Index number
---@return string
function USTQuadrupedCharacterHandleComponent:GetFetchSupplyItemName(Index) end

---@param Index number
---@return number
function USTQuadrupedCharacterHandleComponent:GetFetchSupplyItemDataCount(Index) end

---@param Index number
---@param OutFetchSupplyItem FSTQuadrupedCharacterFetchSupplyItem
---@return boolean
function USTQuadrupedCharacterHandleComponent:GetFetchSupplyItemByIndex(Index, OutFetchSupplyItem) end

---@param Index number
---@param DataIndex number
---@param OutPickUpItemData FPickUpItemData
---@return boolean
function USTQuadrupedCharacterHandleComponent:GetFetchSupplyItemDataByIndex(Index, DataIndex, OutPickUpItemData) end

---@return ESTQuadrupedCharacterPickableActorType
function USTQuadrupedCharacterHandleComponent:GetMainSupplyActorType() end

---@return boolean
function USTQuadrupedCharacterHandleComponent:HasFetchSupplyItems() end

---@param Target AActor
---@param TypeSpecificID number
---@param AdditionalParam number
---@param Count number
---@param bForce boolean
---@return boolean
function USTQuadrupedCharacterHandleComponent:CanPickupTarget(Target, TypeSpecificID, AdditionalParam, Count, bForce) end

---@param Target AActor
---@param TypeSpecificID number
---@param AdditionalParam number
---@param Count number
---@param bForce boolean
---@return boolean
function USTQuadrupedCharacterHandleComponent:ServerPrePickupTarget(Target, TypeSpecificID, AdditionalParam, Count, bForce) end

---@param Target AActor
---@param TypeSpecificID number
---@param AdditionalParam number
---@param Count number
---@param bForce boolean
function USTQuadrupedCharacterHandleComponent:ServerPickupTarget(Target, TypeSpecificID, AdditionalParam, Count, bForce) end

---@param Target AActor
---@param TypeSpecificID number
---@param AdditionalParam number
---@param Count number
---@param bForce boolean
---@return boolean
function USTQuadrupedCharacterHandleComponent:ServerPostPickupTarget(Target, TypeSpecificID, AdditionalParam, Count, bForce) end

---@param TypeSpecificID number
---@param AdditionalDataList ULuaArrayHelper<FBattleItemAdditionalData>
---@return number
function USTQuadrupedCharacterHandleComponent:GetItemDurability(TypeSpecificID, AdditionalDataList) end

---@param TypeSpecificID number
---@return number
function USTQuadrupedCharacterHandleComponent:GetItemLevel(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function USTQuadrupedCharacterHandleComponent:IsMainWeapon(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function USTQuadrupedCharacterHandleComponent:IsPistolWeapon(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function USTQuadrupedCharacterHandleComponent:IsItemValid(TypeSpecificID) end

---@param TargetType number
---@param TargetSubType number
---@param TargetTypeSpecificID number
---@param CheckItemDefineID FItemDefineID
---@return boolean
function USTQuadrupedCharacterHandleComponent:IsBattleItemMatched(TargetType, TargetSubType, TargetTypeSpecificID, CheckItemDefineID) end

---@param Actor AActor
---@param InstanceID number
---@param OutInfo FSTQuadrupedCharacterBoxItemInfo
---@return boolean
function USTQuadrupedCharacterHandleComponent:GetBoxItemInfo(Actor, InstanceID, OutInfo) end

---@param Center FVector
---@param Range number
---@param ExpectedClass UClass
---@param OutQueryParams ULuaArrayHelper<FSTQuadrupedCharacterItemCommonQueryParam>
function USTQuadrupedCharacterHandleComponent:GetAllActorsByClass(Center, Range, ExpectedClass, OutQueryParams) end

---@param Center FVector
---@param Regions ULuaArrayHelper<ERegionSizeIndex>
---@param bGetStatic boolean
---@param Range number
---@param ExpectedClass UClass
---@param OutQueryParams ULuaArrayHelper<FSTQuadrupedCharacterItemCommonQueryParam>
function USTQuadrupedCharacterHandleComponent:GetNearByActors(Center, Regions, bGetStatic, Range, ExpectedClass, OutQueryParams) end

---@param Center FVector
---@param Range number
---@param ExpectedClass UClass
---@param Type string
---@param OutQueryParams ULuaArrayHelper<FSTQuadrupedCharacterItemCommonQueryParam>
function USTQuadrupedCharacterHandleComponent:GetQuickSignActors(Center, Range, ExpectedClass, Type, OutQueryParams) end

---@param Center FVector
---@param Range number
---@param ExpectedClass UClass
---@param Type string
---@param OutQueryParams ULuaArrayHelper<FSTQuadrupedCharacterItemCommonQueryParam>
function USTQuadrupedCharacterHandleComponent:GetWarDogSignActors(Center, Range, ExpectedClass, Type, OutQueryParams) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QueryAirDropBoxesFromWorld(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QueryAirDropBoxesFromQuickSign(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QueryAirDropBoxesFromWarDogSign(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param ItemDefineID FItemDefineID
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@return number
function USTQuadrupedCharacterHandleComponent:GetItemPriority(TargetPlayer, ItemDefineID, Types, SubTypes, TypeSpecificIDs) end

---@param TargetType number
---@param TargetPlayer ASTExtraBaseCharacter
---@param PickUpWrapper APickUpWrapperActor
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param OutRequirementInfo FSTQuadrupedCharacterItemRequirementInfo
---@param bOnlyCheckInstanceID boolean
---@param CheckInstanceID number
function USTQuadrupedCharacterHandleComponent:CommonCheckPickupListWrapperMeetRequirement(TargetType, TargetPlayer, PickUpWrapper, Types, SubTypes, TypeSpecificIDs, OutRequirementInfo, bOnlyCheckInstanceID, CheckInstanceID) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param AirDropBox AAirDropBoxActor
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@return FSTQuadrupedCharacterItemRequirementInfo
function USTQuadrupedCharacterHandleComponent:CanAirDropBoxMeetRequirement(TargetPlayer, AirDropBox, Types, SubTypes, TypeSpecificIDs) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QuerySpecialAirDropBoxesFromWorld(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QuerySpecialAirDropBoxesFromQuickSign(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QuerySpecialAirDropBoxesFromWarDogSign(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param SpecialAirDropBox ATreasureBox
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@return FSTQuadrupedCharacterItemRequirementInfo
function USTQuadrupedCharacterHandleComponent:CanSpecialAirDropBoxMeetRequirement(TargetPlayer, SpecialAirDropBox, Types, SubTypes, TypeSpecificIDs) end

---查询最近的死亡盒子 TestPlayer: 优先查询该玩家或队友击杀的死亡盒子。当有多个时，取击杀时间最近的 KillCacheTime: 击杀缓存时间
---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
---@param TestPlayer ASTExtraBaseCharacter
---@param KillCacheTime number
function USTQuadrupedCharacterHandleComponent:QueryTombBoxesFromWorld(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount, TestPlayer, KillCacheTime) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QueryTombBoxesFromQuickSign(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QueryTombBoxesFromWarDogSign(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param TombBox APlayerTombBox
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@return FSTQuadrupedCharacterItemRequirementInfo
function USTQuadrupedCharacterHandleComponent:CanTombBoxMeetRequirement(TargetPlayer, TombBox, Types, SubTypes, TypeSpecificIDs) end

---@param TombBox APlayerTombBox
---@return boolean
function USTQuadrupedCharacterHandleComponent:CheckTombBox(TombBox) end

---@param TreasureBox ATreasureBox
---@return boolean
function USTQuadrupedCharacterHandleComponent:CheckSpecialAirDropBox(TreasureBox) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QueryPickupWrappersFromWorld(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QueryPickupWrappersFromQuickSign(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QueryPickupWrappersFromWarDogSign(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param PickUpWrapper APickUpWrapperActor
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param bOnlyCheckInstanceID boolean
---@param InstanceID number
---@return FSTQuadrupedCharacterItemRequirementInfo
function USTQuadrupedCharacterHandleComponent:CanPickupWrapperMeetRequirement(TargetPlayer, PickUpWrapper, Types, SubTypes, TypeSpecificIDs, bOnlyCheckInstanceID, InstanceID) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QueryEscapeSupplyBoxesFromWorld(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QueryEscapeSupplyBoxesFromQuickSign(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QueryEscapeSupplyBoxesFromWarDogSign(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param EscapeSupplyBox AActivityBaseActor
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@return FSTQuadrupedCharacterItemRequirementInfo
function USTQuadrupedCharacterHandleComponent:CanEscapeSupplyBoxMeetRequirement(TargetPlayer, EscapeSupplyBox, Types, SubTypes, TypeSpecificIDs) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
---@param bIncludeAirDrop boolean
---@param bIncludeSpecialAirDrop boolean
---@param bIncludeTombBox boolean
---@param bIncludePickupWrapper boolean
function USTQuadrupedCharacterHandleComponent:QuerySpecificItemFromWorld(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount, bIncludeAirDrop, bIncludeSpecialAirDrop, bIncludeTombBox, bIncludePickupWrapper) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
---@param bIncludeAirDrop boolean
---@param bIncludeSpecialAirDrop boolean
---@param bIncludeTombBox boolean
---@param bIncludePickupWrapper boolean
function USTQuadrupedCharacterHandleComponent:QuerySpecificItemFromQuickSign(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount, bIncludeAirDrop, bIncludeSpecialAirDrop, bIncludeTombBox, bIncludePickupWrapper) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param Types ULuaArrayHelper<number>
---@param SubTypes ULuaArrayHelper<number>
---@param TypeSpecificIDs ULuaArrayHelper<number>
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
---@param bIncludeAirDrop boolean
---@param bIncludeSpecialAirDrop boolean
---@param bIncludeTombBox boolean
---@param bIncludePickupWrapper boolean
function USTQuadrupedCharacterHandleComponent:QuerySpecificItemFromWarDogSign(TargetPlayer, Types, SubTypes, TypeSpecificIDs, InOrigin, InRadius, MaxCount, bIncludeAirDrop, bIncludeSpecialAirDrop, bIncludeTombBox, bIncludePickupWrapper) end

---自主搜索物资。包括头甲包，空投/特殊空投，高价值物资
---@param InHighValueSupplies ULuaArrayHelper<number>
function USTQuadrupedCharacterHandleComponent:InitHighValueSupplies(InHighValueSupplies) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param InOrigin FVector
---@param InRadius number
---@param MaxCount number
function USTQuadrupedCharacterHandleComponent:QueryHighValueSupplies(TargetPlayer, InOrigin, InRadius, MaxCount) end

function USTQuadrupedCharacterHandleComponent:OnRep_CommandPanelInteractStatus() end

function USTQuadrupedCharacterHandleComponent:OnRep_SearchEndTime() end

function USTQuadrupedCharacterHandleComponent:OnRep_VoiceRoomState() end

function USTQuadrupedCharacterHandleComponent:OnRep_VoiceRoomName() end

function USTQuadrupedCharacterHandleComponent:OnRep_VoiceActivateType() end

function USTQuadrupedCharacterHandleComponent:OnRep_VoiceCommandResolveStatus() end

function USTQuadrupedCharacterHandleComponent:OnRep_LastExecuteCommandTimeRep() end

---@param CommandType number
---@param CommandIndex number
---@param OutCommandCDInfo FSTQuadrupedCharacterCommandCDInfo
---@return boolean
function USTQuadrupedCharacterHandleComponent:GetLastExecuteCommandTime(CommandType, CommandIndex, OutCommandCDInfo) end

---@param CommandType number
---@param CommandIndex number
---@param LastExecuteTime number
function USTQuadrupedCharacterHandleComponent:SetLastExecuteCommandTime(CommandType, CommandIndex, LastExecuteTime) end

function USTQuadrupedCharacterHandleComponent:OnRep_LastExecuteVoiceNotifyTimeRep() end

---@param VoiceNotifyType string
---@param OutVoiceNotifyCDInfo FSTQuadrupedCharacterVoiceNotifyCDInfo
---@return boolean
function USTQuadrupedCharacterHandleComponent:GetLastExecuteVoiceNotifyTime(VoiceNotifyType, OutVoiceNotifyCDInfo) end

---@param VoiceNotifyType string
---@param LastExecuteTime number
function USTQuadrupedCharacterHandleComponent:SetLastExecuteVoiceNotifyTime(VoiceNotifyType, LastExecuteTime) end

function USTQuadrupedCharacterHandleComponent:OnRep_NotifyText() end
