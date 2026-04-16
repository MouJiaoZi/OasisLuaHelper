---@meta

---@class EPlayerCameraMode
---@field PCM_Normal number
---@field PCM_Near number
---@field PCM_Aim number
---@field PCM_Plane number
---@field PCM_FPP number
EPlayerCameraMode = {}


---@class ELockTPPReason
---@field LTR_None number
---@field LTR_Skill number
---@field LTR_Interacte number
---@field LTR_Weapon number
---@field LTR_Vehicle number
---@field LTR_Level number
ELockTPPReason = {}


---@class ECameraModeSwitchResult
---@field Success number @成功切换
---@field DefaultError number @默认错误
---@field DeadError number @角色死亡
---@field AirAttackError number @空袭禁止
---@field ForceFPP number @人称禁止
---@field TypeError number @类型错误
ECameraModeSwitchResult = {}


---@class ECameraDataType
---@field ECameraDataType_Stand number
---@field ECameraDataType_Crouch number
---@field ECameraDataType_Prone number
---@field ECameraDataType_Indoor number
---@field ECameraDataType_LeanLeft number
---@field ECameraDataType_LeanRight number
---@field ECameraDataType_Vehicle number
---@field ECameraDataType_NearDeath number
---@field ECameraDataType_PeekLeft number
---@field ECameraDataType_PeekRight number
---@field ECameraDataType_IndoorLowerCameraStand number
---@field ECameraDataType_IndoorLowerCameraCrouch number
---@field ECameraDataType_IndoorLowerCameraProne number
---@field ECameraDataType_Vault number
---@field ECameraDataType_Shoveling number
---@field ECameraDataType_Helicopter number
---@field ECameraDataType_DynamicValueForPhotoMode number
---@field ECameraDataType_FireBalloon number
---@field ECameraDataType_ParachuteFalling number
---@field ECameraDataType_ParachuteOpening number
---@field ECameraDataType_HelicopterShoulderView number
---@field ECameraDataType_Battleship number
---@field ECameraDataType_InhumanShape number
---@field ECameraDataType_NearDeathSwim number
---@field ECameraDataType_VehicelDriverShoot number
---@field ECameraDataType_UAZ_AttachedVehiclePassenger number
---@field ECameraDataType_Dacia_AttachedVehiclePassenger number
---@field ECameraDataType_CoupeRB_AttachedVehiclePassenger number
---@field ECameraDataType_NeZha_AttachedVehiclePassenger number
---@field ECameraDataType_LaunchControlPassenger_FadeIn number
---@field ECameraDataType_LaunchControlPassenger_Launch number
---@field ECameraDataType_LaunchControlPassenger_FadeOut number
---@field ECameraDataType_Trailer_AttachedVehiclePassenger number
---@field ECameraDataType_Snowball_Passenger number
---@field ECameraDataType_Max number
ECameraDataType = {}


---@class EFPPCameraDataType
---@field EFPPCameraType_InVehicle number
---@field EFPPCameraType_Shoveling number
---@field EFPPCameraType_PopKartAccelerate number
---@field EFPPCameraType_Max number
EFPPCameraDataType = {}


---@class EVehCameraDataType
---@field VehCameraDataType_IndoorLowerCamera number
---@field VehCameraDataType_Max number
EVehCameraDataType = {}


---@class EPerspectiveMode
---@field TPP number
---@field FPP number
---@field AIM number
EPerspectiveMode = {}


---@class ECameraDataLerpFunction
---@field LerpConfigSpeed number
---@field LerpInputSpeed number
ECameraDataLerpFunction = {}


---@class FDollyZoomParam
---@field Fov number
---@field Scale number
---@field Offset number
---@field ZoomValue number
FDollyZoomParam = {}


---@class FPlayerCameraTypeInfo
---@field CameraTypeName string
---@field bIsEnable boolean
FPlayerCameraTypeInfo = {}


---@class FCameraOffsetData
---@field DataName string
---@field ExclusionDataNames ULuaArrayHelper<string>
---@field bDisableCheckPoseData boolean
---@field RelativeLocationOffset FVector
---@field SocketOffset FVector
---@field TargetOffset FVector
---@field TargetArmLength number
---@field SpringArmLength number
---@field TargetArmLengthAdditiveOffset number
---@field FieldOfView number
---@field bLerpAdditiveOffsetFov boolean
---@field AdditiveOffsetFov number
---@field ArmLengthInterpSpeed number
---@field LocOffsetInterpSpeed number
---@field SocketOffsetInterpSpeed number
---@field TargetOffsetInterpSpeed number
---@field FieldOfViewInterpSpeed number
---@field bDoCollisionTestModify boolean
---@field bDoCollisionTest boolean
---@field bUsePawnControlRotationModify boolean
---@field bUsePawnControlRotation boolean
---@field SpringArmRotation FRotator
---@field bEnableCameraLagModify boolean
---@field bEnableCameraLag boolean
---@field bEnableCameraRotationLagModify boolean
---@field bEnableCameraRotationLag boolean
---@field bCameraLagSpeedModify boolean
---@field CameraLagSpeed number
---@field bCameraRotationLagSpeedModify boolean
---@field CameraRotationLagSpeed number
---@field OperateType ECameraDataOperateType
---@field ActiveOperateType boolean
FCameraOffsetData = {}


---@class FCameraOffsetDataFadeInfo
---@field IsFadeIn boolean
---@field IsInverseCurve boolean
---@field FadeTime number
---@field CurrentFadeTime number
---@field DestinOffsetData FCameraOffsetData
FCameraOffsetDataFadeInfo = {}


---@class FUGCCameraOffsetData
---@field DataName string
---@field SocketOffset FVector
---@field TargetOffset FVector
---@field TargetArmLength number
---@field AdditiveOffsetFov number
---@field bUsePawnControlRotationModify boolean
---@field bUsePawnControlRotation boolean
---@field SpringArmRotation FRotator
---@field bCameraLagSpeedModify boolean
---@field CameraLagSpeed number
---@field bCameraRotationLagSpeedModify boolean
---@field CameraRotationLagSpeed number
FUGCCameraOffsetData = {}


---@class FCameraOffsetCurveData
---@field DataName string
FCameraOffsetCurveData = {}


---@class FCameraOffsetCurveDataModifier
---@field ActiveCurveModifiers ULuaArrayHelper<FCameraOffsetCurveData>
FCameraOffsetCurveDataModifier = {}


---@class FCameraParams
---@field RelativeTransform FTransform
---@field FieldOfView number
---@field bUsePawnControlRotation boolean
FCameraParams = {}


---@class FSpringArmParams
---@field CameraParam FCameraParams
---@field ParentSocketName string
---@field TargetArmLength number
---@field SocketOffset FVector
---@field TargetOffset FVector
---@field RelativeTransform FTransform
---@field ProbeSize number @How big should the query probe sphere be (in unreal units)
---@field ProbeChannel ECollisionChannel @Collision channel of the query probe (defaults to ECC_Camera)
---@field bDoCollisionTest boolean
---@field bUsePawnControlRotation boolean
---@field bEnableCameraLag boolean
---@field bEnableCameraRotationLag boolean
---@field CameraLagSpeed number
---@field PerspectiveMode EPerspectiveMode
FSpringArmParams = {}
