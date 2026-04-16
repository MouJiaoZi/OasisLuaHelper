---@meta

---@class ECameraDataOperateType
---@field None number
---@field Accumulate number
---@field Multiplicator number
---@field Priority1 number
---@field Priority2 number
---@field Priority3 number
---@field Priority4 number
---@field Priority5 number
---@field Priority6 number
---@field Priority7 number
---@field Priority8 number
ECameraDataOperateType = {}


---@class ECameraCurveAnimType
---@field CameraCurveAnim_TargetOffset number
---@field CameraCurveAnim_SocketOffset number
ECameraCurveAnimType = {}


---@class FCameraModifyData
---@field ModifyName string
---@field bFilterEnable boolean
---@field OperateType ECameraDataOperateType
---@field bShowCategorySpringArm boolean
---@field bTargetArmLength boolean
---@field TargetArmLength number
---@field bModifyAttachRelativeLocation number
---@field AttachRelativeLocation FVector
---@field RelativeLocationOffsetInterpSpeed number
---@field bDesiredRotationOffset boolean
---@field DesiredRotationOffset FRotator
---@field bIsRotationLimitShouldActive boolean
---@field bProbeSize boolean
---@field ProbeSize number
---@field bModifySpringArmUsePawnControlRotation number
---@field bSpringArmUsePawnControlRotation number
---@field bModifyDoCollisionTest number
---@field bDoCollisionTest number
---@field bModifyEnableCameraLag number
---@field bEnableCameraLag number
---@field bModifyEnableCameraRotationLag number
---@field bEnableCameraRotationLag number
---@field bModifyUseCameraLagSubstepping number
---@field bUseCameraLagSubstepping number
---@field CameraLagSpeed number @If bEnableCameraLag is true, controls how quickly camera reaches target position. Low values are slower (more lag), high values are faster (less lag), while zero is instant (no lag).
---@field CameraRotationLagSpeed number @If bEnableCameraRotationLag is true, controls how quickly camera reaches target position. Low values are slower (more lag), high values are faster (less lag), while zero is instant (no lag).
---@field bModifyShouldTraceArmOrigin number
---@field bShouldTraceArmOrigin number
---@field ArmLengthInterpSpeed number
---@field TargetOffsetInterpSpeed number
---@field SocketOffsetInterpSpeed number
---@field DesiredRotationOffsetInterpSpeed number
---@field bShowCategoryAttachment boolean
---@field bAttachSocket boolean
---@field AttachSocket string
---@field AttachKeepRelative boolean
---@field AttachRelativeTransform FTransform
---@field OverrideSocketOffset boolean
---@field SocketOffset FVector
---@field bEnableModifySocketOffetZViaPitch boolean
---@field SocketOffetPitchMapZOffset FVector2D
---@field SocketOffetPitchRange FVector2D
---@field OverrideTargetOffset boolean
---@field TargetOffset FVector
---@field bShowCategoryCamera boolean
---@field bModifyCameraUsePawnControlRotation number
---@field bCameraUsePawnControlRotation number
---@field bFieldOfView boolean
---@field FieldOfView number
---@field FieldOfViewInterpSpeed number
---@field SpringArmRelativeScale3D FVector
---@field CameraAdditiveOffset FTransform
---@field bCameraRotOffset boolean
---@field CameraRotOffset FRotator
---@field CameraRotOffsetInterpSpeed number
---@field bShowCategoryOther boolean
---@field bLifeTime boolean
---@field LifeTime number
---@field bAddiOperatePriority boolean
---@field AddiOperatePriority ECameraDataOperateType
---@field ExclusionDataNames ULuaArrayHelper<string>
---@field SameGroupDataNames ULuaArrayHelper<string>
FCameraModifyData = {}


---@class FCameraModifySpringArm
FCameraModifySpringArm = {}


---@class FCameraPossessData
---@field PossessName string
---@field OverridePossessNameList ULuaArrayHelper<string>
---@field DefaultCameraData FCameraModifyData
---@field StaticCameraModifyDataList ULuaArrayHelper<FCameraModifyData>
---@field DynamicCameraModifyDataList ULuaArrayHelper<FCameraModifyData>
---@field bDestroyStaticCameraComponents boolean
---@field StaticCameraAndSpringArm ULuaArrayHelper<USceneComponent>
FCameraPossessData = {}


---@class FCameraAnimData
---@field AnimType ECameraCurveAnimType
---@field AnimCurve UCurveVector
FCameraAnimData = {}
