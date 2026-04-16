---@meta

---@class ECharacterModeType
---@field Commercial number @商业化
---@field LostTombProfession number @LT职业
ECharacterModeType = {}


---@class FExtraPartAnimAsyncData
---@field GenderType EFlowLightGenderType
---@field AnimPath FSoftObjectPath
FExtraPartAnimAsyncData = {}


---@class FExtraPartAnimAsyncDataArray
---@field ExtraPartAnimAsyncDataArray ULuaArrayHelper<FExtraPartAnimAsyncData>
FExtraPartAnimAsyncDataArray = {}


---@class FExtraPartAsyncData
---@field ExtraPartAsyncData ULuaMapHelper<number, FExtraPartAnimAsyncDataArray> @Key:AvatarSlot Value:ExtraPartAnimAsyncData
FExtraPartAsyncData = {}


---@class FSingleParticleConfigInfo
---@field ParticleSystemPath FSoftObjectPath
---@field ParticleSystemTransform FTransform
---@field SocketName string
FSingleParticleConfigInfo = {}


---@class FParticleAbilityInfo
---@field ParticleArray ULuaArrayHelper<FSingleParticleConfigInfo>
---@field bActive boolean
FParticleAbilityInfo = {}


---@class FWeaponTypeInfo
---@field TypeName string
---@field WeaponIdArray ULuaArrayHelper<number>
FWeaponTypeInfo = {}


---@class FWeaponCountingInfo
---@field WeaponId number
---@field KillNumber number
---@field DisplayType number
---@field DigitColor FVector
---@field ScreenColor FVector
FWeaponCountingInfo = {}


---@class FLobbyAnimSwitchAvatarEvent : ULuaMulticastDelegate
FLobbyAnimSwitchAvatarEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TempUID: string, TempAvatarSuitID: number, TempAvatarIDList: ULuaArrayHelper<number>, TempPlayMontageAvatarList: ULuaArrayHelper<FPlayMontageAvatarInfo>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyAnimSwitchAvatarEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param TempUID string
---@param TempAvatarSuitID number
---@param TempAvatarIDList ULuaArrayHelper<number>
---@param TempPlayMontageAvatarList ULuaArrayHelper<FPlayMontageAvatarInfo>
function FLobbyAnimSwitchAvatarEvent:Broadcast(TempUID, TempAvatarSuitID, TempAvatarIDList, TempPlayMontageAvatarList) end


---@class FLobbyAnimMontagePlayEvent : ULuaMulticastDelegate
FLobbyAnimMontagePlayEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MontageToPlay: UAnimMontage, IsPlay: boolean, PlayRate: number, StartSection: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyAnimMontagePlayEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param MontageToPlay UAnimMontage
---@param IsPlay boolean
---@param PlayRate number
---@param StartSection string
function FLobbyAnimMontagePlayEvent:Broadcast(MontageToPlay, IsPlay, PlayRate, StartSection) end


---@class FLobbyAnimWeaponChangeEvent : ULuaSingleDelegate
FLobbyAnimWeaponChangeEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyAnimWeaponChangeEvent:Bind(Callback, Obj) end

---执行委托
function FLobbyAnimWeaponChangeEvent:Execute() end


---@class FLobbyWeaponAnimAdaptEvent : ULuaSingleDelegate
FLobbyWeaponAnimAdaptEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyWeaponAnimAdaptEvent:Bind(Callback, Obj) end

---执行委托
function FLobbyWeaponAnimAdaptEvent:Execute() end


---@class FLobbyCharacterPosChangeEvent : ULuaSingleDelegate
FLobbyCharacterPosChangeEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyCharacterPosChangeEvent:Bind(Callback, Obj) end

---执行委托
function FLobbyCharacterPosChangeEvent:Execute() end


---@class FLobbyCharacterGenderChangeEvent : ULuaSingleDelegate
FLobbyCharacterGenderChangeEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyCharacterGenderChangeEvent:Bind(Callback, Obj) end

---执行委托
function FLobbyCharacterGenderChangeEvent:Execute() end


---@class FLobbyCharacterSceneTypeChangeEvent : ULuaSingleDelegate
FLobbyCharacterSceneTypeChangeEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyCharacterSceneTypeChangeEvent:Bind(Callback, Obj) end

---执行委托
function FLobbyCharacterSceneTypeChangeEvent:Execute() end


---@class FLobbyResetEvent : ULuaSingleDelegate
FLobbyResetEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyResetEvent:Bind(Callback, Obj) end

---执行委托
function FLobbyResetEvent:Execute() end


---@class FLobbyCharacterRotatingEvent : ULuaSingleDelegate
FLobbyCharacterRotatingEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyCharacterRotatingEvent:Bind(Callback, Obj) end

---执行委托
function FLobbyCharacterRotatingEvent:Execute() end


---@class FLobbyCharacterRotateEndEvent : ULuaSingleDelegate
FLobbyCharacterRotateEndEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyCharacterRotateEndEvent:Bind(Callback, Obj) end

---执行委托
function FLobbyCharacterRotateEndEvent:Execute() end


