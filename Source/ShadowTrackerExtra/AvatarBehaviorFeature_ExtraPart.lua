---@meta

---@class UAvatarBehaviorFeature_ExtraPart: UAvatarBehaviorFeature_UtilFuncLayer
---@field ExtraPartBehavior FAvatarExtraPartBehaviorParam
---@field ExtraPartMeshCompList ULuaArrayHelper<UMeshComponent>
---@field RuntimeParticleList ULuaArrayHelper<UParticleSystemComponent>
---@field bIsHomeTeammate boolean
---@field bConcernStateChange boolean
---@field bConcernBuffChange boolean
---@field bConcernSwimState boolean
---@field bBuffStateDirty boolean
---@field TickCounter number
---@field bIsInTranslucentArea boolean
---@field bOverride_HideExtraPartParticleByBoneList boolean
---@field bOverride_ModifyExtraPartParticleVisibility boolean
---@field bOverride_ModifyExtraPartParticleVisibilityByPSCList boolean
---@field bOverride_ModifyExtraPartParticleVisibilityByBoneList boolean
local UAvatarBehaviorFeature_ExtraPart = {}

---@param BeCarriedPawn ASTExtraBaseCharacter
---@param CarringState ECarringState
function UAvatarBehaviorFeature_ExtraPart:OnOwnerCharCarryPawn(BeCarriedPawn, CarringState) end

function UAvatarBehaviorFeature_ExtraPart:OnHomeTeammateChange() end

---@return boolean
function UAvatarBehaviorFeature_ExtraPart:IsPureDisplay() end

---@return boolean
function UAvatarBehaviorFeature_ExtraPart:IsTeammate() end

---@param InParticleUnitList ULuaArrayHelper<FABF_ParticleUnit>
---@param InTargetComp USceneComponent
function UAvatarBehaviorFeature_ExtraPart:AssembleParticle(InParticleUnitList, InTargetComp) end

---@param InToHiddeBoneNameList ULuaArrayHelper<string>
function UAvatarBehaviorFeature_ExtraPart:HideExtraPartByBoneList(InToHiddeBoneNameList) end

---@param InToHiddeBoneNameList ULuaArrayHelper<string>
function UAvatarBehaviorFeature_ExtraPart:HideExtraPartParticleByBoneList(InToHiddeBoneNameList) end

---@param InToHiddeBoneNameList ULuaArrayHelper<string>
function UAvatarBehaviorFeature_ExtraPart:BP_HideExtraPartParticleByBoneList(InToHiddeBoneNameList) end

---@param InIsVisible boolean
function UAvatarBehaviorFeature_ExtraPart:ModifyExtraPartVisibility(InIsVisible) end

---@param InIsVisible boolean
function UAvatarBehaviorFeature_ExtraPart:ModifyExtraPartParticleVisibility(InIsVisible) end

---@param InIsVisible boolean
function UAvatarBehaviorFeature_ExtraPart:BP_ModifyExtraPartParticleVisibility(InIsVisible) end

---@param InIsVisible boolean
---@param InIsHiddenInTranslucentArea boolean
---@param InPSCList ULuaArrayHelper<UParticleSystemComponent>
function UAvatarBehaviorFeature_ExtraPart:ModifyExtraPartParticleVisibilityByPSCList(InIsVisible, InIsHiddenInTranslucentArea, InPSCList) end

---@param InIsVisible boolean
---@param InIsHiddenInTranslucentArea boolean
---@param InPSCList ULuaArrayHelper<UParticleSystemComponent>
function UAvatarBehaviorFeature_ExtraPart:BP_ModifyExtraPartParticleVisibilityByPSCList(InIsVisible, InIsHiddenInTranslucentArea, InPSCList) end

---@param InIsVisible boolean
---@param InIsHiddenInTranslucentArea boolean
---@param InToHiddeBoneNameList ULuaArrayHelper<string>
function UAvatarBehaviorFeature_ExtraPart:ModifyExtraPartParticleVisibilityByBoneList(InIsVisible, InIsHiddenInTranslucentArea, InToHiddeBoneNameList) end

---@param InIsVisible boolean
---@param InIsHiddenInTranslucentArea boolean
---@param InToHiddeBoneNameList ULuaArrayHelper<string>
function UAvatarBehaviorFeature_ExtraPart:BP_ModifyExtraPartParticleVisibilityByBoneList(InIsVisible, InIsHiddenInTranslucentArea, InToHiddeBoneNameList) end

---@param InSkMeshComp USkeletalMeshComponent
function UAvatarBehaviorFeature_ExtraPart:OnMeshVisibilityChanged(InSkMeshComp) end

---@param EnteredState EPawnState
function UAvatarBehaviorFeature_ExtraPart:HandleStateChanged(EnteredState) end

---@param InPersistBaseComponent UPersistBaseComponent
---@param InState FGameplayTag
function UAvatarBehaviorFeature_ExtraPart:HandleGameplayTagStateChanged(InPersistBaseComponent, InState) end

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function UAvatarBehaviorFeature_ExtraPart:HandleMovementModeChanged(Character, PrevMovementMode, PreviousCustomMode) end

---@param InHandleResult boolean
function UAvatarBehaviorFeature_ExtraPart:HandlePlayerHandFolded(InHandleResult) end

