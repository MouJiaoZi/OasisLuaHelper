---@meta

---@class UTransfigurationSkill: UPersistEffectWithState
---@field DynamicPawnState FGameplayTag
---@field bTickAvatarHidden boolean
---@field ExcludingAvatarSlot ULuaArrayHelper<EAvatarSlotType>
---@field bTickWeaponHidden boolean
---@field TransformMeshScale number
---@field TransformAnimInstanceClass UAnimInstance
---@field MeshHeightOffset number
---@field MeshTags ULuaArrayHelper<string>
---@field bEnableCharacterMeshTick boolean
---@field bUseCameraModify boolean
---@field CameraModifyData FCameraOffsetData
---@field CapsuleHalfHeight number
---@field CapsuleRadius number
---@field CheckTransBlockChannels ULuaArrayHelper<ECollisionChannel>
---@field JumpPositionCheckPawnStates ULuaArrayHelper<EPawnState>
---@field ShowUpFXSocket string
---@field TransformShowUIName string
---@field CachedHistoryChangeBackLocations ULuaArrayHelper<FVector>
---@field RecordHistoryChangeBackLocationTimer FTimerHandle
local UTransfigurationSkill = {}

function UTransfigurationSkill:OnApplyBP_AfterC() end

---@param bIsHidden boolean
function UTransfigurationSkill:SetAvatarHidden(bIsHidden) end

---@param bIsHidden boolean
function UTransfigurationSkill:SetWeaponHidden(bIsHidden) end

function UTransfigurationSkill:UndoAvatarParam() end

function UTransfigurationSkill:DoRegisterTransformSkeletalMesh() end

function UTransfigurationSkill:UndoRegisterTransformSkeletalMesh() end

function UTransfigurationSkill:ForceEndCharacterAnimNotifyStates() end

function UTransfigurationSkill:DoAddCustomCameraModify() end

function UTransfigurationSkill:UndoAddCustomCameraModify() end

function UTransfigurationSkill:DoStoreCharacterCapsuleSize() end

function UTransfigurationSkill:UndoStoreCharacterCapsuleSize() end

---@param OutHalfHeight number
---@param OutRadius number
---@return boolean
function UTransfigurationSkill:GetRestoreRootCapsuleSize(OutHalfHeight, OutRadius) end

---@param InHalfHeight number
---@param InRadius number
function UTransfigurationSkill:SetRootCapsuleSize(InHalfHeight, InRadius) end

function UTransfigurationSkill:DoSpeedUpObserverSmoothNetUpdate() end

function UTransfigurationSkill:UndoObserverSmoothNetUpdate() end

function UTransfigurationSkill:DoSetUpUIEffect() end

function UTransfigurationSkill:UndoSetUpUIEffect() end

function UTransfigurationSkill:SpawnApplyEmitterAttached() end

function UTransfigurationSkill:PostApplyAKEvent() end

function UTransfigurationSkill:FreshCharacterTransformBackState() end

function UTransfigurationSkill:StopSomeMontagesOnUnApply() end

function UTransfigurationSkill:LeaveTransfiguration() end

function UTransfigurationSkill:AdjustValidTransformBackLocation() end

---@param SourceLocation FVector
function UTransfigurationSkill:TeleportCharacterToNoStuckLocation(SourceLocation) end

function UTransfigurationSkill:TryRecordPlayerChangeBackLocation() end

---@return number
function UTransfigurationSkill:GetScaledConfigCapsuleHalfHeight() end

---@return number
function UTransfigurationSkill:GetScaledConfigCapsuleRadius() end

---@return boolean
function UTransfigurationSkill:IsTransformCanHoldCharacter() end

---@param bTickHidden boolean
function UTransfigurationSkill:SetTickAvatarHidden(bTickHidden) end

---@param bTickHidden boolean
function UTransfigurationSkill:SetTickWeaponHidden(bTickHidden) end