---@class FLobbyCharacterPlayEmoteEvent : ULuaSingleDelegate
FLobbyCharacterPlayEmoteEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyCharacterPlayEmoteEvent:Bind(Callback, Obj) end

---执行委托
function FLobbyCharacterPlayEmoteEvent:Execute() end


---@class FLobbyPlayEmoteAlphaControlEvent : ULuaSingleDelegate
FLobbyPlayEmoteAlphaControlEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyPlayEmoteAlphaControlEvent:Bind(Callback, Obj) end

---执行委托
function FLobbyPlayEmoteAlphaControlEvent:Execute() end


---@class FLobbyCharacterStopEmoteEvent : ULuaSingleDelegate
FLobbyCharacterStopEmoteEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyCharacterStopEmoteEvent:Bind(Callback, Obj) end

---执行委托
function FLobbyCharacterStopEmoteEvent:Execute() end


---@class FLobbyCharacterPaintTrayEvent : ULuaSingleDelegate
FLobbyCharacterPaintTrayEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyCharacterPaintTrayEvent:Bind(Callback, Obj) end

---执行委托
function FLobbyCharacterPaintTrayEvent:Execute() end


---@class FLobbyEmoteMontagePreStartDelegate : ULuaMulticastDelegate
FLobbyEmoteMontagePreStartDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EmoteIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyEmoteMontagePreStartDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param EmoteIndex number
function FLobbyEmoteMontagePreStartDelegate:Broadcast(EmoteIndex) end


---@class FLobbyEmoteMontageFinishedDelegate : ULuaMulticastDelegate
FLobbyEmoteMontageFinishedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EmoteIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyEmoteMontageFinishedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param EmoteIndex number
function FLobbyEmoteMontageFinishedDelegate:Broadcast(EmoteIndex) end


---@class FLobbyEmoteMontagePlayNormalFinishedDelegate : ULuaMulticastDelegate
FLobbyEmoteMontagePlayNormalFinishedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EmoteIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyEmoteMontagePlayNormalFinishedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param EmoteIndex number
function FLobbyEmoteMontagePlayNormalFinishedDelegate:Broadcast(EmoteIndex) end


---@class FLobbyEmoteMontageFinishedAlphaContolEvent : ULuaMulticastDelegate
FLobbyEmoteMontageFinishedAlphaContolEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EmoteIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyEmoteMontageFinishedAlphaContolEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param EmoteIndex number
function FLobbyEmoteMontageFinishedAlphaContolEvent:Broadcast(EmoteIndex) end


---@class FLobbyEmoteMontageStartDelegate : ULuaMulticastDelegate
FLobbyEmoteMontageStartDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EmoteIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyEmoteMontageStartDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param EmoteIndex number
function FLobbyEmoteMontageStartDelegate:Broadcast(EmoteIndex) end


---@class FLobbyReplayEmoteStartDelegate : ULuaMulticastDelegate
FLobbyReplayEmoteStartDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EmoteIndex: number, LobbyPawn: ASTExtraLobbyCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyReplayEmoteStartDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param EmoteIndex number
---@param LobbyPawn ASTExtraLobbyCharacter
function FLobbyReplayEmoteStartDelegate:Broadcast(EmoteIndex, LobbyPawn) end


---@class FLobbyAvatarPutonDelegate : ULuaMulticastDelegate
FLobbyAvatarPutonDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurAvatarHandle: UBackpackAvatarHandle) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyAvatarPutonDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurAvatarHandle UBackpackAvatarHandle
function FLobbyAvatarPutonDelegate:Broadcast(CurAvatarHandle) end


---@class FLobbyAvatarPutoffDelegate : ULuaMulticastDelegate
FLobbyAvatarPutoffDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurAvatarHandle: UBackpackAvatarHandle) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyAvatarPutoffDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurAvatarHandle UBackpackAvatarHandle
function FLobbyAvatarPutoffDelegate:Broadcast(CurAvatarHandle) end


---@class FLobbyAnimInstanceMontageSlotNameChangeDelegate : ULuaMulticastDelegate
FLobbyAnimInstanceMontageSlotNameChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurMontage: UAnimMontage) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyAnimInstanceMontageSlotNameChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurMontage UAnimMontage
function FLobbyAnimInstanceMontageSlotNameChangeDelegate:Broadcast(CurMontage) end


---@class FLobbyAvatarAsyncModuleRenderFinishEvent : ULuaSingleDelegate
FLobbyAvatarAsyncModuleRenderFinishEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyAvatarAsyncModuleRenderFinishEvent:Bind(Callback, Obj) end

---执行委托
function FLobbyAvatarAsyncModuleRenderFinishEvent:Execute() end


---@class FLobbyPawnStateChangedDelegate : ULuaMulticastDelegate
FLobbyPawnStateChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ChangedState: ELobbyPawnState, ChangeType: ELobbyPawnStateChangeType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyPawnStateChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ChangedState ELobbyPawnState
---@param ChangeType ELobbyPawnStateChangeType
function FLobbyPawnStateChangedDelegate:Broadcast(ChangedState, ChangeType) end


