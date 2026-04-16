---@meta

---@class FNewFPPMeshLocationAdditiveInfo
---@field AdditiveName string
---@field DestinAdditive FVector
FNewFPPMeshLocationAdditiveInfo = {}


---@class UNewFPPSpringArmComponent: USpringArmComponent, IObjectPoolInterface
---@field UpperBodyMeshTag string
---@field FPPCameraAnimBoneName string
---@field FPPUpperBodyBoneName string
---@field AnimRootBoneName string
---@field BeforePeekFlagName string
---@field AfterPeekFlagName string
---@field FPPBoneName_spine_01 string
---@field HeadBoneName string
---@field HeadBoneCachedFlag string
---@field EnableMeshesOffset boolean
---@field EnableLimitUpperMeshRotator boolean
---@field EnableAnimOffset boolean
---@field UpperMeshMaxPitch_Prone number
---@field UpperMeshMinPitch_Prone number
---@field UpperMeshPitch_ProneMoveBlendTime number
---@field UpperMeshPitch_EnterLeaveProneBlendTime number
---@field UpperMeshPitch_CacheTargetPitchLerpSpeed number
---@field UseWorldSpaceCalculationTime number
---@field OriginMeshToCameraTransform FTransform
---@field CacheMeshToCameraTransform FTransform
---@field bMeshesOffsetEnabled boolean
---@field bLockMeshesRotationEnabled boolean
---@field DelayUnLockMeshesRotationTime number
---@field DelayUnLockMeshesRotationTime_Counter number
---@field LowerMeshesOffsetCurve FRuntimeFloatCurve
---@field LowerMeshesOffsetCurve_Swim FRuntimeFloatCurve
---@field PitchRotateInterpSpeed number
---@field LowerMeshesRenderInBasePassMaxPitch number
---@field bEnableFixSpineForwardCovered boolean
---@field ForwardCoveredCheckBoneName string
---@field ForwardCoveredCheckThreshold number
---@field bIsLowerMeshesRenderInBasePass boolean
---@field ViewRotator FRotator
---@field SpringArmOffset_RelativeLocation FVector
---@field SpringArmOffset_RelativeRotation FVector
---@field LowerMeshOffset_RelativeLocation FVector
---@field AnimPoseSocket_Location FVector
---@field NearDaethTPPMeshOffset_Location FVector
---@field UpperMeshInVehicle_RelativeLocation FVector
---@field UpperSpineOffsetBoneTrans_Default FTransform
---@field LowerSpineOffsetBoneTrans_Default FTransform
---@field AnimOffset_Location FVector
---@field AnimOffset_Rotation FRotator
---@field AnimOffset_BoundsScale number
---@field NotEffectADS_AnimOffset_Rotation FRotator
---@field ProneCameraOffset_CacheTargetOffset number
---@field ProneCameraOffset_EnterLeaveProneBlendTimeCounter number
---@field StandCameraOffset_CacheTargetOffset number
---@field StandCameraOffset_EnterLeaveStandBlendTimeCounter number
---@field UpperMeshPitch_CacheTargetPitch number
---@field UpperMeshPitch_ProneMoveBlendTimeCounter number
---@field UpperMeshPitch_EnterLeaveProneBlendTimeCounter number
---@field bEnableUpdateSpringOffset boolean
---@field bLastIsFPPMeshAnimShowMode boolean
---@field bIsFPPMeshAnimShowMode boolean
---@field FPPMeshAnimShowModeLimitTime number
---@field FPPMeshBoundsScaleDefaultValue number
---@field FPPMeshAnimShowModeBoundsScaleThreshold number
---@field bDisableUpperMeshOffset boolean
---@field bEnableAdditivePeekOffset boolean
---@field bForceNeedContainHorizontal boolean @是否强制保持身体姿势为水平状态 且UpperMesh不产生Offset
---@field CacheUpperMeshFollowCameraInterpValue number
---@field CacheUpperMeshRelativePitch number
---@field CacheUpperMeshRelativeLoc FVector
---@field EnableUpdateAnimArm boolean
---@field StopUpdateAnimArm number
---@field UpdateAnimArmRotScale FVector
---@field EnableUpdateProneCameraOffset boolean
---@field ProneCameraOffset_LerpSpeed number
---@field ProneCameraOffset_EnterLeaveProneBlendTime number
---@field EnableUpdateStandCameraOffset boolean
---@field StandCameraOffset_LerpSpeed number
---@field StandCameraOffset_EnterLeaveStandBlendTime number
---@field CacheRelativeSocketLocation FVector
---@field CacheRelativeSocketRotation FQuat
---@field Location_AnimOffsetScale number
---@field Rotation_AnimOffsetScale number
---@field EnableMeshOffsetInViewPortCurve boolean
---@field EnalbeScopeLeaveOffset boolean
---@field MeshOffsetInViewPortVector FVector
---@field CurrentMeshOffsetInViewPortVector FVector
---@field MeshOffsetInViewPortVectorSpeed number
---@field bEnableMeshLocationAddtiveApply boolean
---@field bEnableMeshLocationAddtive boolean
---@field bMeshLocationAddtiveLerpping boolean
---@field MeshLocationAddtiveSpeed number
---@field CurrentMeshLocationAddtive FVector
---@field DestinMeshLocationAddtive FVector
---@field MeshAdditiveList ULuaArrayHelper<FNewFPPMeshLocationAdditiveInfo>
---@field CameraRotatorOffset FRotator
---@field bActiveCameraRotatorOffset boolean
---@field SpringArmMaxZHeight_Vault number
local UNewFPPSpringArmComponent = {}

