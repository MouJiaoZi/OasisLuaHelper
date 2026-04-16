---@meta

---@class FEmoteAvatarMatParam
---@field MatParamName string
---@field bUseFloatCurve boolean
FEmoteAvatarMatParam = {}


---@class FEmoteToNameTag
---@field NameTag string
---@field GenderType ELobbyCharacterAnimType
FEmoteToNameTag = {}


---@class FCurEmoteRes
---@field CurEmoteId number
---@field CurMainRoleAnimSoftPath FSoftObjectPath
---@field CurMainRoleAnim UAnimationAsset
---@field CurMultiEmotePathList ULuaArrayHelper<FSoftObjectPath>
---@field CurMultiEmoteAnimList ULuaArrayHelper<UAnimationAsset>
---@field CurSlotEmotePathList ULuaArrayHelper<FSoftObjectPath>
---@field CurSlotEmoteAnimList ULuaArrayHelper<UAnimationAsset>
---@field CurCameraAnimPath FSoftObjectPath
---@field CurCameraAnim UCameraAnim
---@field CurSeqPath FSoftObjectPath
---@field CurSeq ULevelSequence
FCurEmoteRes = {}


---@class ULobbyPlayEmoteComponent: UActorComponent
---@field ShouldFaceFrontWhenPlayEmote boolean
---@field bPlayEmoteImmediatelyAfterLoadAllAnimRes boolean
---@field bForceStopMontage boolean
---@field bForceOpenLobbyReset boolean
---@field bIsMontageNeedLoop boolean
---@field bNeedIgnore boolean
---@field bSliceTimeMatPausing boolean
---@field bShouldIgnoreSliceTimeMat boolean
---@field DelaySetClothAlphaTimerHandle FTimerHandle
---@field ResolveDragArtifactTimer FTimerHandle
---@field NeedDelaySetSlots ULuaArrayHelper<EAvatarSlotType>
---@field bIgnoreOtherObjectsAnimInMultiAnim boolean
---@field LevelSeqLastTime number
---@field EmoteAnimLastTime number
---@field MultiAnimLastTime number
---@field CurEmoteAnimListLastTime number
---@field curEmoteSection number
---@field curEmotePlaySection number
---@field MultiAnimNum number
---@field AsyncLoadIndex number
---@field CharacterList ULuaArrayHelper<ACharacter>
---@field CurEmotePathList ULuaArrayHelper<FSoftObjectPath>
---@field CurEmoteAnimList ULuaArrayHelper<UAnimationAsset>
---@field EmoteNameTags ULuaArrayHelper<FEmoteToNameTag>
---@field PreTransform FTransform
---@field DefaultBoundScale number
---@field AvatarOpenSkinWeightProfileName_Male string
---@field AvatarOpenSkinWeightProfileName_Female string
---@field MemberTimerHandle FTimerHandle
---@field loadedEmoteMontageMap ULuaMapHelper<string, UAnimMontage>
---@field OriginalEmoteIndex number
---@field CurrentEmoteIndex number
---@field RuntimeIgnoreNotifies ULuaArrayHelper<string>
---@field PresetIgnoreNotifies ULuaArrayHelper<string>
---@field CurEmoteRes FCurEmoteRes
---@field CurDeviceLevel number
---@field bIsInterrupt boolean
---@field bEnableTickMatChange boolean
---@field CurAnimLengthForMatChange number
---@field MatChangeTime number
---@field CurEmoteAvatarMatParamArray ULuaArrayHelper<FEmoteAvatarMatParam>
---@field MeshAnimConfigs ULuaMapHelper<number, FMeshPackGenderAnim>
---@field AirCraftTimerHandle FTimerHandle
---@field CurrentAirCraftID number
---@field AdditionData ULuaMapHelper<string, string>
local ULobbyPlayEmoteComponent = {}

---设置当前使用的EmoteHandle，设置的时候会执行StopPlayEmote 如果InEmoteID为-1，则直接使用InEmoteHandle 如果InEmoteID不为-1，且InEmoteHandle为空，则会根据InEmoteID获取EmoteHandle 如果InEmoteID不为-1.且InEmoteHandle不为空，则会直接使用InEmoteHandle，并把当前的EmoteID设置为InEmoteID。
---@param InEmoteID number
---@param InEmoteHandle UBackpackEmoteHandle
---@return boolean
function ULobbyPlayEmoteComponent:SetEmoteHandle(InEmoteID, InEmoteHandle) end

---获取多人表情动画中涉及到的所有Handle
---@param ItemID number
function ULobbyPlayEmoteComponent:GetMultiEmoteHandleMap(ItemID) end

function ULobbyPlayEmoteComponent:GetClothAnimInstance() end