---@class ULod00UseSituation: UDataAsset
---@field bEnableLod00 boolean
---@field EnableTeamMateSystemTag ULuaArrayHelper<string>
---@field DeviceLevel number
---@field CloseSystemTag ULuaArrayHelper<string>
---@field MinGPULevelEnforcedLod00ForPC number
local ULod00UseSituation = {}


---@class UBaseWeaponTypeConfig: UDataAsset
---@field WeaponTypeIdArray ULuaArrayHelper<FWeaponTypeInfo>
local UBaseWeaponTypeConfig = {}


---@class ASTExtraLobbyCharacter: ACharacter, IWeaponOwnerProxyFactory
---@field lobbyCharacterSceneTypeChangeEvent FLobbyCharacterSceneTypeChangeEvent
---@field bEnableAvatarStylePose boolean
---@field bCurAvatarHasPose boolean
---@field curAvatarStyle string
---@field NewBodyWeaponAnimCompTag string
---@field CppDsttag string
---@field bUseCurWeaponDefineID boolean
---@field bJudgeWeaponIDIgnoreEntity boolean
---@field charSceneType ECharacterShowSceneType
---@field charModeType ECharacterModeType
---@field LobbyPawnStateChangedDelegate FLobbyPawnStateChangedDelegate
---@field ActiveLobbyPawnStates ULuaSetHelper<ELobbyPawnState>
---@field lobbyPosIdx ELobbyCharacterPosIndex
---@field localLobbyPos number
---@field lobbyCharGenderChangeDelegate FLobbyCharacterGenderChangeEvent
---@field CurWeaponCountingInfo FWeaponCountingInfo
---@field curEquipOffHandWeapon ULuaMapHelper<number, ASTExtraWeapon>
---@field LobbyBackWeaponFinalOffsetTransforms ULuaMapHelper<string, FTransform>
---@field bUseWingClothBoneRetargetAdapt boolean
---@field AnimPoseSwitchers ULuaArrayHelper<FLobbyAnimPoseTagSwitcher>
---@field LobbyAvatarStyleAnims ULuaArrayHelper<FLobbyGenderAnim>
---@field ForceOpenAvatarExclusivePoseSystems ULuaArrayHelper<string>
---@field ForceOpenAvatarStylePoseSystems ULuaArrayHelper<string>
---@field LobbyPoseAnims ULuaArrayHelper<FLobbyAnimConfigData>
---@field LobbyNewBodyPoseAnims ULuaArrayHelper<FLobbyAnimConfigData>
---@field LobbyOldBodyDefaultPoseAnims ULuaArrayHelper<FLobbyAnimConfigData>
---@field SpIdleSlotMap ULuaMapHelper<number, FLobbyAnimConfigDataList>
---@field SpIdleAvatarAnimListSlotMap ULuaMapHelper<number, FAvatarAnimList>
---@field DefaultLobbyPoseAnims ULuaArrayHelper<FLobbyAnimConfigData>
---@field lobbyAnimMontagePlayDelegate FLobbyAnimMontagePlayEvent
---@field SequenceMontagePlayDelegate FLobbyAnimMontagePlayEvent
---@field lobbyAnimWeaponChangeDelegate FLobbyAnimWeaponChangeEvent
---@field LobbyWeaponAnimAdaptDelegate FLobbyWeaponAnimAdaptEvent
---@field lobbyCharPosChangeDelegate FLobbyCharacterPosChangeEvent
---@field AvatarParticleIgnoreNotifies ULuaArrayHelper<string>
---@field AnimSeqIgnoreNotifies ULuaArrayHelper<string>
---@field bCharacterShouldShow boolean
---@field EmoteMontagePreStartEvent FLobbyEmoteMontagePreStartDelegate
---@field EmoteMontageStartEvent FLobbyEmoteMontageStartDelegate
---@field ReplayEmoteStartEvent FLobbyReplayEmoteStartDelegate
---@field EmoteMontageFinishedEvent FLobbyEmoteMontageFinishedDelegate
---@field EmoteMontagePlayNormalFinishedEvent FLobbyEmoteMontagePlayNormalFinishedDelegate
---@field PaintTrayEvent FLobbyCharacterPaintTrayEvent
---@field EmoteMontageFinishedAlphaContolEvent FLobbyEmoteMontageFinishedAlphaContolEvent
---@field LobbyAnimInstanceMontageSlotNameChangeDelegate FLobbyAnimInstanceMontageSlotNameChangeDelegate
---@field LobbyResetEvent FLobbyResetEvent
---@field RotatingEvent FLobbyCharacterRotatingEvent
---@field RotateEndEvent FLobbyCharacterRotateEndEvent
---@field LobbyCharacterPlayEmoteEvent FLobbyCharacterPlayEmoteEvent
---@field LobbyAvatarAsyncModuleRenderFinishEvent FLobbyAvatarAsyncModuleRenderFinishEvent
---@field LobbyAvatarAsyncModuleAfterDoFinalRenderEvent FLobbyAvatarAsyncModuleRenderFinishEvent
---@field LobbyPlayEmoteAlphaControlEvent FLobbyPlayEmoteAlphaControlEvent
---@field LobbyCharacterStopEmoteEvent FLobbyCharacterStopEmoteEvent
---@field bIsMainCharacter boolean
---@field ProfileRenderTargetSize number
---@field bAutoSetupRenderTarget boolean
---@field ProfileCaptureDelayTime number
---@field SkirtPoseType ESkirtPoseType
---@field CurMainSkelHairAlpha number
---@field MagicEmoteEffectID number
---@field bIsInMagicEmote boolean
---@field bIsInMorph boolean
---@field CharacterUId string
---@field UsedCharacterIdArray ULuaArrayHelper<string>
---@field CharacterRootTrans FTransform
---@field ModelTransfrom FTransform
---@field bIsTargetCharacter boolean
---@field bHasTriggerEffect boolean
---@field EmoteEIdleAnimPath string
---@field EmoteMeshPath string
---@field ExistTime number
---@field MagicEmoteTablePathString string
---@field CurrentFacialEmoteId number
---@field FacialEmoteIdIgnoreHidden number
---@field WeaponSkinMappingTablePath string
---@field EWeaponSkinMappingTablePath string
---@field ERedWeaponPoseMappingPath string
---@field GripWeaponIdleTypeConfigPath string
---@field RecordBeforePutonGlideTrailAvatarId ULuaMapHelper<number, number>
---@field RotatedPixProduct number
---@field RotateThresholdMin number
---@field RotateThresholdMax number
---@field DefaultRotateThreshold number
---@field CurrentRotateThreshold number
---@field LobbyAnimSwitchAvatarDelegate FLobbyAnimSwitchAvatarEvent
---@field SwitchAvatarDelayHandle FTimerHandle
---@field EnableGripWeaponIdle boolean
---@field CurParticleAbilityMap ULuaMapHelper<number, FParticleAbilityInfo>
---@field AL_RandomIdleBPPath string
---@field PendantScaleCache ULuaMapHelper<UMeshComponent, number>
---@field bHotUpdate_CheckOpenSearchAllDescendants boolean
---@field ConsiderHiddenList ULuaArrayHelper<string>
local ASTExtraLobbyCharacter = {}

