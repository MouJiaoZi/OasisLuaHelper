---@meta

---@class FWeaponAbilityAvatars
---@field WeaponMain1AbilityDefineIDs ULuaArrayHelper<FItemDefineID>
---@field WeaponMain2AbilityDefineIDs ULuaArrayHelper<FItemDefineID>
---@field WeaponPistolAbilityDefineIDs ULuaArrayHelper<FItemDefineID>
---@field WeaponKnifeAbilityDefineIDs ULuaArrayHelper<FItemDefineID>
FWeaponAbilityAvatars = {}


---@class FLobbyWeapons
---@field bWeaponTemp1Used boolean
---@field bWeaponTemp2Used boolean
FLobbyWeapons = {}


---@class FWeaponAttachment
---@field Suit0WeaponAttachment ULuaMapHelper<number, FGameModePlayerItemList>
---@field Suit1WeaponAttachment ULuaMapHelper<number, FGameModePlayerItemList>
---@field Suit2WeaponAttachment ULuaMapHelper<number, FGameModePlayerItemList>
---@field Suit3WeaponAttachment ULuaMapHelper<number, FGameModePlayerItemList>
---@field Suit0WeaponsCache ULuaSetHelper<number>
---@field Suit1WeaponsCache ULuaSetHelper<number>
---@field Suit2WeaponsCache ULuaSetHelper<number>
---@field Suit3WeaponsCache ULuaSetHelper<number>
---@field WeaponAbilityCache ULuaSetHelper<number>
---@field WeaponAbilityToAbilityItemID ULuaMapHelper<number, FItemDefineID>
FWeaponAttachment = {}


---@class FLoadLobbyWeapon : ULuaMulticastDelegate
FLoadLobbyWeapon = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LoadedWepaon: ASTExtraWeapon, WeaponItemID: number, WeaponSlot: number, SuitIndex: number, AsyncLoadMeshReqID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLoadLobbyWeapon:Add(Callback, Obj) end

---触发 Lua 广播
---@param LoadedWepaon ASTExtraWeapon
---@param WeaponItemID number
---@param WeaponSlot number
---@param SuitIndex number
---@param AsyncLoadMeshReqID number
function FLoadLobbyWeapon:Broadcast(LoadedWepaon, WeaponItemID, WeaponSlot, SuitIndex, AsyncLoadMeshReqID) end


---@class FLoadWeaponRequireAttachmentSkinData : ULuaMulticastDelegate
FLoadWeaponRequireAttachmentSkinData = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SuitIndex: number, SlotID: number, WeaponDefineID: FItemDefineID, WeaponTargetAvatarArray: ULuaArrayHelper<FItemDefineID>, InWeaponSkinBPID: number, InAsyncReqID: number, InWeaponAbilityBase: ULuaArrayHelper<FItemDefineID>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLoadWeaponRequireAttachmentSkinData:Add(Callback, Obj) end

---触发 Lua 广播
---@param SuitIndex number
---@param SlotID number
---@param WeaponDefineID FItemDefineID
---@param WeaponTargetAvatarArray ULuaArrayHelper<FItemDefineID>
---@param InWeaponSkinBPID number
---@param InAsyncReqID number
---@param InWeaponAbilityBase ULuaArrayHelper<FItemDefineID>
function FLoadWeaponRequireAttachmentSkinData:Broadcast(SuitIndex, SlotID, WeaponDefineID, WeaponTargetAvatarArray, InWeaponSkinBPID, InAsyncReqID, InWeaponAbilityBase) end


---@class FLoadCharacterAndWeaponsOnChangeSuitIndex : ULuaMulticastDelegate
FLoadCharacterAndWeaponsOnChangeSuitIndex = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InSuitIndex: number, InAsyncID: number, CharacterAvatarArray: ULuaArrayHelper<FItemDefineID>, WeaponMain1AvatarArray: ULuaArrayHelper<FItemDefineID>, WeaponMain2AvatarArray: ULuaArrayHelper<FItemDefineID>, WeaponPistolAvatarArray: ULuaArrayHelper<FItemDefineID>, WeaponKnifeAvatarArray: ULuaArrayHelper<FItemDefineID>, WeaponsItemDefineID: ULuaArrayHelper<FItemDefineID>, WeaponAbilityAvatars: FWeaponAbilityAvatars) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLoadCharacterAndWeaponsOnChangeSuitIndex:Add(Callback, Obj) end