---播放表情的入口
---@param InEmoteId number
---@param InNeedIgnore boolean
---@param bIsLoop boolean
---@return boolean
function ULobbyPlayEmoteComponent:OnPlayEmote(InEmoteId, InNeedIgnore, bIsLoop) end

---发起异步加载  专用于 avatar 异步模式
---@param InEmoteId number
---@param InNeedIgnore boolean
---@param bIsLoop boolean
---@return boolean
function ULobbyPlayEmoteComponent:AsyncLoadEmoteRes(InEmoteId, InNeedIgnore, bIsLoop) end

---@param InEmoteId number
---@param InNeedIgnore boolean
---@param bIsLoop boolean
function ULobbyPlayEmoteComponent:ReceiveAsyncLoadEmoteRes(InEmoteId, InNeedIgnore, bIsLoop) end

function ULobbyPlayEmoteComponent:ScaleActorHideCharacter_HotUpdate() end

---根据当前的EmoteHandle播放表情
---@param InNeedIgnore boolean
---@param bIsLoop boolean
---@return boolean
function ULobbyPlayEmoteComponent:PlayEmoteByCurHandle(InNeedIgnore, bIsLoop) end

---@param EmoteId number
---@param handle UBackpackEmoteHandle
function ULobbyPlayEmoteComponent:LoadCurHandleRes(EmoteId, handle) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteComponent:FillMainRoleAnimPath(softPathList) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteComponent:FillSlotAnimPath(softPathList) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteComponent:FillCustomerPath(softPathList) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteComponent:FillWeaponPath(softPathList) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteComponent:FillGrenadePath(softPathList) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteComponent:FillEtrophyPath(softPathList) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteComponent:FillMulitObjAnimPath(softPathList) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteComponent:FillCameraAnimPath(softPathList) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteComponent:FillSeqAnimPath(softPathList) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteComponent:FillExtraPartAnimPath(softPathList) end

function ULobbyPlayEmoteComponent:StopAllCameraAnimations() end

---@param InAsyncLoadIndex number
function ULobbyPlayEmoteComponent:OnAsyncLoadAllAnimRes(InAsyncLoadIndex) end

---立即播放表情
function ULobbyPlayEmoteComponent:StartPlayEmoteAfterLoadAllAnimRes() end

---设置所有动画的播放位置
---@param InPosition number
function ULobbyPlayEmoteComponent:SetAllAnimationPosition(InPosition) end

---设置是否屏蔽多物体动画中除主角以外的物体动画
---@param bIgnore boolean
function ULobbyPlayEmoteComponent:SetIgnoreOtherObjectsAnimInMultiAnim(bIgnore) end

---@param InPosition number
function ULobbyPlayEmoteComponent:SetSectionEmoteAnimationPosition(InPosition) end

---@param InPosition number
function ULobbyPlayEmoteComponent:SetClothAnimationPosition(InPosition) end

---@param InPosition number
function ULobbyPlayEmoteComponent:SetMainRoleAnimationPosition(InPosition) end

---@param InPosition number
function ULobbyPlayEmoteComponent:SetSlotAnimationPosition(InPosition) end

---@param InPosition number
function ULobbyPlayEmoteComponent:SetMultiEmoteAnimationPosition(InPosition) end

---@param HandlePath string
function ULobbyPlayEmoteComponent:PreLoadEmoteResource(HandlePath) end

function ULobbyPlayEmoteComponent:StartPlayEmote() end

function ULobbyPlayEmoteComponent:DoPlayMainRoleAnim() end

function ULobbyPlayEmoteComponent:DoPlaySeq() end

function ULobbyPlayEmoteComponent:BindingSomeThing() end

function ULobbyPlayEmoteComponent:LevelSeqCallBack() end

function ULobbyPlayEmoteComponent:ReceiveBindingSomeThing() end

function ULobbyPlayEmoteComponent:ReceiveLevelSeqCallBack() end

---@param EmoteId number
---@param Time number
---@param needIgnore boolean
---@param isLoop boolean
---@return boolean
function ULobbyPlayEmoteComponent:PlayEmoteAtSpecificTime(EmoteId, Time, needIgnore, isLoop) end

function ULobbyPlayEmoteComponent:PauseEmoteAll() end

function ULobbyPlayEmoteComponent:StopPlayEmote() end

function ULobbyPlayEmoteComponent:StopPlayEmoteInterruptBlend() end

function ULobbyPlayEmoteComponent:StopPlayEmoteWithoutStopBondage() end

---@param Character ACharacter
function ULobbyPlayEmoteComponent:ForceStopAnimMontage(Character) end