function ASTExtraLobbyCharacter:OnReceiveBeginPlay() end

---@param DeltaTime number
function ASTExtraLobbyCharacter:OnReceiveTick(DeltaTime) end

function ASTExtraLobbyCharacter:OnReceiveEndPlay() end

---@param sceneType ECharacterShowSceneType
---@param pos ELobbyCharacterPosIndex
---@param gender ELobbyCharacterAnimType
function ASTExtraLobbyCharacter:SetLobbyCharacterProperty(sceneType, pos, gender) end

---@return ECharacterModeType
function ASTExtraLobbyCharacter:GetCharModeType() end

---@param ModeType ECharacterModeType
function ASTExtraLobbyCharacter:SetCharModeType(ModeType) end

---@return ECharacterShowSceneType
function ASTExtraLobbyCharacter:GetCharSceneType() end

---@param sceneType ECharacterShowSceneType
function ASTExtraLobbyCharacter:SetCharSceneType(sceneType) end

---@param bEnable boolean
function ASTExtraLobbyCharacter:SetEnableAvatarStylePose(bEnable) end

---@param isIn boolean
function ASTExtraLobbyCharacter:SetNowInGlideTrail(isIn) end

---@param bshow boolean
function ASTExtraLobbyCharacter:CallShowWeapon(bshow) end

---@param SlotType number
---@param IsEquipped boolean
function ASTExtraLobbyCharacter:OnAvatarEquiped(SlotType, IsEquipped) end

---@param SlotType number
---@param IsEquipped boolean
function ASTExtraLobbyCharacter:BPOnAvatarEquipedEnd(SlotType, IsEquipped) end

---@return ELobbyCharacterPosIndex
function ASTExtraLobbyCharacter:GetLobbyPosIndex() end

---@param pos ELobbyCharacterPosIndex
function ASTExtraLobbyCharacter:SetLobbyPosIndex(pos) end

---@param pos number
function ASTExtraLobbyCharacter:SetLobbyPosIndexInAvatarScene(pos) end

---@param InState ELobbyPawnState
function ASTExtraLobbyCharacter:AddLobbyPawnState(InState) end

---@param InState ELobbyPawnState
function ASTExtraLobbyCharacter:RemoveLobbyPawnState(InState) end

---@param InState ELobbyPawnState
---@return boolean
function ASTExtraLobbyCharacter:HasLobbyPawnState(InState) end

function ASTExtraLobbyCharacter:GetLobbyPawnStates() end

---@return ELobbyCharacterAnimType
function ASTExtraLobbyCharacter:GetLobbyAnimGender() end

---@param gender ELobbyCharacterAnimType
function ASTExtraLobbyCharacter:SetLobbyAnimGender(gender) end

---@return number
function ASTExtraLobbyCharacter:GetCurWeaponId() end

---@param weapon ASTExtraWeapon
function ASTExtraLobbyCharacter:EquipWeapon(weapon) end

---@param weapon ASTExtraWeapon
function ASTExtraLobbyCharacter:UnEquipWeapon(weapon) end