---触发 Lua 广播
---@param InSuitIndex number
---@param InAsyncID number
---@param CharacterAvatarArray ULuaArrayHelper<FItemDefineID>
---@param WeaponMain1AvatarArray ULuaArrayHelper<FItemDefineID>
---@param WeaponMain2AvatarArray ULuaArrayHelper<FItemDefineID>
---@param WeaponPistolAvatarArray ULuaArrayHelper<FItemDefineID>
---@param WeaponKnifeAvatarArray ULuaArrayHelper<FItemDefineID>
---@param WeaponsItemDefineID ULuaArrayHelper<FItemDefineID>
---@param WeaponAbilityAvatars FWeaponAbilityAvatars
function FLoadCharacterAndWeaponsOnChangeSuitIndex:Broadcast(InSuitIndex, InAsyncID, CharacterAvatarArray, WeaponMain1AvatarArray, WeaponMain2AvatarArray, WeaponPistolAvatarArray, WeaponKnifeAvatarArray, WeaponsItemDefineID, WeaponAbilityAvatars) end


---多武器展示的Lobby Pawn,相关逻辑/数据的整合组件
---@class UWeaponLobbyManagerComponent: UActorComponent
---@field LoadLobbyWeaponDelegate FLoadLobbyWeapon
---@field LoadWeaponRequireAttachmentSkinDataDelegate FLoadWeaponRequireAttachmentSkinData
---@field LoadCharacterAndWeaponsOnChangeSuitIndexDelegate FLoadCharacterAndWeaponsOnChangeSuitIndex
---@field WeaponUpgradeIdToSkinBaseIDMap ULuaMapHelper<number, number>
---@field WeaponSkinHistoryKillCounter ULuaMapHelper<number, number>
---@field HighLevelArmorSubItems ULuaSetHelper<number>
---@field HighLevelBackpackItems ULuaSetHelper<number>
---@field Weapons ULuaMapHelper<number, FLobbyWeapons>
---@field WeaponAttachmentItemList FWeaponAttachment
---@field PlayerDefaultAvatarMap ULuaMapHelper<number, number>
---@field PlayerSuitSkinDefaultAvatarMap1 ULuaMapHelper<number, number>
---@field PlayerSuitSkinDefaultAvatarMap2 ULuaMapHelper<number, number>
---@field PlayerSuitSkinDefaultAvatarMap3 ULuaMapHelper<number, number>
---@field PlayerSuitSkinDefaultAvatarMap4 ULuaMapHelper<number, number>
---@field CustomExtendSkinData ULuaArrayHelper<FSuitSkinUnit>
local UWeaponLobbyManagerComponent = {}

---@param InLobbyPawn ASTExtraLobbyCharacter
function UWeaponLobbyManagerComponent:SetLobbyPawn(InLobbyPawn) end

---@param InLobbyWeapon ASTExtraWeapon
---@param WeaponItemID number
---@return boolean
function UWeaponLobbyManagerComponent:TryReleaseLobbyWeapon(InLobbyWeapon, WeaponItemID) end

---@param InSoftObjectPath UObject
---@param InWeaponItemID number
---@param InWeaponSlot number
---@param InSuitIndex number
---@param InAsyncLoadMeshReqID number
---@return boolean
function UWeaponLobbyManagerComponent:TryAddWeapon(InSoftObjectPath, InWeaponItemID, InWeaponSlot, InSuitIndex, InAsyncLoadMeshReqID) end

---@return number
function UWeaponLobbyManagerComponent:GetBagLevel() end

---@param SourceWeapon ASTExtraWeapon
---@param TargetWeapon ASTExtraWeapon
function UWeaponLobbyManagerComponent:CopyWeaponSockets(SourceWeapon, TargetWeapon) end

---@param SourceWeapon ASTExtraWeapon
---@param TargetWeapon ASTExtraWeapon
function UWeaponLobbyManagerComponent:CopyWeaponSlotToSocket(SourceWeapon, TargetWeapon) end

---@param Weapon ASTExtraWeapon
---@param LogicSocket string
---@param NeedMeshUpdateFlag boolean
function UWeaponLobbyManagerComponent:DoWeapnAttachToBack(Weapon, LogicSocket, NeedMeshUpdateFlag) end

