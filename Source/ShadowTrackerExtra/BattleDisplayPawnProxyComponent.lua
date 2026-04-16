---@meta

---@class UBattleDisplayPawnProxyComponent: UActorComponent
---@field BattleGameWearAvatarList ULuaArrayHelper<number>
---@field ExcludeAvatarSlotList ULuaArrayHelper<EAvatarSlotType>
---@field CachedDisplayAvatarComponent UCharacterAvatarComponent
---@field CachedSampleAvatarComponent UCharacterAvatarComponent
---@field CurDisplayData ULuaArrayHelper<FMeshSynData>
---@field CachedLocalController ASTExtraPlayerController
---@field CachedMasterPoseComponent USkeletalMeshComponent
---@field TrainingRangePlayerOBInfo FPlayerOBInfo
local UBattleDisplayPawnProxyComponent = {}

---@param InDisplayMesh USkeletalMeshComponent
function UBattleDisplayPawnProxyComponent:InitProxy(InDisplayMesh) end

---Update Display by Sample Character
---@param InDisplaySampleChar ASTExtraBaseCharacter
function UBattleDisplayPawnProxyComponent:RefreshDisplayBySampleChar(InDisplaySampleChar) end

---Update Display by Sample AvatarComponent
---@param InDisplaySampleAvatarComp UCharacterAvatarComponent
function UBattleDisplayPawnProxyComponent:RefreshDisplayBySampleComp(InDisplaySampleAvatarComp) end

---Update Displa by Sample Character's Lobby Wear
---@param InDisplaySampleChar ASTExtraBaseCharacter
function UBattleDisplayPawnProxyComponent:RefreshDisplayBySampleCharLobbyWear(InDisplaySampleChar) end

---@param InItemID number
---@return boolean
function UBattleDisplayPawnProxyComponent:PutOnEquipByID(InItemID) end

---@param InAvatarHandle UBattleItemHandleBase
---@return boolean
function UBattleDisplayPawnProxyComponent:PutOnEquipByHandle(InAvatarHandle) end

---@param InItemID number
function UBattleDisplayPawnProxyComponent:PutOffEquipByID(InItemID) end

---@param InSlotID number
function UBattleDisplayPawnProxyComponent:PutOffEquipBySlot(InSlotID) end

function UBattleDisplayPawnProxyComponent:ClearDisplay() end

---@param InAnimInst UClass
function UBattleDisplayPawnProxyComponent:SetAnimInstance(InAnimInst) end

---@param InDisplaySampleChar ASTExtraBaseCharacter
function UBattleDisplayPawnProxyComponent:CheckDisplayAvatarGender(InDisplaySampleChar) end

---@param InBattleGameWearAvatarList ULuaArrayHelper<number>
function UBattleDisplayPawnProxyComponent:SetBattleGameWearAvatarList(InBattleGameWearAvatarList) end

---@param InGender number
function UBattleDisplayPawnProxyComponent:RefreshDisplayByBattleGameWear(InGender) end

---@param InGender number
---@param InLightChannelBitPack number
function UBattleDisplayPawnProxyComponent:RefreshDisplayByBattleWearAndLightChannel(InGender, InLightChannelBitPack) end

---@param InCandidateMeshComp UMeshComponent
function UBattleDisplayPawnProxyComponent:TryCheckAnimInstanceForMeshComponent(InCandidateMeshComp) end

---@param InDisplayAvatarEntity UAvatarEntity
---@param bIsInBattleGame boolean
---@param InLightChannelBitPack number
function UBattleDisplayPawnProxyComponent:ApplyDisplayOption(InDisplayAvatarEntity, bIsInBattleGame, InLightChannelBitPack) end