---@param LastWeapon ASTExtraWeapon
---@param EquipWeaponItem ASTExtraWeapon
---@return boolean
function ASTExtraLobbyCharacter:EquipWeapon_AsyncAvatar(LastWeapon, EquipWeaponItem) end

---@param weapon ASTExtraWeapon
---@return boolean
function ASTExtraLobbyCharacter:UnEquipWeapon_AsyncAvatar(weapon) end

---@param LastWeapon ASTExtraWeapon
---@param EquipWeaponItem ASTExtraWeapon
---@param posIndex number
---@return boolean
function ASTExtraLobbyCharacter:EquipOffHandWeapon_AsyncAvatar(LastWeapon, EquipWeaponItem, posIndex) end

---@param weapon ASTExtraWeapon
---@param posIndex number
---@return boolean
function ASTExtraLobbyCharacter:UnEquipOffHandWeapon_AsyncAvatar(weapon, posIndex) end

---@param compId number
function ASTExtraLobbyCharacter:EquipWeaponComponent(compId) end

---@param compId number
function ASTExtraLobbyCharacter:UnEquipWeaponComponent(compId) end

---@param WeaponComponent ASTExtraWeapon
---@param compId number
---@param posIndex number
function ASTExtraLobbyCharacter:EquipOffHandWeaponComponent(WeaponComponent, compId, posIndex) end

---@param WeaponComponent ASTExtraWeapon
---@param compId number
---@param posIndex number
function ASTExtraLobbyCharacter:UnEquipOffHandWeaponComponent(WeaponComponent, compId, posIndex) end

function ASTExtraLobbyCharacter:RefreshGripAnim() end

---@param weapon ASTExtraWeapon
---@param posIndex number
---@return string
function ASTExtraLobbyCharacter:GetWeaponAttachSocketName(weapon, posIndex) end

---@param weapon ASTExtraWeapon
---@param posIndex number
---@return string
function ASTExtraLobbyCharacter:GetWeaponBackpackAttachSocketName(weapon, posIndex) end

---@param weapon ASTExtraWeapon
---@param PosIndex number
function ASTExtraLobbyCharacter:AttachMeshToSocketLobby(weapon, PosIndex) end

---@param ConfigMapIn ULuaMapHelper<string, FTransform>
---@return boolean
function ASTExtraLobbyCharacter:UpdateBackWeaponFinalOffset(ConfigMapIn) end

---@param weapon ASTExtraWeapon
---@param posIndex number
function ASTExtraLobbyCharacter:EquipOffhandWeapon(weapon, posIndex) end

---@param weapon ASTExtraWeapon
---@param posIndex number
function ASTExtraLobbyCharacter:UnEquipOffhandWeapon(weapon, posIndex) end

---for bone retarget adapt start
function ASTExtraLobbyCharacter:RefreshWeaponAdaptAnimParam() end

function ASTExtraLobbyCharacter:RefreshClothAdaptAnimParam() end

---for bone retarget adapt end
function ASTExtraLobbyCharacter:CheckCurHoldSpecialWeapon() end

---@param IsPlayingMontage boolean
---@return number
function ASTExtraLobbyCharacter:GetCurBagLevel(IsPlayingMontage) end

---@param InBoneName string
---@param InIsHide boolean
---@param InSlotTypes ULuaArrayHelper<EAvatarSlotType>
function ASTExtraLobbyCharacter:LobbyHideBoneByAvatarSlot(InBoneName, InIsHide, InSlotTypes) end

---@param InSystemTag string
---@return boolean
function ASTExtraLobbyCharacter:IsForceOpenAvatarExclusivePose(InSystemTag) end

---@param InSystemTag string
---@return boolean
function ASTExtraLobbyCharacter:IsForceOpenAvatarStylePose(InSystemTag) end

function ASTExtraLobbyCharacter:HandleOnCharAnimLoadingFinished() end

function ASTExtraLobbyCharacter:ForceAnimationUpdateAtOnce() end

---@param GenderType ELobbyCharacterAnimType
---@param StyleName string
function ASTExtraLobbyCharacter:GetAvatarStyleAnimAssetByGender(GenderType, StyleName) end

---@param GenderType ELobbyCharacterAnimType
function ASTExtraLobbyCharacter:GetSpecialAvatarStyleAnimAssetByGender(GenderType) end

function ASTExtraLobbyCharacter:GetClothAnimInstance() end

function ASTExtraLobbyCharacter:OnLobbyResetEventTrigger() end

function ASTExtraLobbyCharacter:OnRotatingEventTrigger() end

function ASTExtraLobbyCharacter:OnRotateStoppedEventTrigger() end

---@param EmoteId number
---@param needIgnoreNotify boolean
---@param bNeedLoop boolean
---@return boolean
function ASTExtraLobbyCharacter:OnPlayEmote(EmoteId, needIgnoreNotify, bNeedLoop) end

function ASTExtraLobbyCharacter:StopPlayEmote() end

function ASTExtraLobbyCharacter:StopPlayEmoteInterruptBlend() end

---@param bIsCan boolean
function ASTExtraLobbyCharacter:SetCanTouchRollPawn(bIsCan) end

