---@meta

---@class FAsyncModuleRequestInfo
---@field RequestId number
---@field RequestHandlePath FSoftObjectPath
---@field bProcessed boolean
FAsyncModuleRequestInfo = {}


---@class FEmoteInfo
---@field EmoteId number
---@field AsyncLoadIndex number
---@field bNeedIgnore boolean
---@field bIsLoop boolean
---@field bIsSectionAnim boolean
FEmoteInfo = {}


---@class FOffHandWeaponInfo
---@field CurOffHandWeaponMap ULuaMapHelper<number, ASTExtraWeapon>
---@field bValid boolean
FOffHandWeaponInfo = {}


---@class FWeaponOperation
---@field bIsEquip boolean
FWeaponOperation = {}


---@class FWeaponInfo
---@field OperationQueue ULuaArrayHelper<FWeaponOperation>
---@field NeedDestoryWeaponList ULuaArrayHelper<ASTExtraWeapon>
FWeaponInfo = {}


---@class FAsyncLobbyCharacterInfo
---@field bIsValid_lobbyGender boolean
---@field lobbyGender ELobbyCharacterAnimType
---@field bIsValid_lobbyPosIndex boolean
---@field lobbyPosIndex number
---@field bIsValid_sceneType boolean
---@field sceneType ECharacterShowSceneType
FAsyncLobbyCharacterInfo = {}


---@class FAnimPoseTagSwitcherInfo
---@field PoseTag string
---@field bIsOpen boolean
FAnimPoseTagSwitcherInfo = {}


---@class ULobbyAvatarLogic_AsyncModule: ULobbyAvatarLogic_Base
---@field RequestInfoMap ULuaMapHelper<number, FAsyncModuleRequestInfo>
---@field AsyncProtectedAssets ULuaArrayHelper<UObject>
---@field CacheEmoteInfo FEmoteInfo
---@field CacheWeaponInfo FWeaponInfo
---@field CacheOffHandWeaponInfo FOffHandWeaponInfo
---@field CacheLobbyCharacterInfo FAsyncLobbyCharacterInfo
---@field bNeedUpdateIdle boolean
---@field bNeedAnimPoseTagSwitcher boolean
---@field AnimPoseTagSwitcherInfo FAnimPoseTagSwitcherInfo
---@field bNeedUpdateSPLuaIdle boolean
---@field bInAsyncLoading boolean
---@field bNeedRefreshAnimIns boolean
---@field bNeedRefreshParticle boolean
---@field bNeedDelayAnimInsUpdate boolean
---@field bPersistentEmoteCache boolean
---@field NeedRefreshPoseSlotList ULuaArrayHelper<number>
---@field NeedEarlyDestroyAvatarSlotList ULuaArrayHelper<number>
---@field TickGroup ETickingGroup
---@field HideCharacterWhenAsyncLoadingDstTagList ULuaArrayHelper<string>
local ULobbyAvatarLogic_AsyncModule = {}

---@param InOwnerCharacter ASTExtraLobbyCharacter
function ULobbyAvatarLogic_AsyncModule:Init(InOwnerCharacter) end

---@param bClearOwnerCharacter boolean
function ULobbyAvatarLogic_AsyncModule:Release(bClearOwnerCharacter) end

---@return boolean
function ULobbyAvatarLogic_AsyncModule:CheckIsInAsyncLoad() end

---@return boolean
function ULobbyAvatarLogic_AsyncModule:HasPendingProcessRequest() end

function ULobbyAvatarLogic_AsyncModule:MarkAllRequestProcessed() end

---@param SlotId number
---@param InRequestInfo FAsyncModuleRequestInfo
function ULobbyAvatarLogic_AsyncModule:AddPutonRequest(SlotId, InRequestInfo) end

function ULobbyAvatarLogic_AsyncModule:ClearEmoteInfoWhenAddRequest() end

---@param InEmoteInfo FEmoteInfo
function ULobbyAvatarLogic_AsyncModule:SetEmoteInfo(InEmoteInfo) end

---@param InWeaponInfo FWeaponInfo
function ULobbyAvatarLogic_AsyncModule:SetWeaponInfo(InWeaponInfo) end

---@param InNeedUpdateIdle boolean
function ULobbyAvatarLogic_AsyncModule:SetNeedUpdateIdle(InNeedUpdateIdle) end

---@param InNeedUpdateSPLuaIdle boolean
function ULobbyAvatarLogic_AsyncModule:SetNeedUpdateSPLuaIdle(InNeedUpdateSPLuaIdle) end

---@param InNeedRefreshAnimIns boolean
function ULobbyAvatarLogic_AsyncModule:SetNeedRefreshAnimIns(InNeedRefreshAnimIns) end

