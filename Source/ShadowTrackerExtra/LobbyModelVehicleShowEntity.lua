---@meta

---@class ULobbyModelVehicleShowEntity: ULobbyModelShowEntity
---@field BurnTireParticleComponentList ULuaArrayHelper<UParticleSystemComponent>
---@field AudioEventID number
---@field AudioStopEventID number
---@field ModelBeginDegre number
---@field UTurnBeginDegre number
---@field CurSeqPath FSoftObjectPath
---@field CurSeq ULevelSequence
---@field ExtraMeshcomponent ULuaArrayHelper<UStaticMeshComponent>
---@field ExtraParticleComponentList ULuaMapHelper<UParticleSystemComponent, boolean>
---@field DefaultPendantEntityList ULuaMapHelper<string, ULobbyModelCommonItemShowEntity>
---@field bIsAnimBPVehicle boolean
---@field bIsLobbyAnimBP boolean
---@field PengState EVehiclePengState
---@field TireState EVehicleTireState
---@field VehicleBehaviorType EItemBehaviorType
---@field ShortlivedParticleComponentList ULuaArrayHelper<UParticleSystemComponent>
---@field MemberTimerHandle FTimerHandle
---@field CurrentFaceParticleId number
---@field CurrentFaceParticleComponents ULuaMapHelper<string, UParticleSystemComponent>
---@field TwinsId number
local ULobbyModelVehicleShowEntity = {}