---@return number
function ASTExtraLobbyCharacter:GetCurrentEmoteId() end

---@return boolean
function ASTExtraLobbyCharacter:GetCurrentEmoteIgnoreState() end

---@param SectionName string
function ASTExtraLobbyCharacter:JumpToEmoteSection(SectionName) end

---@param PoseTag string
---@param bIsPlay boolean
function ASTExtraLobbyCharacter:ResetLobbyPoseAnimByPosTag(PoseTag, bIsPlay) end

---@param PoseTag string
---@param bIsOpen boolean
function ASTExtraLobbyCharacter:SetAnimPoseTagSwitcher(PoseTag, bIsOpen) end

---@param PoseTag string
---@param bIsOpen boolean
---@return boolean
function ASTExtraLobbyCharacter:SetAnimPoseTagSwitcher_AvatarAsync(PoseTag, bIsOpen) end

---@param PoseTag string
---@return boolean
function ASTExtraLobbyCharacter:GetAnimPoseTagSwitcher(PoseTag) end

---@param bDeferred boolean
function ASTExtraLobbyCharacter:CaptureProfile(bDeferred) end

---@return boolean
function ASTExtraLobbyCharacter:SetupRenderTarget() end

function ASTExtraLobbyCharacter:ShutdownRenderTarget() end

function ASTExtraLobbyCharacter:ProfileShot() end

function ASTExtraLobbyCharacter:PreProfileShot() end

---@param TargetFileName string
---@return string
function ASTExtraLobbyCharacter:PostProfileShot(TargetFileName) end

---@param InParentAnimIns UAnimInstance
function ASTExtraLobbyCharacter:ResetSubAnimInstanceDynamic(InParentAnimIns) end

function ASTExtraLobbyCharacter:ResetCharacterPhysics() end

function ASTExtraLobbyCharacter:ResetAllAvatarPhysics() end

function ASTExtraLobbyCharacter:ResetAllPhysics() end

---@return boolean
function ASTExtraLobbyCharacter:GetIsPlayingAnyMontage() end

---@param SlotType number
---@param bIsClear boolean
function ASTExtraLobbyCharacter:SetTheseSlotAnimInstanceIdleAnim(SlotType, bIsClear) end

---@param InAlpha number
---@param FrameNum number
function ASTExtraLobbyCharacter:SetAllSlotAlphaContinueFrame(InAlpha, FrameNum) end

---@param InAlpha number
---@param bIsImmediately boolean
---@param InAlphaState EAlphaStateEnum
function ASTExtraLobbyCharacter:SetAllSlotAlpha(InAlpha, bIsImmediately, InAlphaState) end

---@param SlotID number
---@param InAlpha number
---@param bIsImmediately boolean
function ASTExtraLobbyCharacter:SetSingleSlotAlpha(SlotID, InAlpha, bIsImmediately) end

function ASTExtraLobbyCharacter:TriggerBeUsedCharacterMagicEmote() end

function ASTExtraLobbyCharacter:TriggerRestMagicEmote() end

---@param BeUsedCharacterArray ULuaArrayHelper<string>
---@param EventType number
---@param EffectId number
---@param InFromWho ASTExtraLobbyCharacter
function ASTExtraLobbyCharacter:MagicEmoteEventFunc(BeUsedCharacterArray, EventType, EffectId, InFromWho) end

---@param InStr string
---@return FTransform
function ASTExtraLobbyCharacter:String2Trans(InStr) end

---@param Path string
---@param ParticleTrans FTransform
function ASTExtraLobbyCharacter:LoadAndSpawnSelectParticle(Path, ParticleTrans) end

---@param MeshPath string
---@param AnimPath string
---@param MeshOffset FTransform
---@param ModelTime number
---@param TurnBackSmokeAdvenceTime number
---@param BeUsedCharacterId ULuaArrayHelper<string>
---@param EffectID number
---@param InFromWho ASTExtraLobbyCharacter
function ASTExtraLobbyCharacter:MagicSpawnModel(MeshPath, AnimPath, MeshOffset, ModelTime, TurnBackSmokeAdvenceTime, BeUsedCharacterId, EffectID, InFromWho) end

---@param Path string
---@param AfterChangeSmokeParticleOffsetString string
function ASTExtraLobbyCharacter:LoadAndSpawnAfterChangeParticle(Path, AfterChangeSmokeParticleOffsetString) end

---@param BeUsedCharacterId ULuaArrayHelper<string>
---@param EventType number
---@param EffectId number
function ASTExtraLobbyCharacter:MagicEmoteEventBroadcast(BeUsedCharacterId, EventType, EffectId) end

---@param BeUsedCharacterId ULuaArrayHelper<string>
---@param EventType number
---@param EffectId number
---@param ExsitTime number
---@param AdvanceTime number
function ASTExtraLobbyCharacter:MagicEmoteEventBroadcastAndSetTimer(BeUsedCharacterId, EventType, EffectId, ExsitTime, AdvanceTime) end

---@param Path string
---@param ParticleTrans FTransform
---@param InFromWho ASTExtraLobbyCharacter
function ASTExtraLobbyCharacter:TryLoadAndSpawnParticle(Path, ParticleTrans, InFromWho) end

