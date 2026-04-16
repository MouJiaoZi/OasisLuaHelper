---@meta

---@class FTombboxLifeSpanStruct
---@field GameModeClass AUAEGameMode
---@field lifespan number
FTombboxLifeSpanStruct = {}


---@class FItemTombParticle
---@field SoftPS UParticleSystem
FItemTombParticle = {}


---@class FTombboxDeadEffect
---@field DeadBoxTwinkleEffectCustomCullDis number
---@field ItemEffect ULuaMapHelper<number, FItemTombParticle>
---@field BoxAbiilityID number
---@field CharacterAvatarBoxAbiilityID number
---@field BoxAbilityType number
FTombboxDeadEffect = {}


---@class FTombboxGenerateFragmentPair
---@field Fragment number
---@field Count number
FTombboxGenerateFragmentPair = {}


---@class FTombBoxDropProtect
---@field BisUseKillerAndAssist boolean
---@field ProtectOpenTime number
---@field ProtectNotOpenTime number
---@field CareProtectItemSubID ULuaArrayHelper<number>
---@field ProtectPlayerKey ULuaArrayHelper<number>
---@field NotAllowPlayerKey ULuaArrayHelper<number>
FTombBoxDropProtect = {}


---@class FOnDeadBoxCarryStateChangeDelegate : ULuaMulticastDelegate
FOnDeadBoxCarryStateChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CarryBoxCharacter: ASTExtraBaseCharacter, CarringState: ECarringState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeadBoxCarryStateChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CarryBoxCharacter ASTExtraBaseCharacter
---@param CarringState ECarringState
function FOnDeadBoxCarryStateChangeDelegate:Broadcast(CarryBoxCharacter, CarringState) end


---@class FOnPickUpListWrapperDataEmptyDelegate : ULuaMulticastDelegate
FOnPickUpListWrapperDataEmptyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPickUpListWrapperDataEmptyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef AActor
function FOnPickUpListWrapperDataEmptyDelegate:Broadcast(SelfRef) end


---@class FOnApplyTombBoxSkin : ULuaSingleDelegate
FOnApplyTombBoxSkin = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnApplyTombBoxSkin:Bind(Callback, Obj) end

---执行委托
function FOnApplyTombBoxSkin:Execute() end


---@class APlayerTombBox: AActor, IRegionObjectInterface, IAttrModifyInterface, IDropActorCurveInterface, IPickupCustomInterface, IObjectPoolInterface, IPickupValidatorInterface, IInteractorInterface, IScopeInteractionInterface, ICheckDeadBoxCanBeCarriedInterface
---@field ListWrapperTemplate APickUpListWrapperActor
---@field CachedBoxAbilityType number
---@field DefaultObjectPoolSize number
---@field OnPickUpListWrapperDataEmptyDelegate FOnPickUpListWrapperDataEmptyDelegate
---@field CustomPickUpRadius number
---@field CustomPickUpZLimit number
---@field TombName string
---@field TombNameString string
---@field TombOverrideName string
---@field HideTombNameSuffix boolean
---@field TombSuffixOverrideName string
---@field TeamID number
---@field bOverrideListWrapperNetCullDistance boolean
---@field UITipsPostNameInfoID_TheBox number
---@field UITipsPostNameInfoID_PickUp number
---@field TeamPlayerIDs ULuaArrayHelper<number>
---@field TombPlayerUID string
---@field SpawnTime number @生成时间
---@field CauserTeamId number
---@field DeadTime number
---@field BoxLifeSpan number
---@field bDisableCollision boolean
---@field HandleCollisionDelay number
---@field bIsLastDiedInTeam boolean
---@field BoxType EPickUpBoxType
---@field OwnerUniqueID number
---@field PickUpItemFlowSourceType EPickUpItemFlowSourceType
---@field SkinResList ULuaArrayHelper<string>
---@field bBoxVisibility boolean
---@field bApplyPickUpTrace boolean
---@field AttrValueChangedDelegate FOnAttrValueChangedDynamicDelegate
---@field TombBoxSkinAnimPlayDelay number
---@field ShowTombBoxPanel boolean
---@field BisDamageCauserIsNormal boolean
---@field BisUseDropItemProtect boolean
---@field TombBoxProtect FTombBoxDropProtect
---@field NotAllowPlayerKey ULuaArrayHelper<number>
---@field TombBoxSkinList FTombboxDeadEffect
---@field TombBoxSkinTable string
---@field TlogID number
---@field bRecordAllPlayerPickUpData boolean
---@field bTombBoxPlayTemporaryEffect boolean
---@field TombBoxEffectTimerHandle FTimerHandle
---@field bUseDropCurve boolean
---@field DropGroupID number
---@field DropStartLocation FVector
---@field RepLocation FVector
---@field bBeenCarried boolean
---@field bCanSearch boolean
---@field CollisionCache ULuaMapHelper<number, number>
---@field PickUpAction FInteractBehaviorWrapper
---@field bCheckHasInteractiveMesh boolean
---@field bForceDisableTheBoxSuffix boolean
---@field bForceEnableTheBoxSuffix boolean
---@field MapMarkTypeID number
---@field MapMarkShowTime number
---@field MapMarkInstanceID number
---@field TimerHdl_HideMapMark FTimerHandle
---@field CacheMapMarkTargetPS ASTExtraPlayerState
---@field OnDeadBoxCarryStateChange FOnDeadBoxCarryStateChangeDelegate
---@field OnTombBoxOpened FOnTombBoxOpenedDelegate
---@field TombBoxFallPerformDuration number
---@field TombBoxFallPerformTriggerTimeLimit number
local APlayerTombBox = {}