function ULobbyPlayEmoteComponent:StopPlayAvatarEmote() end

function ULobbyPlayEmoteComponent:OnInterruptEmote() end

---@return boolean
function ULobbyPlayEmoteComponent:IsOpenLobbyReset() end

function ULobbyPlayEmoteComponent:ForceOpenLobbyReset() end

function ULobbyPlayEmoteComponent:DoPlayCameraAnim() end

---@return boolean
function ULobbyPlayEmoteComponent:LoadAnimSoftPtrListFromIndex() end

---@param index number
function ULobbyPlayEmoteComponent:OnAsyncLoadEmoteAnimList(index) end

---@param character ACharacter
---@param montage UAnimMontage
function ULobbyPlayEmoteComponent:SetCurMontageInstanceLoop(character, montage) end

function ULobbyPlayEmoteComponent:DoPlaySlotAnim() end

---@param isOn boolean
function ULobbyPlayEmoteComponent:TurnLights(isOn) end

---@return boolean
function ULobbyPlayEmoteComponent:DoPlayEveryMultiAnim() end

function ULobbyPlayEmoteComponent:StopLastEmoteParticle() end

---@param montage UAnimMontage
function ULobbyPlayEmoteComponent:ClearSpawnedActor(montage) end

---@param montage UAnimMontage
---@param SlotName string
function ULobbyPlayEmoteComponent:StopMontageParticle(montage, SlotName) end

function ULobbyPlayEmoteComponent:PlayAvatarMontage() end

function ULobbyPlayEmoteComponent:DoPlayExtraPartMontage() end

---@param bNeedPause boolean
function ULobbyPlayEmoteComponent:DoPauseTimeSliceMat(bNeedPause) end

---@return boolean
function ULobbyPlayEmoteComponent:ShouldIgnoreSliceTimeMat() end

---@param bShouldIgnore boolean
function ULobbyPlayEmoteComponent:SetShouldIgnoreSliceTimeMat(bShouldIgnore) end

---@param SlotKey number
---@param AvatarId number
---@return boolean
function ULobbyPlayEmoteComponent:CheckAvatarNeedPlayMontage(SlotKey, AvatarId) end

---@return number
function ULobbyPlayEmoteComponent:GetCurrentAvatarEmoteState() end

function ULobbyPlayEmoteComponent:DelaySetAvatarAnimDynamicAlpha() end

function ULobbyPlayEmoteComponent:SetBackOwnerTeleport() end

function ULobbyPlayEmoteComponent:GetMultiAnimDatas() end

function ULobbyPlayEmoteComponent:OpenAvatarSKW() end

function ULobbyPlayEmoteComponent:CloseAvatarSKW() end

function ULobbyPlayEmoteComponent:HideAllCharacters() end

function ULobbyPlayEmoteComponent:ShowAllCharacters() end

function ULobbyPlayEmoteComponent:HideAirCraft() end

function ULobbyPlayEmoteComponent:ShowAirCraft() end

function ULobbyPlayEmoteComponent:SetSlotAnimVisible() end

function ULobbyPlayEmoteComponent:ClearMultiEmoteCharacters() end

---@param DeltaTime number
function ULobbyPlayEmoteComponent:CheckAnimStatus(DeltaTime) end

---@param sectionId number
---@return boolean
function ULobbyPlayEmoteComponent:PlayEmoteSection(sectionId) end

---@return boolean
function ULobbyPlayEmoteComponent:EmoteAnimFinishedSuccessfully() end

function ULobbyPlayEmoteComponent:EmoteFinishForAvatarAsyncModule() end

function ULobbyPlayEmoteComponent:ReceiveEmoteFinishForAvatarAsyncModule() end

function ULobbyPlayEmoteComponent:EmotePlayNormalFinished() end

---@return boolean
function ULobbyPlayEmoteComponent:DoesEmoteStop() end

---@return number
function ULobbyPlayEmoteComponent:GetCurrentEmoteId() end

---@param EmoteIndex number
---@return boolean
function ULobbyPlayEmoteComponent:NeedPlayLinkEmotes(EmoteIndex) end

---@param EmoteId number
function ULobbyPlayEmoteComponent:InitLinkEmotePara(EmoteId) end

---@param emoteKey string
---@return boolean
function ULobbyPlayEmoteComponent:IsLoadedEmoteValid(emoteKey) end

---@param alpha number
function ULobbyPlayEmoteComponent:ResetAllClothAlpha(alpha) end

function ULobbyPlayEmoteComponent:OnEmoteAnimEnd() end

function ULobbyPlayEmoteComponent:GetMasterAnimAsset() end

function ULobbyPlayEmoteComponent:GetMasterCameraAnimAsset() end