function ASTExtraLobbyCharacter:BroadCastStopBondageEffectDelegate() end

---@param BeUsedCharacterId ULuaArrayHelper<string>
---@param InFromWho ASTExtraLobbyCharacter
function ASTExtraLobbyCharacter:StopEmoteBondageEffect(BeUsedCharacterId, InFromWho) end

function ASTExtraLobbyCharacter:ClearMagicEmoteEffect() end

function ASTExtraLobbyCharacter:ClearMontageParticle() end

function ASTExtraLobbyCharacter:SetCharacterHide() end

function ASTExtraLobbyCharacter:SetCharacterShow() end

function ASTExtraLobbyCharacter:ClearEffectWithoutPhysicsAlphaControll() end

function ASTExtraLobbyCharacter:ClearAllTimerAndParticle() end

---@param Item string
function ASTExtraLobbyCharacter:UsedCharacterIdArrayAddItem(Item) end

---@param bUpdateRotator boolean
function ASTExtraLobbyCharacter:UpdateCharacterRootTrans(bUpdateRotator) end

---@param bUpdateRotator boolean
---@return FTransform
function ASTExtraLobbyCharacter:GetCharacterRootTrans(bUpdateRotator) end

---@param FacialEmoteIndex number
function ASTExtraLobbyCharacter:SetCurCharacterFacialEmoteByIndex(FacialEmoteIndex) end

function ASTExtraLobbyCharacter:ClearCurCharacterFacialEmote() end

---@return string
function ASTExtraLobbyCharacter:CheckPinchFaceBlockedAndAvatarName() end

---@return boolean
function ASTExtraLobbyCharacter:CheckIsPinchFace() end

function ASTExtraLobbyCharacter:RemoveAvatarAnimBP() end

---@return boolean
function ASTExtraLobbyCharacter:GetLOD00State() end

---@param EnableOrNot boolean
---@param IdleTypeConfig FGripWeaponIdleTypeConfig
function ASTExtraLobbyCharacter:EnableGripWingRedWeaponIdleOrDisable(EnableOrNot, IdleTypeConfig) end

---@param bForceClose boolean
function ASTExtraLobbyCharacter:SetCharacterGripWeaponIdle(bForceClose) end

---@param bForceClose boolean
function ASTExtraLobbyCharacter:OnRepAsyncSetCharacterGripWeaponIdle(bForceClose) end

---@return boolean
function ASTExtraLobbyCharacter:IsGripWeaponIdleExsit() end

---@return boolean
function ASTExtraLobbyCharacter:ReceiveIsGripWeaponIdleExsit() end

---@param WeaponSkinId number
---@return number
function ASTExtraLobbyCharacter:GetBaseWeaponId(WeaponSkinId) end

---@param SlotId number
function ASTExtraLobbyCharacter:GetAvatarBehaviorFeatureAnimInstanceBySlotId(SlotId) end

---@param SlotType number
function ASTExtraLobbyCharacter:UpdateExtraPartIdleAnim(SlotType) end

---@param AvatarHandle UBackpackAvatarHandle
function ASTExtraLobbyCharacter:UpdateCurrentRotateThreshold(AvatarHandle) end

function ASTExtraLobbyCharacter:OnFpsChanged() end

---@param CurWeapon ASTExtraWeapon
---@param ResId number
---@return FTransform
function ASTExtraLobbyCharacter:GetWeaponSlotPartRelativeTrans(CurWeapon, ResId) end

---@param CurWeapon ASTExtraWeapon
---@param ResId number
---@param InTrans FTransform
function ASTExtraLobbyCharacter:SetWeaponSlotPartRelativeTrans(CurWeapon, ResId, InTrans) end

---@param CurWeapon ASTExtraWeapon
function ASTExtraLobbyCharacter:RefreshAllSlotRelativeTrans(CurWeapon) end

---@param TempUID string
---@param TempAvatarSuitID number
---@param TempAvatarIDList ULuaArrayHelper<number>
---@param TempPlayMontageAvatarList ULuaArrayHelper<FPlayMontageAvatarInfo>
function ASTExtraLobbyCharacter:SwitchAvatar(TempUID, TempAvatarSuitID, TempAvatarIDList, TempPlayMontageAvatarList) end

---@param TempUID string
---@param TempAvatarSuitID number
---@param TempAvatarIDList ULuaArrayHelper<number>
---@param TempPlayMontageAvatarList ULuaArrayHelper<FPlayMontageAvatarInfo>
function ASTExtraLobbyCharacter:DoSwitchAvatar(TempUID, TempAvatarSuitID, TempAvatarIDList, TempPlayMontageAvatarList) end

function ASTExtraLobbyCharacter:GetWingAnimInstances() end

---@param InWeapon ASTExtraWeapon
---@return boolean
function ASTExtraLobbyCharacter:AttachOtherHandMeshToSocket(InWeapon) end

---@param NodeTag string
---@param Position number
function ASTExtraLobbyCharacter:ReSetRedWeaponIdleAnimPosition(NodeTag, Position) end