---@param bFromPersistentPool boolean
function APlayerTombBox:OnRespawned(bFromPersistentPool) end

---@param bToPersistentPool boolean
function APlayerTombBox:OnRecycled(bToPersistentPool) end

function APlayerTombBox:BPOnRespawned() end

function APlayerTombBox:BPOnRecycled() end

function APlayerTombBox:OnFinishInit() end

function APlayerTombBox:OnRep_ReplicatedMovement() end

function APlayerTombBox:OnRep_AttachmentReplication() end

function APlayerTombBox:GeneratePlayerBackpackWrappers() end

function APlayerTombBox:GeneratePlayerBackpackWrappersToGround() end

---@param DataList ULuaArrayHelper<FAirDropBoxGenerateWrapperItemData>
---@param AirBoxName string
---@param AirDropBoxID number
---@param StaticEvtID number
function APlayerTombBox:GenerateAirDropBoxWrappers(DataList, AirBoxName, AirDropBoxID, StaticEvtID) end

---@param DataList ULuaArrayHelper<FAirDropBoxGenerateWrapperItemData>
---@param AirBoxName string
function APlayerTombBox:GenerateTreasureBoxWrappers(DataList, AirBoxName) end

---@param WrapperActor APickUpListWrapperActor
function APlayerTombBox:OnPlayerBackpackWrapperSpawnFinish(WrapperActor) end

---@param WrapperActor APickUpListWrapperActor
function APlayerTombBox:RegisterPickupListToAIWorldVolume(WrapperActor) end

---@param DataList ULuaArrayHelper<FPickUpItemData>
---@param BoxName string
function APlayerTombBox:GenerateBoxWrappersByPickUpItemDataList(DataList, BoxName) end

---@param SourceDataList ULuaArrayHelper<FPickUpItemData>
function APlayerTombBox:CustomGenerateBoxWrappers(SourceDataList) end

---@return boolean
function APlayerTombBox:CheckCanBeCustomGenerate() end

---@param ItemsData ULuaArrayHelper<FAirDropBoxGenerateWrapperItemData>
---@param BoxName string
function APlayerTombBox:GenerateBoxWrappersByItemsData(ItemsData, BoxName) end

function APlayerTombBox:SwitchToDeadTombBox() end

function APlayerTombBox:HideDeadTombApparence() end

---@return number
function APlayerTombBox:GetTombboxLifespan() end

function APlayerTombBox:RecoverCollision() end

---@param inTombName string
function APlayerTombBox:SetTombName(inTombName) end

function APlayerTombBox:BPRecoverCollision() end

---@param SkinType number
function APlayerTombBox:ApplyTombSkin(SkinType) end

function APlayerTombBox:AddPickUpDataListOnServer() end

---@return number
function APlayerTombBox:GetUniqueInstanceID() end

function APlayerTombBox:OnRep_AttachedActor() end

function APlayerTombBox:OnRep_BoxLifeSpan() end

function APlayerTombBox:OnRep_VisibilityChange() end

function APlayerTombBox:OnRep_ChangeBoxMesh() end

function APlayerTombBox:OnRep_LoadDefaultSkin() end

function APlayerTombBox:OnRep_CustomPickUpRangeBox() end

function APlayerTombBox:ShowTombBoxSkin() end

---@param OutItemDataList ULuaArrayHelper<FPickUpItemData>
function APlayerTombBox:CollectPlayerTombBoxDropWrapperList(OutItemDataList) end

---@param InCauser ASTExtraBaseCharacter
---@param InDeadPlayer ASTExtraBaseCharacter
---@param InDamageEvent FDamageEvent
---@param InDefaultItemList ULuaArrayHelper<FPickUpItemData>
function APlayerTombBox:CustomTombBoxItemList(InCauser, InDeadPlayer, InDamageEvent, InDefaultItemList) end

---@param InCauser ASTExtraBaseCharacter
---@param InDeadPlayer ASTExtraBaseCharacter
---@param InDamageEvent FDamageEvent
---@param InDefaultItemList ULuaArrayHelper<FPickUpItemData>
---@param CachedBattleItemDatas ULuaArrayHelper<FBattleItemData>
function APlayerTombBox:CustomTombBoxItemListWithCache(InCauser, InDeadPlayer, InDamageEvent, InDefaultItemList, CachedBattleItemDatas) end

function APlayerTombBox:OnRep_BoxPickupWrapperActor() end

function APlayerTombBox:OnRemoveItemInWrapper() end