---@param ChangedState ELobbyPawnState
---@param ChangeType ELobbyPawnStateChangeType
function UAvatarBehaviorFeature_ExtraPart:HandleLobbyStateChanged(ChangedState, ChangeType) end

---@param InNewCameraMode EPlayerCameraMode
function UAvatarBehaviorFeature_ExtraPart:HandleCameraModeChange(InNewCameraMode) end

function UAvatarBehaviorFeature_ExtraPart:ReMatchMat() end

---@param InTargetMesh UMeshComponent
---@param MatSelector FMatSelector_PlayerStateMatch
---@return boolean
function UAvatarBehaviorFeature_ExtraPart:MatchStateMat(InTargetMesh, MatSelector) end

---@param InTargetMesh UMeshComponent
---@param MatSelector FMatSelector_PlayerStateMatch
---@return boolean
function UAvatarBehaviorFeature_ExtraPart:MatchNormalMat(InTargetMesh, MatSelector) end

---@param BuffName string
function UAvatarBehaviorFeature_ExtraPart:OnCharBuffAdd(BuffName) end

---@param BuffName string
function UAvatarBehaviorFeature_ExtraPart:OnCharBuffRemove(BuffName) end

---@param bIsEnter boolean
function UAvatarBehaviorFeature_ExtraPart:OnPlayerEnterWater(bIsEnter) end

function UAvatarBehaviorFeature_ExtraPart:UpdateMeshByStateChange() end

function UAvatarBehaviorFeature_ExtraPart:UpdateMeshByLobbyStateChange() end

function UAvatarBehaviorFeature_ExtraPart:TickUpdateMeshByStateChange() end

---@param bStaticMesh boolean
---@param InAvatarExtraPartMeshPack FAvatarExtraPartMeshPack
---@return boolean
function UAvatarBehaviorFeature_ExtraPart:IsNeedUpdateMeshByStateChange(bStaticMesh, InAvatarExtraPartMeshPack) end

---@param InGameplayTag FGameplayTag
---@param InPawnState EPawnState
---@param InMovementMode EMovementMode
---@param InCustomMovementMode ECustomMovmentMode
---@param bStaticMesh boolean
---@param InStaticConfig FAvatarExtraPartCharacterStateAndStaticMeshConfig
---@param InSkeletalConfig FAvatarExtraPartCharacterStateAndSkeletalMeshConfig
---@return boolean
function UAvatarBehaviorFeature_ExtraPart:CheckSpecialState(InGameplayTag, InPawnState, InMovementMode, InCustomMovementMode, bStaticMesh, InStaticConfig, InSkeletalConfig) end

---@param bStaticMesh boolean
---@param InSkeletalMeshConfig FAvatarExtraPartSkeletalMeshConfig
---@param InStaticMeshConfig FAvatarExtraPartStaticMeshConfig
---@return boolean
function UAvatarBehaviorFeature_ExtraPart:CheckExplicitConditions(bStaticMesh, InSkeletalMeshConfig, InStaticMeshConfig) end

---@param bStaticMesh boolean
---@param InSkeletalMeshConfig FAvatarExtraPartSkeletalMeshConfig
---@param InStaticMeshConfig FAvatarExtraPartStaticMeshConfig
---@return boolean
function UAvatarBehaviorFeature_ExtraPart:CheckForceConditions(bStaticMesh, InSkeletalMeshConfig, InStaticMeshConfig) end

---@param bStaticMesh boolean
---@param InSkeletalMeshConfig FAvatarExtraPartSkeletalMeshConfig
---@param InStaticMeshConfig FAvatarExtraPartStaticMeshConfig
---@return FSoftObjectPath
function UAvatarBehaviorFeature_ExtraPart:GetMeshByExplicitConditions(bStaticMesh, InSkeletalMeshConfig, InStaticMeshConfig) end

function UAvatarBehaviorFeature_ExtraPart:OnClientHasFinishedCreateWeapon() end

---@return boolean
function UAvatarBehaviorFeature_ExtraPart:WhenCarryPawnCanModifyVisibility() end

---@param bStaticMesh boolean
---@param InStaticConfig FAvatarExtraPartCharacterStateAndStaticMeshItemConfig
---@param InSkeletalConfig FAvatarExtraPartCharacterStateAndSkeletalMeshItemConfig
---@return boolean
function UAvatarBehaviorFeature_ExtraPart:CheckIsInWeaponBlackList(bStaticMesh, InStaticConfig, InSkeletalConfig) end

---@param bStaticMesh boolean
---@return FSoftObjectPath
function UAvatarBehaviorFeature_ExtraPart:GetMeshByState(bStaticMesh) end

---@param bStaticMesh boolean
---@return FSoftObjectPath
function UAvatarBehaviorFeature_ExtraPart:GetMeshByLobbyState(bStaticMesh) end

---@return number
function UAvatarBehaviorFeature_ExtraPart:GetCurrentAircraftID() end

function UAvatarBehaviorFeature_ExtraPart:ApplyExtraPartMaterial() end

---@return FAvatarExtraPartBehaviorParam
function UAvatarBehaviorFeature_ExtraPart:GetExtraPartBehavior() end