---@return boolean
function ASTExtraLobbyCharacter:CheckCurAvatarNeedResetRedWeaponAnimPosition() end

---@param ResId number
---@param CurHandle UBackpackCharacterGeneralEffectAbilityHandle
function ASTExtraLobbyCharacter:EquipParticleAbilityByResId(ResId, CurHandle) end

---@param ResId number
function ASTExtraLobbyCharacter:UnEquipParticleAbilityByResId(ResId) end

---@param ResId number
function ASTExtraLobbyCharacter:DeactiveParticleAbility(ResId) end

---@param ResId number
---@param bForceReactivate boolean
function ASTExtraLobbyCharacter:ReactiveParticleAbility(ResId, bForceReactivate) end

function ASTExtraLobbyCharacter:ClearAllParticleAbility() end

---@param InAnimIns UAnimInstance
function ASTExtraLobbyCharacter:TrySwitchLobbyEmotePlayAdaptOn(InAnimIns) end

---@param InClothHandle UBackpackAvatarHandle
function ASTExtraLobbyCharacter:RefreshWeaponAttachMeshAfterAvatarChange(InClothHandle) end

---@param DeltaTime number
function ASTExtraLobbyCharacter:AvatarLogicRandom_IdleTickFunc(DeltaTime) end

---@param SlotId number
function ASTExtraLobbyCharacter:AvatarLogicRandom_UpdateSlotRandomIdle(SlotId) end

function ASTExtraLobbyCharacter:AvatarLogicRandom_UpdateAvatarRandomIdleConfig() end

---@return boolean
function ASTExtraLobbyCharacter:CanEnableRandomIdleMode() end

---@return boolean
function ASTExtraLobbyCharacter:IsInSpIdleMode() end

function ASTExtraLobbyCharacter:EndNotifyState() end

---@param InSlotType EAvatarSlotType
---@return number
function ASTExtraLobbyCharacter:GetCurAvatarIdBySlot(InSlotType) end

---@param bLock boolean
function ASTExtraLobbyCharacter:SetbLockToDisassemblingState(bLock) end

---@return boolean
function ASTExtraLobbyCharacter:CheckIsInAvatarAsyncLoad() end

---@return boolean
function ASTExtraLobbyCharacter:AvatarAsync_SkirtAnimBPCheckNeedUpdateSpIdle() end

---@return boolean
function ASTExtraLobbyCharacter:AvatarAsync_CheckNeedRefreshClothAdaptAnimParam() end

---@param InGenderType ELobbyCharacterAnimType
---@return boolean
function ASTExtraLobbyCharacter:AvatarAsync_CheckNeedSetGender(InGenderType) end

function ASTExtraLobbyCharacter:AvatarAsync_SyncUpdateAvatar() end

---@param InSceneType ECharacterShowSceneType
---@return boolean
function ASTExtraLobbyCharacter:AvatarAsync_CheckNeedSetSceneType(InSceneType) end

---@param PosIndex number
---@return boolean
function ASTExtraLobbyCharacter:AvatarAsync_CheckNeedSetPosIndex(PosIndex) end

---@return boolean
function ASTExtraLobbyCharacter:AvatarAsync_CheckNeedUpdateAnimParam() end

function ASTExtraLobbyCharacter:HideAllWeaponByConsider() end

function ASTExtraLobbyCharacter:ShowAllWeaponByConsider() end

---@param InBodyType number
function ASTExtraLobbyCharacter:OnAvatarBodyTypeChanged(InBodyType) end

function ASTExtraLobbyCharacter:SlotIdleAnimUpdate() end

---@param InWeapon ASTExtraWeapon
---@param bIsHide boolean
function ASTExtraLobbyCharacter:HideOrShowPendantByScale(InWeapon, bIsHide) end

---@param bIsHide boolean
function ASTExtraLobbyCharacter:HideOrShowAllWeaponPendantByConsider(bIsHide) end

---@return boolean
function ASTExtraLobbyCharacter:AvatarAsync_CheckNeedHideWeapon() end

---@param InTargetSkelMeshComp USkeletalMeshComponent
---@return boolean
function ASTExtraLobbyCharacter:CheckOpenSearchAllDescendants(InTargetSkelMeshComp) end

---@param InTargetSkelMeshComp USkeletalMeshComponent
---@return boolean
function ASTExtraLobbyCharacter:BP_CheckOpenSearchAllDescendants(InTargetSkelMeshComp) end

---@return boolean
function ASTExtraLobbyCharacter:MainHairAlphaUpdate_AsyncAvatar() end

---@param bShouldShow boolean
function ASTExtraLobbyCharacter:SetAllCharacterTimedActorVisibility(bShouldShow) end

---@param SkeletalComp USkeletalMeshComponent
function ASTExtraLobbyCharacter:GetActorsOnSocket(SkeletalComp) end

function ASTExtraLobbyCharacter:RefreshAvatarParticleAfterAircraftTimer() end

---@param SlotId number
function ASTExtraLobbyCharacter:ClearSpidleMap(SlotId) end

---@param SlotId number
function ASTExtraLobbyCharacter:ClearSpIdleAvatarAnimListSlotMapMap(SlotId) end
