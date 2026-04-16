---@meta

---@class FPlayerAIVaultCheckData
---@field VaultKey string
---@field blockthickLength number
---@field blockheight number
---@field isFallingVault boolean
---@field isJump boolean
FPlayerAIVaultCheckData = {}


---@class UPlayerVaultComponent: UActorComponent, IObjectPoolInterface
---@field isInVaultingCpp boolean
---@field hasSendStopVault boolean
---@field bNeedCheckToSetMovementModeWhenExitVault boolean
---@field AICheckDataList ULuaArrayHelper<FPlayerAIVaultCheckData>
---@field bUpdateFpsVaule boolean
---@field isloadAllAnim boolean
---@field VaultEndZDeviation number
---@field ForceSetToEndLocDis number
---@field CacheVaultHeightHitPoint FVector
---@field bDoStuckCheckWhenFinishVault boolean
---@field StuckCheckTraceZOffsetCapsuleTopUp number
---@field StuckCheckTraceZOffsetCapsuleBottonDown number
---@field bUseCharJumpWhenMonsterJumpVault boolean
---@field bEnterStateWhenMonsterVault boolean
---@field bPauseLogicWhenMonsterVault boolean
---@field bStopRepMovementWhenMonsterVault boolean
---@field bResetMeshOffsetWhenMonsterVault boolean
---@field bForceSetZToEndLocWhenMonsterVault boolean
---@field VaultMontageCacheList ULuaArrayHelper<UAnimMontage>
---@field CheckInterval number
---@field CheckCapsuleSize FVector2D
---@field ValidDistance number
---@field ValidAngle number
---@field CheckTolerance number
---@field LiftSkillClass AUTSkill
---@field ClimbSkillClass AUTSkill
---@field Lift_ForwardDistance number
---@field Lift_SlopeHeight number
---@field Lift_MinHeight number
---@field Lift_MaxHeight number
---@field Lift_BackwardDistance number
---@field Lift_StandAreaRadius number
---@field Lift_DistanceToWall number
---@field LiftStartLocXYOffset FVector2D
---@field PullSkillClass AUTSkill
---@field JumpSkillClass AUTSkill
---@field Pull_ForwardDistance number
---@field Pull_BackwardDistance number
---@field Pull_SlopeHeight number
---@field Pull_MinHeight number
---@field Pull_MaxHeight number
---@field Pull_DistanceToWall number
---@field PullStartLocXYOffset FVector2D
---@field DrawDebugType EDrawDebugTrace
---@field DrawTime number
---@field WallForwardDir FVector2D
---@field LocalStartPreparingLoc FVector
local UPlayerVaultComponent = {}

---@param bFromPersistentPool boolean
function UPlayerVaultComponent:OnRespawned_BlueprintImpl(bFromPersistentPool) end

---@return FVector
function UPlayerVaultComponent:GetCurVaultEndPos() end

function UPlayerVaultComponent:UpdateVault_BluePrint() end

---@param bNeedCheck boolean
---@return boolean
function UPlayerVaultComponent:VaultFromCPP(bNeedCheck) end

---@param startPos FVector
---@param topPos FVector
---@param crossblockMaxFall number
---@param crossblockMaxDis number
---@param isjump boolean
---@param movedir FRotator
---@param blobkthick number
function UPlayerVaultComponent:FpsVaultServer(startPos, topPos, crossblockMaxFall, crossblockMaxDis, isjump, movedir, blobkthick) end

---@param startPos FVector
---@param topPos FVector
---@param crossblockMaxFall number
---@param crossblockMaxDis number
---@param isjump boolean
---@param movedir FRotator
---@param blobkthick number
function UPlayerVaultComponent:FpsVaultToAll(startPos, topPos, crossblockMaxFall, crossblockMaxDis, isjump, movedir, blobkthick) end

---@return boolean
function UPlayerVaultComponent:GetShowZombieDebugInfo() end

---@param NewAsset UVaultAnimDataAsset
function UPlayerVaultComponent:SetDynamicVaultAnimDataAssetPtr(NewAsset) end

---@return string
function UPlayerVaultComponent:GetVaultKeyForAutoTest() end

---@param bUsePawnPosition boolean
---@param bCheckState boolean
---@param WorldLocation FVector
---@param WorldRotation FRotator
---@return boolean
function UPlayerVaultComponent:CheckCanVaultWithPosition(bUsePawnPosition, bCheckState, WorldLocation, WorldRotation) end

---@return boolean
function UPlayerVaultComponent:CheckCanVault_CPP() end

function UPlayerVaultComponent:Vault() end