---@param WeaponSkinBPID number
---@param WeaponAttachmentOriginID number
---@param SuitIndex number
---@return number
function UWeaponLobbyManagerComponent:GetWeaponAttachment(WeaponSkinBPID, WeaponAttachmentOriginID, SuitIndex) end

---@param InWeaponSkinBPID number
---@param InSuitIndex number
---@param InWeaponItemDefineID FItemDefineID
---@param InWeaponSlotID number
---@param InWeaponAvatarComponent UWeaponAvatarComponent
---@param WeaponAvatarItems ULuaArrayHelper<number>
---@param WeaponAbilityItems ULuaArrayHelper<number>
---@param InAsyncReqID number
---@return boolean
function UWeaponLobbyManagerComponent:TryAddWeaponAttachmentWithRespond(InWeaponSkinBPID, InSuitIndex, InWeaponItemDefineID, InWeaponSlotID, InWeaponAvatarComponent, WeaponAvatarItems, WeaponAbilityItems, InAsyncReqID) end

function UWeaponLobbyManagerComponent:InitWeaponAttachmentAvatarItems() end

function UWeaponLobbyManagerComponent:InitWeaponUpgradeIdToSkinBaseIDMap() end

function UWeaponLobbyManagerComponent:InitWeaponSkinHistoryKillCounter() end

function UWeaponLobbyManagerComponent:InitPlayerDefaultAvatarMap() end

---@param InWeapon ASTExtraWeapon
function UWeaponLobbyManagerComponent:TryUnEquipWeapon(InWeapon) end

---@param WeaponSkin number
---@return number
function UWeaponLobbyManagerComponent:TryGetWeaponSkinkillNumber(WeaponSkin) end

---@param InBackpackKillNumScreenHandle UBattleItemHandleBase
---@return number
function UWeaponLobbyManagerComponent:TryGetKillNumScreenSlot(InBackpackKillNumScreenHandle) end

---@param InWeaponSkinID number
---@return number
function UWeaponLobbyManagerComponent:GetWeaponSkinBaseID(InWeaponSkinID) end

---@param InSuitIndex number
---@param WeaponSkinID number
---@return number
function UWeaponLobbyManagerComponent:TryCheckWeaponSkinAttachmentsLoaded(InSuitIndex, WeaponSkinID) end

---@param InWeaponAbility number
---@return number
function UWeaponLobbyManagerComponent:TryCheckWeaponAbilityLoaded(InWeaponAbility) end

---@param InWeaponAbility number
---@return FItemDefineID
function UWeaponLobbyManagerComponent:TryGetWeaponAbilityAvatar(InWeaponAbility) end

---@param InWeaponAvatarComponent UWeaponAvatarComponent
---@param InDefineID FItemDefineID
---@param InGender number
---@param InSyncOperation ESyncOperation
---@param InSyncAdditionDataArray FSyncAdditionDataArray
---@param Slot number
---@return boolean
function UWeaponLobbyManagerComponent:TrySetWeaponAvatarSyncDataForDisplay(InWeaponAvatarComponent, InDefineID, InGender, InSyncOperation, InSyncAdditionDataArray, Slot) end

---@param InCharacterAvatarComponent UCharacterAvatarComponent
---@param InDefineID FItemDefineID
---@param InGender number
---@param InSyncOperation ESyncOperation
---@param InSyncAdditionDataArray FSyncAdditionDataArray
---@param Slot number
---@return boolean
function UWeaponLobbyManagerComponent:TrySetCharacterAvatarSyncDataForDisplay(InCharacterAvatarComponent, InDefineID, InGender, InSyncOperation, InSyncAdditionDataArray, Slot) end

---仅在这里调用,因为异步调用 不保证 刷新配件的顺序
---@param InWeaponAvatarComponent UWeaponAvatarComponent
---@param NewIgnoreOldStreaming boolean
function UWeaponLobbyManagerComponent:ForceResetWeaponAvatarComponentbIgnoreOldStreaming(InWeaponAvatarComponent, NewIgnoreOldStreaming) end

---@param InWeaponAvatarComponent UWeaponAvatarComponent
function UWeaponLobbyManagerComponent:CleanPendingLoadMeshRequestList(InWeaponAvatarComponent) end

---@param InSuitSkinData FSuitSkinData
---@param InWeaponUpgradeIdToSkinBaseIDMap ULuaMapHelper<number, number>
function UWeaponLobbyManagerComponent:TryFillBackpackSuitSkinData(InSuitSkinData, InWeaponUpgradeIdToSkinBaseIDMap) end

