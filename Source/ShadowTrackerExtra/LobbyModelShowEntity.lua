---@meta

---@class ELobbyItemMontageType
---@field LobbyItemMontage_LobbyShow number @大厅展示动画
---@field LobbyItemMontage_Enter number @入场动画
ELobbyItemMontageType = {}


---@class EItemBehaviorType
---@field VehicleStatic number @载具静止
---@field VehicleEntering number @载具入场
---@field VehicleXuanMu number @载具炫目登场
---@field VehicleBurnTire number @载具烧胎
---@field VehicleUTurn number @载具原地掉头
---@field VehicleOpeningPeng number @载具开蓬中
---@field VehicleClosingPeng number @载具关蓬中
---@field VehicleGroupParticleShow number @载具天团表演特效
---@field VehiclePendantShow number @载具配件表演
---@field VehicleFlameShow number @尾焰动画表现
---@field VehicleLaunchControl number @载具弹射起步
---@field VehicleDrifting number @载具滑移表演
---@field VehiclePrticleAudioShow number @特效音效表现
---@field VehicleDiversionShow number @导流表演
---@field ADSDestroyShow number @ADS销毁表演
---@field ADSSurroundingParticleShow number @ADS贴地环身特效表演
---@field ADSExplosionParticleShow number @ADS爆炸击中轨迹表演
EItemBehaviorType = {}


---@class ULobbyModelShowEntity: UObject
---@field curSlotId number
---@field ChildEntityMap ULuaMapHelper<number, ULobbyModelShowEntity>
---@field ParticleComponentList ULuaArrayHelper<UParticleSystemComponent>
---@field slotToSocket ULuaMapHelper<number, string>
---@field ParticleTimerHandle FTimerHandle
---@field ParticleLoopTimerHandle FTimerHandle
---@field ParticleShowComponentList ULuaArrayHelper<UParticleSystemComponent>
---@field ParticleAudioShowTimerHandle FTimerHandle
---@field ShowAudioEventID number
local ULobbyModelShowEntity = {}

---@param showActor ALobbyItemShowActor
function ULobbyModelShowEntity:Init(showActor) end

function ULobbyModelShowEntity:ReceiveInit() end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelShowEntity:ShowModel(battleItemHandleBase) end

---@param IsRefreshTexture boolean
---@param IsRefreshAll boolean
function ULobbyModelShowEntity:RefreshModel(IsRefreshTexture, IsRefreshAll) end

function ULobbyModelShowEntity:ReceiveShowModel() end