---@param dis number
---@param height number
---@param length number
---@param VaultKey string
---@param startPos FVector
---@param checkActor AActor
---@param crossblockMaxFall number
---@param crossblockMaxDis number
---@param hitpoint FVector
---@param movedir FRotator
---@param AnimMontage UAnimMontage
---@param bCheckDynamicBlock boolean
function UPlayerVaultComponent:CharacterStartVault(dis, height, length, VaultKey, startPos, checkActor, crossblockMaxFall, crossblockMaxDis, hitpoint, movedir, AnimMontage, bCheckDynamicBlock) end

---@param dis number
---@param height number
---@param length number
---@param VaultKey string
---@param startPos FVector
---@param endPos FVector
---@param vaultRot FRotator
---@param checkActor AActor
---@param crossblockMaxFall number
---@param crossblockMaxDis number
---@param hitpoint FVector
---@param movedir FRotator
---@param bCheckDynamicBlock boolean
function UPlayerVaultComponent:PawnStartVault(dis, height, length, VaultKey, startPos, endPos, vaultRot, checkActor, crossblockMaxFall, crossblockMaxDis, hitpoint, movedir, bCheckDynamicBlock) end

---@param EndPos FVector
function UPlayerVaultComponent:SetAICharacterVaultStartData(EndPos) end

---模型AI用，调试蓝图调用
---@param InStateInfo string
function UPlayerVaultComponent:MarkBpState(InStateInfo) end

---@return FRotator
function UPlayerVaultComponent:GetRelicateRotator() end

---@param AnimKey string
---@param playRate number
function UPlayerVaultComponent:SetPlayerVaultAnim(AnimKey, playRate) end

---@param AnimKey string
---@param playRate number
function UPlayerVaultComponent:SetZombieVaultAnim(AnimKey, playRate) end

---@param height number
---@return string
function UPlayerVaultComponent:GetVaultKeyByBlockHeight(height) end

---@param height number
---@param blockLength number
---@param bIsJump boolean
---@return string
function UPlayerVaultComponent:GetVaultKeyByBlockHeightAndBlockLengthWithJump(height, blockLength, bIsJump) end

---@param height number
---@param blockLength number
---@return string
function UPlayerVaultComponent:GetVaultKeyByBlockHeightAndBlockLength(height, blockLength) end

---@param height number
---@param blockLength number
---@return boolean
function UPlayerVaultComponent:GetIsJumpByBlockHeightAndBlockLength(height, blockLength) end

---@param height number
---@param blockDis number
---@return boolean
function UPlayerVaultComponent:CheckCanVaultByBlockHeightAndBlockDis(height, blockDis) end

---@param blockHeightTemp number
---@param BlockLengthTemp number
---@param TestHeight number
---@param TestBlocklength number
---@return string
function UPlayerVaultComponent:GetAIVaultKey(blockHeightTemp, BlockLengthTemp, TestHeight, TestBlocklength) end

---@param blockHeightTemp number
---@param BlockLengthTemp number
---@param TestHeight number
---@param TestBlocklength number
---@param bIsJump boolean
---@return string
function UPlayerVaultComponent:GetAIVaultKeyWithJump(blockHeightTemp, BlockLengthTemp, TestHeight, TestBlocklength, bIsJump) end

---@param blockHeightTemp number
---@param TestHeight number
---@return string
function UPlayerVaultComponent:GetAIVaultLengthKey(blockHeightTemp, TestHeight) end

---@return boolean
function UPlayerVaultComponent:IsUnAttachToWorld() end

---@return boolean
function UPlayerVaultComponent:IsCanSetEndMovementMode() end

function UPlayerVaultComponent:PreSaveCacheData() end

---@param bIgnoreOtherChars boolean
---@return boolean
function UPlayerVaultComponent:CheckCanEnterPreparingPose(bIgnoreOtherChars) end

---@return boolean
function UPlayerVaultComponent:CheckCanStartDoubleVault() end

---@return boolean
function UPlayerVaultComponent:TryEnterPreparingPose() end

---@return boolean
function UPlayerVaultComponent:TryStartDoubleVault() end

---@param bShow boolean
function UPlayerVaultComponent:NotifyDoubleVaultHUD(bShow) end

---@param bLift boolean
---@param Location FVector
---@param Rotation FRotator
function UPlayerVaultComponent:TryEnterPreparingPoseServer(bLift, Location, Rotation) end

---@param TargetCharacter ASTExtraBaseCharacter
function UPlayerVaultComponent:TryStartDoubleVaultServer(TargetCharacter) end
