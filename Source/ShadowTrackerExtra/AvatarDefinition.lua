---@meta

---Wing Type Avatar Anim Adapt
---@class EAvatarAnimAdapt_WingType
---@field None number
---@field Close_Idle number
---@field Close_Idle_Emote number
---@field Close_Idle_Lobby number
---@field Close_Idle_Emote_Lobby number
EAvatarAnimAdapt_WingType = {}


---@class ESyncOperation
---@field PutOn number @穿衣服
---@field PutOff number @脱衣服
ESyncOperation = {}


---@class EDisplayQuality
---@field Low number @低配
---@field Middle number @中配
---@field High number @高配
---@field Invalid number @无效
EDisplayQuality = {}


---@class EGender
---@field Male number
---@field Female number
EGender = {}


---@class ESetSkinWeightReason
---@field Default number @Default
---@field PawnState number @Fight:EPawnState
---@field AnimNotify number @Fight:AnimNotify
---@field LobbyAnim number @LobbyAnim
---@field ForceDisable number @ForceDisable
---@field RegisteredSWPState number @Registered SkinWeightProfile State
ESetSkinWeightReason = {}


---@class EReqType
---@field ItemHandle number
---@field LoadMesh number
EReqType = {}


---@class EAvatarModule
---@field BatchModule number
---@field SkeletalStaticModule number
---@field AsyncLoadModule number
---@field DualWeapon number
---@field NetModule number
---@field PostProcessModule number
---@field Max number
EAvatarModule = {}


---@class EAvatarCategories
---@field Character number
---@field Weapon number
---@field Vehicle number
EAvatarCategories = {}


---@class EAvatarCustomAbilityType
---@field GeneralEffect number @环身特效
---@field AircraftPet number @飞行器宠物
EAvatarCustomAbilityType = {}


---@class EAvatarComponentType
---@field Character number
---@field Weapon number
---@field Vehicle number
EAvatarComponentType = {}


---@class FAvatarAnimAdaptParam
---@field AdaptWingType EAvatarAnimAdapt_WingType
---@field bAdaptSkirtPose boolean
---@field AdaptSkirtPoseType ESkirtPoseType
---@field InverseBoneRetargetIgnoreBoneList ULuaArrayHelper<string>
FAvatarAnimAdaptParam = {}


---@class FMeshResSet
FMeshResSet = {}


---@class FHideBoneData
FHideBoneData = {}


---@class FReplacedSlotInfo
FReplacedSlotInfo = {}


---@class FMultiReplacedSlotInfo
---@field doReplaceSlot ULuaArrayHelper<number>
---@field beReplacedSlot number
FMultiReplacedSlotInfo = {}


---@class FMeshData
---@field additionalMats ULuaArrayHelper<UMaterialInstance>
---@field meshType EMeshType
---@field hiddenBy ULuaArrayHelper<number>
---@field doHiddenSlots ULuaArrayHelper<number>
---@field replacedSlots ULuaArrayHelper<FReplacedSlotInfo>
---@field MultireplacedSlots ULuaArrayHelper<FMultiReplacedSlotInfo>
---@field materialReplacedBy FReplacedSlotInfo
---@field hideBoneSlots ULuaArrayHelper<FHideBoneData>
---@field definedID FItemDefineID
---@field subSlot EAvatarSubSlot
---@field functionValid boolean
FMeshData = {}


---@class FMeshSynData
---@field defineID FItemDefineID
---@field gender number
---@field operationType ESyncOperation
---@field SynAdditionalData FSyncAdditionDataArray
---@field VersionNum number
FMeshSynData = {}


---@class FMeshSynDataFlag
---@field defineID FItemDefineID
---@field operationType ESyncOperation
---@field SyncID number
---@field SynAdditionalData FSyncAdditionDataArray
FMeshSynDataFlag = {}


---@class FAvatarCacheResFilterRuleItem
---@field bFilterRuleOnlyValidOnSimulated boolean
---@field IgnoreSlotIdList ULuaArrayHelper<EAvatarSlotType>
FAvatarCacheResFilterRuleItem = {}


---@class FAvatarCacheResFilterRule
---@field DefaultIgnoreSlotIdList FAvatarCacheResFilterRuleItem
---@field SpecificGameModeIDRule ULuaMapHelper<string, FAvatarCacheResFilterRuleItem>
FAvatarCacheResFilterRule = {}


---@class FAvatarAsyncLoadResReqBySlot
---@field SlotID number
---@field ResList ULuaArrayHelper<FSoftObjectPath>
FAvatarAsyncLoadResReqBySlot = {}


---@class FAsyncLoadMeshResReq
---@field MeshResList ULuaArrayHelper<FSoftObjectPath>
---@field AvatarHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@field IsAutonomousAvatar number
---@field NeedReAsyncMeshList boolean
---@field HandleExtraMeshResLookupTable ULuaMapHelper<UBattleItemHandleBase, FSoftObjectPath>
---@field HandleFPPExtraMeshResLookupTable ULuaMapHelper<UBattleItemHandleBase, FSoftObjectPath>
---@field NeedCachedForFpp boolean
FAsyncLoadMeshResReq = {}


---@class FPendingDeleteEntity
---@field NeedPutDefault boolean
---@field SlotID number
FPendingDeleteEntity = {}