---@param InNeedRefreshParticle boolean
function ULobbyAvatarLogic_AsyncModule:SetNeedRefreshParticle(InNeedRefreshParticle) end

---@param InbPersistentEmoteCache boolean
function ULobbyAvatarLogic_AsyncModule:SetbPersistentEmoteCache(InbPersistentEmoteCache) end

---@param DeltaTime number
function ULobbyAvatarLogic_AsyncModule:TickFunction(DeltaTime) end

---@param AVEntity UCharacterAvatarEntity
---@param RenderResList ULuaArrayHelper<FSoftObjectPath>
---@param DesiredRes ULuaMapHelper<EResourceType, FResourceList>
function ULobbyAvatarLogic_AsyncModule:CollectResPath(AVEntity, RenderResList, DesiredRes) end

---@param RenderResList ULuaArrayHelper<FSoftObjectPath>
---@param DesiredRes ULuaMapHelper<EResourceType, FResourceList>
function ULobbyAvatarLogic_AsyncModule:CollectSSSMaterialPath(RenderResList, DesiredRes) end

---@param ResList ULuaArrayHelper<FSoftObjectPath>
function ULobbyAvatarLogic_AsyncModule:CollectIdleAnimRes(ResList) end

---@param ResList ULuaArrayHelper<FSoftObjectPath>
function ULobbyAvatarLogic_AsyncModule:CollectGalaxyMakeUpRes(ResList) end

function ULobbyAvatarLogic_AsyncModule:ProcessRequestHandleAsyncLoad() end

function ULobbyAvatarLogic_AsyncModule:ProcessRequestHandleAsyncLoadCompleted() end

function ULobbyAvatarLogic_AsyncModule:ProcessRequestResAsyncLoad() end

function ULobbyAvatarLogic_AsyncModule:CancleandResetAsyncHandle() end

function ULobbyAvatarLogic_AsyncModule:ResetAsyncLoadResHandle() end

function ULobbyAvatarLogic_AsyncModule:ResetResAsyncHandleInResAsyncCallBack_HotUpdate() end

function ULobbyAvatarLogic_AsyncModule:ResetResAsyncHandleInSSSCallBack_HotUpdate() end

function ULobbyAvatarLogic_AsyncModule:ProcessRequestResAsyncLoadCompleted() end

function ULobbyAvatarLogic_AsyncModule:ProcessRequestSSSMatAsyncLoad() end

function ULobbyAvatarLogic_AsyncModule:ProcessRequestSSSMatAsyncLoadCompleted() end

function ULobbyAvatarLogic_AsyncModule:DoFinalRender() end

function ULobbyAvatarLogic_AsyncModule:DoSomeDelayRenderLogic() end

function ULobbyAvatarLogic_AsyncModule:PlayEmote() end

function ULobbyAvatarLogic_AsyncModule:RefreshWeapon() end

function ULobbyAvatarLogic_AsyncModule:RefreshOffHandWeapon() end

function ULobbyAvatarLogic_AsyncModule:RefreshLobbyInfo() end

function ULobbyAvatarLogic_AsyncModule:RefreshMakeUp() end

function ULobbyAvatarLogic_AsyncModule:IdleUpdate() end

function ULobbyAvatarLogic_AsyncModule:SPLuaIdleUpdate() end

function ULobbyAvatarLogic_AsyncModule:MarkDelayAnimUpdate() end

function ULobbyAvatarLogic_AsyncModule:RefreshMasterAnimIns() end

---@param InEntity UAvatarEntity
function ULobbyAvatarLogic_AsyncModule:RefreshExtraPartAnimIns(InEntity) end

---@param InSkm USkeletalMeshComponent
function ULobbyAvatarLogic_AsyncModule:RefreshAnim(InSkm) end

function ULobbyAvatarLogic_AsyncModule:RefreshAvatarParticle() end

function ULobbyAvatarLogic_AsyncModule:EarlyDestroyAvatar() end

function ULobbyAvatarLogic_AsyncModule:BeforeDoFinalRender() end

function ULobbyAvatarLogic_AsyncModule:DetachWeapon() end

function ULobbyAvatarLogic_AsyncModule:RefreshAnimPoseTagSwitcher() end

---@param SlotId number
function ULobbyAvatarLogic_AsyncModule:SyncProcess(SlotId) end

---@param bHide boolean
function ULobbyAvatarLogic_AsyncModule:HideOrShowCharacterAndWeaponInSomeSystem(bHide) end

function ULobbyAvatarLogic_AsyncModule:SyncUpdateAvatar() end

function ULobbyAvatarLogic_AsyncModule:ResetCharacterScale() end

---@param InActor AActor
function ULobbyAvatarLogic_AsyncModule:ReactivateWeaponPSC(InActor) end