---@param InSkinData number
---@param InTargetOrigins ULuaArrayHelper<number>
function UWeaponLobbyManagerComponent:TryFillBackpackEscapeHighLevelSkinData(InSkinData, InTargetOrigins) end

---@param InSuitIndex number
---@param InCharacterAvatarComponent UCharacterAvatarComponent
---@param InWeaponAvatarComponentMain1 UWeaponAvatarComponent
---@param InWeaponAvatarComponentMain2 UWeaponAvatarComponent
---@param InWeaponAvatarComponentPistol UWeaponAvatarComponent
---@param InWeaponAvatarComponentKnife UWeaponAvatarComponent
---@param CharacterAvatarItems ULuaArrayHelper<number>
---@param WeaponMain1AvatarItems ULuaArrayHelper<number>
---@param WeaponMain1AbilityItems ULuaArrayHelper<number>
---@param WeaponMain2AvatarItems ULuaArrayHelper<number>
---@param WeaponMain2AbilityItems ULuaArrayHelper<number>
---@param WeaponPistolAvatarItems ULuaArrayHelper<number>
---@param WeaponPistolAbilityItems ULuaArrayHelper<number>
---@param WeaponKnifeAvatarItems ULuaArrayHelper<number>
---@param WeaponKnifeAbilityItems ULuaArrayHelper<number>
---@param WeaponMain1ID FItemDefineID
---@param WeaponMain2ID FItemDefineID
---@param WeaponPistolID FItemDefineID
---@param WeaponKnifeID FItemDefineID
---@param WeaponMain1BPID number
---@param WeaponMain2BPID number
---@param WeaponPistolBPID number
---@param WeaponKnifeBPID number
function UWeaponLobbyManagerComponent:TryInitSuitSkinAsync(InSuitIndex, InCharacterAvatarComponent, InWeaponAvatarComponentMain1, InWeaponAvatarComponentMain2, InWeaponAvatarComponentPistol, InWeaponAvatarComponentKnife, CharacterAvatarItems, WeaponMain1AvatarItems, WeaponMain1AbilityItems, WeaponMain2AvatarItems, WeaponMain2AbilityItems, WeaponPistolAvatarItems, WeaponPistolAbilityItems, WeaponKnifeAvatarItems, WeaponKnifeAbilityItems, WeaponMain1ID, WeaponMain2ID, WeaponPistolID, WeaponKnifeID, WeaponMain1BPID, WeaponMain2BPID, WeaponPistolBPID, WeaponKnifeBPID) end

---@param InLobbyPawn ASTExtraLobbyCharacter
function UWeaponLobbyManagerComponent:ForceSetLobbyPawnROLE_SimulatedProxy(InLobbyPawn) end

---@param CharacterAvatarComponent UCharacterAvatarComponent
---@param DataArray ULuaArrayHelper<FItemDefineID>
---@param bReset boolean
---@param Gender number
function UWeaponLobbyManagerComponent:TryReSetCharacterWithArray(CharacterAvatarComponent, DataArray, bReset, Gender) end

---@param CharacterAvatarComponent UCharacterAvatarComponent
---@param DataMap ULuaMapHelper<number, number>
---@param bReset boolean
---@param Gender number
function UWeaponLobbyManagerComponent:TryReSetCharacterWithMap(CharacterAvatarComponent, DataMap, bReset, Gender) end

---@param WeaponAvatarComponent UWeaponAvatarComponent
---@param DataArray ULuaArrayHelper<FItemDefineID>
---@param bReset boolean
---@param Gender number
function UWeaponLobbyManagerComponent:TryReSetWeaponWithArray(WeaponAvatarComponent, DataArray, bReset, Gender) end

---@param WeaponAvatarComponent UWeaponAvatarComponent
---@param DataMap ULuaMapHelper<number, number>
---@param bReset boolean
---@param Gender number
function UWeaponLobbyManagerComponent:TryReSetWeaponWithMap(WeaponAvatarComponent, DataMap, bReset, Gender) end

---@param InExtraWeapon ASTExtraWeapon
function UWeaponLobbyManagerComponent:TrySetOtherHandWeaponMesh(InExtraWeapon) end

---@param bEquiped boolean
function UWeaponLobbyManagerComponent:TryResetGripAnimation(bEquiped) end