function APlayerTombBox:OnRep_BoxType() end

function APlayerTombBox:OnRep_TargetPlayer() end

function APlayerTombBox:OnRep_DisableCollision() end

function APlayerTombBox:OnRep_HandleCollisionDelay() end

function APlayerTombBox:GenerateDataByCauser() end

---@param TargetActor AActor
function APlayerTombBox:OnGroundActorDestroyed(TargetActor) end

function APlayerTombBox:PlayTombBoxParticle() end

---@param DeadCharacter ASTExtraCharacter
---@param InKiller AController
---@param DamageCaster AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param DamageType number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function APlayerTombBox:OnOwnerPawnDead(DeadCharacter, InKiller, DamageCaster, KillingHitInfo, KillingHitImpulseDir, DamageType, DamageTypeClass, IsHeadShotDamage, Context) end

---@param ReqID number
---@param ResName string
function APlayerTombBox:OnTombBoxResLoaded(ReqID, ResName) end

---@param ReqID number
---@param ResName string
function APlayerTombBox:BP_OnTombBoxResLoaded(ReqID, ResName) end

---@param AttrName string
---@param CurValue number
function APlayerTombBox:OnAttrModify(AttrName, CurValue) end

---@param AttrName string
---@param CurValue number
function APlayerTombBox:BP_OnAttrModify(AttrName, CurValue) end

---@param InPlayerKey string
---@return EAttrClientPlayerType
function APlayerTombBox:HandleGetClientPlayerType(InPlayerKey) end

function APlayerTombBox:RegisterModifyItems() end

---@param PlayerKey number
function APlayerTombBox:AddNotAllowPlayerKey(PlayerKey) end

---@param PlayerKey number
function APlayerTombBox:RemoveNotAllowPlayerKey(PlayerKey) end

function APlayerTombBox:ClearNotAllowPlayerKey() end

function APlayerTombBox:OnRep_bTombBoxPlayTemporaryEffect() end

function APlayerTombBox:StopTombBoxTemporaryEffect() end

function APlayerTombBox:OnRep_UseDropCurve() end

function APlayerTombBox:OnRep_Location() end

function APlayerTombBox:OnRep_TombName() end

function APlayerTombBox:RegisterToCurveAnimComponent() end

---@param bUseCurve boolean
---@param GroupID number
---@param StartLoc FVector
---@param EndLoc FVector
function APlayerTombBox:SetDropLocation(bUseCurve, GroupID, StartLoc, EndLoc) end

---设置值复制坐标 流浪地球机械狗可以背负死亡盒子，死亡盒子没有开启移动复制，放下盒子后坐标会回到背负之前，这里让客户端同步一下坐标
---@param InRepLocation FVector
function APlayerTombBox:SetRepLocation(InRepLocation) end

---设置PlayerState中PlayerBoxLocation 流浪地球机械狗放下盒子时，更新死亡玩家PS中的PlayerBoxLocation
---@param InLocation FVector
function APlayerTombBox:SetPlayerStateBoxLocation(InLocation) end

---设置是否被背负 流浪地球机械狗可以背负死亡盒子
---@param bInBeenCarried boolean
function APlayerTombBox:SetBeenCarried(bInBeenCarried) end

---@param bInCanSearch boolean
function APlayerTombBox:SetCanSearch(bInCanSearch) end

---@param Character ASTExtraBaseCharacter
function APlayerTombBox:DropitemProtectOnPlayerDeath(Character) end

---@param InActor AActor
---@param EndPlayReason EEndPlayReason
function APlayerTombBox:DropitemProtectOnActorEndPlay(InActor, EndPlayReason) end

---@return boolean
function APlayerTombBox:CheckTombBoxInfoIsValid() end

---@return boolean
function APlayerTombBox:CheckTombBoxCharacterAvatarInfoIsValid() end

function APlayerTombBox:BP_LifeSpanExpired() end

function APlayerTombBox:GenerateInteractBehaviorUIInfo() end

---@param CrarryCharacter ASTExtraBaseCharacter
---@return boolean
function APlayerTombBox:CheckCanBeCarried(CrarryCharacter) end

---@param CrarryCharacter ASTExtraBaseCharacter
---@return boolean
function APlayerTombBox:HasCarriedCDTime(CrarryCharacter) end

---@param CrarryCharacter ASTExtraBaseCharacter
---@return number
function APlayerTombBox:GetCanCarriedCDTime(CrarryCharacter) end

---@param TargetPlayerState ASTExtraPlayerState
---@param bAutoHide boolean
---@return boolean
function APlayerTombBox:ShowMapMark(TargetPlayerState, bAutoHide) end

function APlayerTombBox:HideMapMark() end

---@param CarryBoxCharacter ASTExtraPlayerCharacter
function APlayerTombBox:OnDeadBoxPuttingUp(CarryBoxCharacter) end

---@param CarryBoxCharacter ASTExtraPlayerCharacter
function APlayerTombBox:OnDeadBoxPuttingDown(CarryBoxCharacter) end

function APlayerTombBox:HandleTombBoxFallPerform() end