---@param battleItemHandleBase UBattleItemHandleBase
---@param meshComp UMeshComponent
---@param matList ULuaArrayHelper<UMaterialInterface>
function ULobbyModelShowEntity:SetMeshAndMaterial(battleItemHandleBase, meshComp, matList) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param meshComp UMeshComponent
---@param matList ULuaArrayHelper<UMaterialInterface>
function ULobbyModelShowEntity:ReceiveSetMeshAndMaterial(battleItemHandleBase, meshComp, matList) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelShowEntity:SetMeshCompTrans(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelShowEntity:ReceiveSetMeshCompTrans(battleItemHandleBase) end

---@param meshComp UMeshComponent
---@param material UMaterialInstance
---@param AdvancedMat UMaterialInterface
function ULobbyModelShowEntity:ApplyMaterial(meshComp, material, AdvancedMat) end

---@param meshComp UMeshComponent
---@param material UMaterialInstance
---@param AdvancedMat UMaterialInterface
function ULobbyModelShowEntity:ReceiveApplyMaterial(meshComp, material, AdvancedMat) end

---@param meshComp UMeshComponent
---@param material UMaterialInstance
---@param idx number
---@param AdvancedMat UMaterialInterface
function ULobbyModelShowEntity:ApplyMaterialByIdx(meshComp, material, idx, AdvancedMat) end

function ULobbyModelShowEntity:ResetEntityBeforePushToPool() end

function ULobbyModelShowEntity:ClearEntity() end

function ULobbyModelShowEntity:ReceiveClearEntity() end

---@param slot number
---@return string
function ULobbyModelShowEntity:GetSlotSocketName(slot) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param fatherComp USceneComponent
---@param fatherEntity ULobbyModelShowEntity
---@param SocketName string
function ULobbyModelShowEntity:ApplyMeshComp(battleItemHandleBase, fatherComp, fatherEntity, SocketName) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param fatherComp USceneComponent
---@param fatherEntity ULobbyModelShowEntity
---@param SocketName string
function ULobbyModelShowEntity:ReceiveApplyMeshComp(battleItemHandleBase, fatherComp, fatherEntity, SocketName) end

---@param resID number
---@return boolean
function ULobbyModelShowEntity:CanPutOnComponent(resID) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelShowEntity:PutOnComponent(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelShowEntity:ReceivePutOnComponent(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelShowEntity:PutOffComponent(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelShowEntity:ReceivePutOffComponent(battleItemHandleBase) end

---@param slotId number
function ULobbyModelShowEntity:PutOffComponentBySlotId(slotId) end

---@param animPath string
---@param animType number
---@return number
function ULobbyModelShowEntity:PlayItemAnim(animPath, animType) end

function ULobbyModelShowEntity:StopItemSound() end

---@param animPath string
---@param animType number
function ULobbyModelShowEntity:PlayItemMontage(animPath, animType) end

---@param animPath string
---@param animType number
function ULobbyModelShowEntity:ReceivePlayItemMontage(animPath, animType) end

function ULobbyModelShowEntity:StopPlayItemMontage() end

function ULobbyModelShowEntity:StopPlayItemAnim() end

function ULobbyModelShowEntity:ReceivStopPlayItemAnim() end

---@param ratio number
function ULobbyModelShowEntity:SetItemAnimPos(ratio) end

function ULobbyModelShowEntity:StopAnimParticle() end

function ULobbyModelShowEntity:PauseItemMontage() end

function ULobbyModelShowEntity:ResumeItemMontage() end

---@param montage UAnimMontage
function ULobbyModelShowEntity:ClearNotifySpawnActor(montage) end

---@param InParticleHandle ULobbyParticleHandle
---@param bIsLoop boolean
function ULobbyModelShowEntity:AttachParticle(InParticleHandle, bIsLoop) end

function ULobbyModelShowEntity:ClearParticle() end

---@param showTime number
function ULobbyModelShowEntity:SetParticleShowTime(showTime) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelShowEntity:ApplyAnimInstance(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelShowEntity:ReceivApplyAnimInstance(battleItemHandleBase) end

function ULobbyModelShowEntity:InteractModel() end

function ULobbyModelShowEntity:ReceivInteractModel() end

---@param name string
---@param ParameterName string
---@param idx number
---@param plateNumber string
---@param styleId number
---@param VehicleParameterName string
function ULobbyModelShowEntity:ApplyItemNameMaterial(name, ParameterName, idx, plateNumber, styleId, VehicleParameterName) end

---@param name string
---@param ParameterName string
---@param idx number
---@param plateNumber string
---@param styleId number
---@param VehicleParameterName string
function ULobbyModelShowEntity:ReceivApplyItemNameMaterial(name, ParameterName, idx, plateNumber, styleId, VehicleParameterName) end

---@param Value number
---@param ParameterName string
---@param idx number
function ULobbyModelShowEntity:SetItemMaterialScalarParameter(Value, ParameterName, idx) end

---@param InTexture UTexture
---@param ParameterName string
---@param SlotName string
function ULobbyModelShowEntity:SetItemMaterialTextureParameter(InTexture, ParameterName, SlotName) end

---根据材质的Index修改Mesh的材质
---@param InMaterialInst UMaterialInstance
---@param InIndex number
function ULobbyModelShowEntity:SetItemMaterialByIndex(InMaterialInst, InIndex) end

---根据材质的SlotName修改Mesh的材质
---@param InMaterialInst UMaterialInstance
---@param InSlotName string
function ULobbyModelShowEntity:SetItemMaterialBySlotName(InMaterialInst, InSlotName) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelShowEntity:ShowVehicleIntroByResId(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelShowEntity:StopVehicleIntro(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
---@return number
function ULobbyModelShowEntity:GetSlotID(battleItemHandleBase) end

---@param trans FTransform
function ULobbyModelShowEntity:SetModelLocalTransform(trans) end

---@param id number
function ULobbyModelShowEntity:SetStreamerID(id) end

function ULobbyModelShowEntity:SetVehicleAnimEnd() end

---播放LevelSequence
---@param InBattleItemHandle UBattleItemHandleBase
---@param InLevelSequenceType number
---@param InLobbyCharacter AActor
---@param InPlayLevelSequenceMode number
---@return boolean
function ULobbyModelShowEntity:PlayLevelSequence(InBattleItemHandle, InLevelSequenceType, InLobbyCharacter, InPlayLevelSequenceMode) end

---停止LevelSequence
---@return boolean
function ULobbyModelShowEntity:StopLevelSequence() end

---设置贴花组件的参数
---@param InDecalComponent UDecalComponent
---@param InBattleItemHandle UBattleItemHandleBase
---@param InDecalName string
---@param InExtraData ULuaMapHelper<string, string>
function ULobbyModelShowEntity:SetDecalComponentParams(InDecalComponent, InBattleItemHandle, InDecalName, InExtraData) end

---当该贴花是显示文字时，设置贴花组件的文字内容
---@param InDecalComponent UDecalComponent
---@param InBattleItemHandle UBattleItemHandleBase
---@param InParameterName string
---@param InDecalContent string
function ULobbyModelShowEntity:SetDecalComponentMaterialWithString(InDecalComponent, InBattleItemHandle, InParameterName, InDecalContent) end

---根据特效名称播放特效
---@param InBattleItemHandle UBattleItemHandleBase
---@param InParticleName string
---@param bIsLoop boolean
function ULobbyModelShowEntity:AttachParticleByName(InBattleItemHandle, InParticleName, bIsLoop) end

---释放LevelSequence的资源
function ULobbyModelShowEntity:ReleaseLevelSequenceResources() end

---@param MeshComp UMeshComponent
---@param MasterComp USceneComponent
---@param SocketName string
---@param MeshType EMeshType
function ULobbyModelShowEntity:SetMaster(MeshComp, MasterComp, SocketName, MeshType) end

function ULobbyModelShowEntity:LoopPlayParticle() end

---@param behaveType EItemBehaviorType
---@param battleHandle UBattleItemHandleBase
---@param additionParams ULuaMapHelper<string, string>
---@return boolean
function ULobbyModelShowEntity:DoPlayBehave(behaveType, battleHandle, additionParams) end

---@param behaveType EItemBehaviorType
function ULobbyModelShowEntity:DoStopBehave(behaveType) end

function ULobbyModelShowEntity:DoStopAllBehave() end

---@param behaveType EItemBehaviorType
---@return boolean
function ULobbyModelShowEntity:IsEntityStillBehave(behaveType) end

---@param battleHandle UBattleItemHandleBase
---@param ParticleId number
---@param IsAudioPlay boolean
---@return number
function ULobbyModelShowEntity:PlayFaceParticleAndAudio(battleHandle, ParticleId, IsAudioPlay) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param IsShow boolean
function ULobbyModelShowEntity:EntityVisibilityChanged(battleItemHandleBase, IsShow) end

function ULobbyModelShowEntity:PlayTrailSeq() end

function ULobbyModelShowEntity:StopTrailSeq() end

---@param handle ULobbyParticleHandle
---@param ParticleKey number
---@param IsAudioPlay boolean
function ULobbyModelShowEntity:PlayParticleAndAudioShow(handle, ParticleKey, IsAudioPlay) end

function ULobbyModelShowEntity:ReplayParticleShow() end

function ULobbyModelShowEntity:StopParticleShow() end