function ULobbyPlayEmoteComponent:GetSeqAsset() end

---@param SectionName string
function ULobbyPlayEmoteComponent:JumpToEmoteSection(SectionName) end

function ULobbyPlayEmoteComponent:PlayEmoteSound() end

function ULobbyPlayEmoteComponent:PlayEmoteInterruptSound() end

---@return boolean
function ULobbyPlayEmoteComponent:OnPlayEmotePS() end

function ULobbyPlayEmoteComponent:OnStopEmotePS() end

function ULobbyPlayEmoteComponent:OnLoadedEmotePS() end

function ULobbyPlayEmoteComponent:OnLoadedSkillEmote() end

---@return boolean
function ULobbyPlayEmoteComponent:PlaySkillEmote() end

function ULobbyPlayEmoteComponent:StopPlaySkillEmote() end

function ULobbyPlayEmoteComponent:CleanUpAnimSeqEffect() end

---@param IgnoreNotifies ULuaArrayHelper<string>
function ULobbyPlayEmoteComponent:SetIgnoreNotifies(IgnoreNotifies) end

---@param actorPlaying ACharacter
---@param curMontage UAnimMontage
function ULobbyPlayEmoteComponent:SetCurMontageInstIgnoreNotifies(actorPlaying, curMontage) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteComponent:FillMagicEmoteResPath(softPathList) end

function ULobbyPlayEmoteComponent:SetUpCurMatParamArray() end

function ULobbyPlayEmoteComponent:ClearMatChangeData() end

---@return boolean
function ULobbyPlayEmoteComponent:CheckIsInLobby() end

---@param CurMontage UAnimMontage
function ULobbyPlayEmoteComponent:BroadCastAnimInstanceMontageSlotNameChangeDelegate(CurMontage) end

---@return boolean
function ULobbyPlayEmoteComponent:IsWeaponEmote() end

---@param montage UAnimMontage
---@param particle UParticleSystem
function ULobbyPlayEmoteComponent:SetWeaponParticle(montage, particle) end

function ULobbyPlayEmoteComponent:DoPlayWeaponAnim() end

function ULobbyPlayEmoteComponent:StopPlayWeaponEmote() end

function ULobbyPlayEmoteComponent:StopPlayWingAnim() end

function ULobbyPlayEmoteComponent:GetAdditionData() end

---@param additional ULuaMapHelper<string, string>
function ULobbyPlayEmoteComponent:SetAdditionData(additional) end

function ULobbyPlayEmoteComponent:ClearTimedLobbyNotifyData() end

function ULobbyPlayEmoteComponent:StopAdditionalMontage() end

function ULobbyPlayEmoteComponent:SetAdditionalMontage() end

---@param AirCraftId number
function ULobbyPlayEmoteComponent:GenerateAircraftAnim(AirCraftId) end

---@param isShowWeapon boolean
function ULobbyPlayEmoteComponent:DestroyAircraftActor(isShowWeapon) end

---@param Montage UAnimMontage
---@param TempStMesh UStaticMesh
---@param TempAttachSocket string
---@param TempMaterial UMaterialInterface
function ULobbyPlayEmoteComponent:SetTimedLobbyActorNotify(Montage, TempStMesh, TempAttachSocket, TempMaterial) end

---@param Montage UAnimMontage
---@param TempParticleSystem UParticleSystem
---@param SocketName string
function ULobbyPlayEmoteComponent:SetParticleEffectNotify(Montage, TempParticleSystem, SocketName) end

---@param Montage UAnimMontage
---@param TempAkEvent UAkAudioEvent
function ULobbyPlayEmoteComponent:SetAKEvenCppNotify(Montage, TempAkEvent) end

function ULobbyPlayEmoteComponent:StopCurrentEmote() end

function ULobbyPlayEmoteComponent:ReceiveOnPlayEmote() end

function ULobbyPlayEmoteComponent:ReceiveStartPlayEmote() end

function ULobbyPlayEmoteComponent:LevelSeqAnimIsStop() end

function ULobbyPlayEmoteComponent:EndNotifyStateWhenStopEmote() end

function ULobbyPlayEmoteComponent:ClearCurrentCinaCameraActor() end

---@param GenericEmoteId number
---@return number
function ULobbyPlayEmoteComponent:GetSpecialEmoteId(GenericEmoteId) end

function ULobbyPlayEmoteComponent:ClearScaleTimer() end

---@param InEmoteId number
---@param InNeedIgnore boolean
---@param bIsLoop boolean
function ULobbyPlayEmoteComponent:AsyncLoadEmoteResCallSectionAnim(InEmoteId, InNeedIgnore, bIsLoop) end