---@param showActor ALobbyItemShowActor
function ULobbyModelVehicleShowEntity:Init(showActor) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelVehicleShowEntity:ShowModel(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelVehicleShowEntity:ShowPendant(battleItemHandleBase) end

function ULobbyModelVehicleShowEntity:PlayPendantEnterMontage() end

function ULobbyModelVehicleShowEntity:StopPendantMontage() end

---@param VehicleHandle UBackpackVehicleBaseHandle
---@return FSoftObjectPath
function ULobbyModelVehicleShowEntity:GetSkMeshAsset(VehicleHandle) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param meshComp UMeshComponent
---@param matList ULuaArrayHelper<UMaterialInterface>
function ULobbyModelVehicleShowEntity:SetMeshAndMaterial(battleItemHandleBase, meshComp, matList) end

---@param name string
---@param ParameterName string
---@param idx number
---@param plateNumber string
---@param styleId number
---@param VehicleParameterName string
function ULobbyModelVehicleShowEntity:ApplyItemNameMaterial(name, ParameterName, idx, plateNumber, styleId, VehicleParameterName) end

---@param Value number
---@param ParameterName string
---@param idx number
function ULobbyModelVehicleShowEntity:SetItemMaterialScalarParameter(Value, ParameterName, idx) end

---@param avatarHandle UBackpackVehicleBaseHandle
---@param meshComp UMeshComponent
---@param skeletalMesh USkeletalMesh
function ULobbyModelVehicleShowEntity:GetMeshAppliedMaterials(avatarHandle, meshComp, skeletalMesh) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param meshComp UMeshComponent
---@param matMap ULuaMapHelper<string, UMaterialInterface>
function ULobbyModelVehicleShowEntity:SetMeshAndMaterialVehicle(battleItemHandleBase, meshComp, matMap) end

---@param avatarHandle UBackpackVehicleBaseHandle
---@param meshComp UMeshComponent
---@param skeletalMesh USkeletalMesh
function ULobbyModelVehicleShowEntity:GetMeshAppliedMaterialsVehicle(avatarHandle, meshComp, skeletalMesh) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelVehicleShowEntity:ShowVehicleIntroByResId(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelVehicleShowEntity:StopVehicleIntro(battleItemHandleBase) end

function ULobbyModelVehicleShowEntity:InteractModel() end

---@param handle UBackpackVehicleBaseHandle
---@param skMesh USkeletalMeshComponent
function ULobbyModelVehicleShowEntity:AttachShadowToSkeletal(handle, skMesh) end

---@param handle UBackpackVehicleBaseHandle
---@param skMesh USkeletalMeshComponent
function ULobbyModelVehicleShowEntity:AttachDefaultParticle(handle, skMesh) end

function ULobbyModelVehicleShowEntity:ClearEntity() end

---@param battleItemHandleBase UBattleItemHandleBase
---@param id number
function ULobbyModelVehicleShowEntity:SetStreamerMaterial(battleItemHandleBase, id) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param animPath string
---@param streamerId number
---@return number
function ULobbyModelVehicleShowEntity:PlayVehicleAnim(battleItemHandleBase, animPath, streamerId) end

function ULobbyModelVehicleShowEntity:SetVehicleAnimEnd() end

---@param degre number
function ULobbyModelVehicleShowEntity:SetModelBeginDegre(degre) end

function ULobbyModelVehicleShowEntity:VehicleIntroEnd() end

---@param battleItemHandleBase UBattleItemHandleBase
---@return number
function ULobbyModelVehicleShowEntity:GetSlotID(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param animPath string
---@param isOpen boolean
---@return number
function ULobbyModelVehicleShowEntity:PlayVehiclePengAnim(battleItemHandleBase, animPath, isOpen) end

function ULobbyModelVehicleShowEntity:SetVehiclePengAnimEnd() end

---@return EVehiclePengState
function ULobbyModelVehicleShowEntity:GetVehiclePengState() end

---@param state EVehiclePengState
---@param seq UAnimSequence
function ULobbyModelVehicleShowEntity:SetVehiclePengState(state, seq) end

---@return EVehicleTireState
function ULobbyModelVehicleShowEntity:GetVehicleTireState() end

---@param state EVehicleTireState
---@param seq UAnimSequence
function ULobbyModelVehicleShowEntity:SetVehicleTireState(state, seq) end

function ULobbyModelVehicleShowEntity:SetVehicleTireAnimEnd() end

function ULobbyModelVehicleShowEntity:SetVehicleStatic() end

---@param ratio number
function ULobbyModelVehicleShowEntity:SetItemAnimPos(ratio) end

function ULobbyModelVehicleShowEntity:DeactivateParticleWhenTireMove() end

function ULobbyModelVehicleShowEntity:ActivateParticleWhenTireStatic() end

---@param behaveType EItemBehaviorType
function ULobbyModelVehicleShowEntity:SetVehicleBehaveType(behaveType) end

---@return EItemBehaviorType
function ULobbyModelVehicleShowEntity:GetVehicleBehaveType() end

---@param behaveType EItemBehaviorType
---@return boolean
function ULobbyModelVehicleShowEntity:IsEntityStillBehave(behaveType) end

function ULobbyModelVehicleShowEntity:DoStopAllBehave() end

---@param behaveType EItemBehaviorType
---@param battleHandle UBattleItemHandleBase
---@param additionParams ULuaMapHelper<string, string>
---@return boolean
function ULobbyModelVehicleShowEntity:DoPlayBehave(behaveType, battleHandle, additionParams) end

---@param behaveType EItemBehaviorType
function ULobbyModelVehicleShowEntity:DoStopBehave(behaveType) end

---@param battleHandle UBattleItemHandleBase
---@param ParticleName string
---@return boolean
function ULobbyModelVehicleShowEntity:GroupParticleShow(battleHandle, ParticleName) end

function ULobbyModelVehicleShowEntity:StopGroupParticleShow() end

---@param battleHandle UBattleItemHandleBase
---@param PendantId number
---@return boolean
function ULobbyModelVehicleShowEntity:PendantShow(battleHandle, PendantId) end

function ULobbyModelVehicleShowEntity:StopPendantShow() end

---@param audioptr UAkAudioEvent
function ULobbyModelVehicleShowEntity:PlayVehicleAudio(audioptr) end

function ULobbyModelVehicleShowEntity:StopVehicleAudio() end

function ULobbyModelVehicleShowEntity:ParticleDurationEnd() end

---@param battleHandle UBattleItemHandleBase
---@param ParticleId number
---@param IsAudioPlay boolean
---@return number
function ULobbyModelVehicleShowEntity:PlayFaceParticleAndAudio(battleHandle, ParticleId, IsAudioPlay) end

function ULobbyModelVehicleShowEntity:StopParticleAndAudio() end

---@param AnimInst UAnimInstance
---@param Config FMontageWithParticleAudio
---@param ParticleId number
---@return number
function ULobbyModelVehicleShowEntity:PlayMontageWithParticleAndAudio(AnimInst, Config, ParticleId) end

---@param slotname string
function ULobbyModelVehicleShowEntity:StopVehicleMontage(slotname) end

---@param battleHandle UBattleItemHandleBase
---@param ParticleId number
---@return boolean
function ULobbyModelVehicleShowEntity:PlayVehicleFlameMontage(battleHandle, ParticleId) end

function ULobbyModelVehicleShowEntity:StopVehicleFlameMontage() end

---@param battleHandle UBattleItemHandleBase
---@param ParticleId number
---@return boolean
function ULobbyModelVehicleShowEntity:PlayVehicleDrifting(battleHandle, ParticleId) end

function ULobbyModelVehicleShowEntity:StopVehicleDrifting() end

---@param battleHandle UBattleItemHandleBase
---@param ParticleId number
---@return boolean
function ULobbyModelVehicleShowEntity:PlayVehicleLaunchControl(battleHandle, ParticleId) end

function ULobbyModelVehicleShowEntity:StopVehicleLaunchControl() end

---@param battleHandle UBattleItemHandleBase
---@param ParticleId number
---@return boolean
function ULobbyModelVehicleShowEntity:PlayVehicleDiversionShow(battleHandle, ParticleId) end

function ULobbyModelVehicleShowEntity:StopVehicleDiversionShow() end

---@param battleItemHandleBase UBattleItemHandleBase
---@param id number
---@return number
function ULobbyModelVehicleShowEntity:GetRealId(battleItemHandleBase, id) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param id number
function ULobbyModelVehicleShowEntity:ShowTwinsAppearance(battleItemHandleBase, id) end

---@param TwinsConfig FVehicleTwinsCfg
function ULobbyModelVehicleShowEntity:SetTwinsMaterial(TwinsConfig) end

---@param TwinsConfig FVehicleTwinsCfg
function ULobbyModelVehicleShowEntity:SetTwinsPartical(TwinsConfig) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param animAsset UAnimationAsset
function ULobbyModelVehicleShowEntity:SetAnimTwinsConfig(battleItemHandleBase, animAsset) end

---@param animAsset UAnimationAsset
---@param EnterParticleList ULuaArrayHelper<FVehicleExtraParticle>
function ULobbyModelVehicleShowEntity:SetAnimParticle(animAsset, EnterParticleList) end

---@param animAsset UAnimationAsset
---@param EnterParticleList ULuaArrayHelper<FVehicleBehaveParticle>
function ULobbyModelVehicleShowEntity:SetBehaveParticle(animAsset, EnterParticleList) end

---@param animAsset UAnimationAsset
---@param EnterAnimAudio UAkAudioEvent
function ULobbyModelVehicleShowEntity:SetAnimAudio(animAsset, EnterAnimAudio) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelVehicleShowEntity:SetVehicleTranslucentDepthWrite(battleItemHandleBase) end

function ULobbyModelVehicleShowEntity:ReceiveApplyAnimIns() end