function UNewFPPSpringArmComponent:BeginPlay() end

function UNewFPPSpringArmComponent:HandleOnAnimInitialized() end

function UNewFPPSpringArmComponent:PostInitProperties() end

function UNewFPPSpringArmComponent:InitializeWhenBeginPlay() end

---@param bEnabled boolean
function UNewFPPSpringArmComponent:SetMeshesOffsetEnabled(bEnabled) end

---@param InLocationScale number
---@param InRotationScale number
function UNewFPPSpringArmComponent:SetAnimOffsetScale(InLocationScale, InRotationScale) end

---@param InIsShow boolean
---@param MaxDuringTime number
function UNewFPPSpringArmComponent:SetFPPMeshAnimShowMode(InIsShow, MaxDuringTime) end

function UNewFPPSpringArmComponent:UpdateAnimationArmLocation() end

---@param DesiredView FMinimalViewInfo
---@param DeltaTime number
function UNewFPPSpringArmComponent:UpdateAnimationBoundsScale(DesiredView, DeltaTime) end

---@param TransformSpace ERelativeTransformSpace
---@return FTransform
function UNewFPPSpringArmComponent:GetCacheSpringArmTransform(TransformSpace) end

---@param InEnableViewPortOffset boolean
function UNewFPPSpringArmComponent:SetMeshOffsetInViewPortEnable(InEnableViewPortOffset) end

---@param InOffsetCurve UCurveVector
---@param InEnableLeaveOffset boolean
function UNewFPPSpringArmComponent:SetMeshOffsetInViewPortCurve(InOffsetCurve, InEnableLeaveOffset) end

---@param InForce boolean
function UNewFPPSpringArmComponent:UpdateMeshOffsetInViewPortVector(InForce) end

---@return FVector
function UNewFPPSpringArmComponent:GetCurrentMeshLocationAddtive() end

---@param InEnableApply boolean
function UNewFPPSpringArmComponent:SetEnableMeshLocationAddtiveApply(InEnableApply) end

---@param InEnable boolean
---@param InImmediate boolean
function UNewFPPSpringArmComponent:SetEnableMeshLocationAddtive(InEnable, InImmediate) end

function UNewFPPSpringArmComponent:UpdateDestinMeshLocationAddtive() end

function UNewFPPSpringArmComponent:ForceUpdateCurrentMeshLocationAddtive() end

---@param InDelta number
---@param InImmediate boolean
function UNewFPPSpringArmComponent:UpdateCurrentMeshLocationAddtive(InDelta, InImmediate) end

---@param InInfo FNewFPPMeshLocationAdditiveInfo
---@param InImmediate boolean
function UNewFPPSpringArmComponent:AddMeshLocationAdditiveInfo(InInfo, InImmediate) end

---@param InInfo FNewFPPMeshLocationAdditiveInfo
---@param InImmediate boolean
function UNewFPPSpringArmComponent:RemoveMeshLocationAdditiveInfo(InInfo, InImmediate) end

---@param InInfoName string
---@param InImmediate boolean
function UNewFPPSpringArmComponent:RemoveMeshLocationAdditiveInfoByName(InInfoName, InImmediate) end

---@param bIsForce boolean
function UNewFPPSpringArmComponent:SetForceNeedContainHorizontal(bIsForce) end

---@param FollowCameraInterpValue number
---@param bReset boolean
function UNewFPPSpringArmComponent:SetUpperMeshFollowCamera_Interp(FollowCameraInterpValue, bReset) end

---@param DeltaTime number
function UNewFPPSpringArmComponent:UpdateMeshOffsetInVehicle(DeltaTime) end

---@param Montage UAnimMontage
function UNewFPPSpringArmComponent:OnMontageStartProcess(Montage) end

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UNewFPPSpringArmComponent:OnMontageEndProcess(Montage, bInterrupted) end

function UNewFPPSpringArmComponent:OnAllMontageInstancesEnded() end

function UNewFPPSpringArmComponent:UpdateCheckMontageEnd() end