---@class FAvatarStreamableHandler
FAvatarStreamableHandler = {}


---@class FSkinWeightProfileStates
---@field ItemHandleSWPConfig FSkinWeightProfileConfig
---@field CurHasSkinWeightReasons ULuaSetHelper<ESetSkinWeightReason>
FSkinWeightProfileStates = {}


---@class FAvatarSkinWeightChangedData
---@field ProfileName string
---@field SlotType number
---@field Reason ESetSkinWeightReason
FAvatarSkinWeightChangedData = {}


---@class FAsyncCallbackKey
---@field AvatarType EAvatarCategories
---@field AsyncResType EReqType
FAsyncCallbackKey = {}


---@class FAvatarCustomSyncData
---@field CurrentRingBodyPlayingParticleSystemID number
FAvatarCustomSyncData = {}


---@class FAnimNotifyAvatarSlotVarChangeParam
---@field bConsiderExtraPartMesh boolean
FAnimNotifyAvatarSlotVarChangeParam = {}


---@class UAvatarSyncDataFuncObj: UObject
local UAvatarSyncDataFuncObj = {}

---@param InSyncData FMeshSynData
---@param AvatarComponent UAvatarComponent
function UAvatarSyncDataFuncObj:MarkDirty(InSyncData, AvatarComponent) end

---@param InSyncDataList ULuaArrayHelper<FMeshSynData>
---@param InDataIndex number
---@param AvatarComponent UAvatarComponent
function UAvatarSyncDataFuncObj:MarkDirtyByIndex(InSyncDataList, InDataIndex, AvatarComponent) end

---@param InSyncDataList ULuaArrayHelper<FMeshSynData>
---@param InZeroedCound number
---@param AvatarComponent UAvatarComponent
function UAvatarSyncDataFuncObj:AddZeroed(InSyncDataList, InZeroedCound, AvatarComponent) end

---@param InSyncDataList ULuaArrayHelper<FMeshSynData>
---@param AvatarComponent UAvatarComponent
---@param InSlack number
function UAvatarSyncDataFuncObj:Empty(InSyncDataList, AvatarComponent, InSlack) end

---@param InSyncDataList ULuaArrayHelper<FMeshSynData>
---@param InDataIndex number
---@param InDefineID FItemDefineID
---@param AvatarComponent UAvatarComponent
---@return boolean
function UAvatarSyncDataFuncObj:SetDefineID(InSyncDataList, InDataIndex, InDefineID, AvatarComponent) end

---@param InSyncDataList ULuaArrayHelper<FMeshSynData>
---@param InDataIndex number
---@param InGender number
---@param AvatarComponent UAvatarComponent
---@return boolean
function UAvatarSyncDataFuncObj:SetGender(InSyncDataList, InDataIndex, InGender, AvatarComponent) end

---@param InSyncDataList ULuaArrayHelper<FMeshSynData>
---@param InDataIndex number
---@param InSyncOpType ESyncOperation
---@param AvatarComponent UAvatarComponent
---@return boolean
function UAvatarSyncDataFuncObj:SetSyncOpType(InSyncDataList, InDataIndex, InSyncOpType, AvatarComponent) end

---@param InSyncDataList ULuaArrayHelper<FMeshSynData>
---@param InDataIndex number
---@param InDefineID FItemDefineID
---@param InGender number
---@param InSyncOpType ESyncOperation
---@param AvatarComponent UAvatarComponent
---@return boolean
function UAvatarSyncDataFuncObj:SetBaseData(InSyncDataList, InDataIndex, InDefineID, InGender, InSyncOpType, AvatarComponent) end

---@param InSyncDataList ULuaArrayHelper<FMeshSynData>
---@param InDataIndex number
---@param InAdditionalData FSyncAdditionDataArray
---@param AvatarComponent UAvatarComponent
---@return boolean
function UAvatarSyncDataFuncObj:SetAdditionalData(InSyncDataList, InDataIndex, InAdditionalData, AvatarComponent) end

---@param InSyncDataList ULuaArrayHelper<FMeshSynData>
---@param InDataIndex number
---@param InAdditionalDataName string
---@param AvatarComponent UAvatarComponent
---@return boolean
function UAvatarSyncDataFuncObj:RemoveAdditionalDataByName(InSyncDataList, InDataIndex, InAdditionalDataName, AvatarComponent) end

---@param InSyncDataList ULuaArrayHelper<FMeshSynData>
---@param InDataIndex number
---@param InDefineID FItemDefineID
---@param InGender number
---@param InSyncOpType ESyncOperation
---@param InAdditionalData FSyncAdditionDataArray
---@param AvatarComponent UAvatarComponent
---@return boolean
function UAvatarSyncDataFuncObj:SetSyncData(InSyncDataList, InDataIndex, InDefineID, InGender, InSyncOpType, InAdditionalData, AvatarComponent) end

---@param InSyncDataList ULuaArrayHelper<FMeshSynData>
---@param InSyncData FMeshSynData
---@param InDataIndex number
---@param AvatarComponent UAvatarComponent
---@return boolean
function UAvatarSyncDataFuncObj:CopySyncData(InSyncDataList, InSyncData, InDataIndex, AvatarComponent) end
