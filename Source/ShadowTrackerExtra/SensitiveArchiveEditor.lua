---@meta

---@class UArchiveData: UObject
---@field MapValue ULuaMapHelper<string, string>
local UArchiveData = {}

---@param config FAutoAimingConfig
function UArchiveData:PutFAutoAimingConfigIntoMap(config) end

---@param config FAutoAimingConfig
function UArchiveData:GetFAutoAimingConfigFromMap(config) end

---@param config FSRecoilInfo
---@param AccessoriesVRecoilFactor number
---@param AccessoriesHRecoilFactor number
---@param AccessoriesRecoveryFactor number
function UArchiveData:PutFSRecoilInfoIntoMap(config, AccessoriesVRecoilFactor, AccessoriesHRecoilFactor, AccessoriesRecoveryFactor) end

---@param config FSRecoilInfo
---@param AccessoriesVRecoilFactor number
---@param AccessoriesHRecoilFactor number
---@param AccessoriesRecoveryFactor number
function UArchiveData:GetFSRecoilInfoFromMap(config, AccessoriesVRecoilFactor, AccessoriesHRecoilFactor, AccessoriesRecoveryFactor) end

---@param config FSDeviation
function UArchiveData:PutFSDeviationIntoMap(config) end

---@param config FSDeviation
function UArchiveData:GetFSDeviationFromMap(config) end

---@param CrossHairType number
---@param CrossHairInitialSize number
---@param CrossHairBurstSpeed number
---@param CrossHairBurstIncreaseSpeed number
function UArchiveData:PutCrossHairConfigIntoMap(CrossHairType, CrossHairInitialSize, CrossHairBurstSpeed, CrossHairBurstIncreaseSpeed) end

---@param CrossHairType number
---@param CrossHairInitialSize number
---@param CrossHairBurstSpeed number
---@param CrossHairBurstIncreaseSpeed number
function UArchiveData:GetCrossHairConfigFromMap(CrossHairType, CrossHairInitialSize, CrossHairBurstSpeed, CrossHairBurstIncreaseSpeed) end

---@param FreeCameraSPL_Hor number
---@param FreeCameraSPL_Ver number
---@param FreeCamera_FPP_MIN number
---@param FreeCamera_FPP_MAX number
---@param FreeCamera_FPP_PITCH_MIN number
---@param FreeCamera_FPP_PITCH_MAX number
---@param FreeCamera_FPP_PITCH_MIN_LIMITED number
---@param FreeCamera_FPP_PITCH_MAX_LIMITED number
---@param FreeCameraSPL_Hor_Parachute number
---@param FreeCameraSPL_Ver_Parachute number
---@param RecoverLagDelayTime number
function UArchiveData:PutFreeCameraConfigIntoMap(FreeCameraSPL_Hor, FreeCameraSPL_Ver, FreeCamera_FPP_MIN, FreeCamera_FPP_MAX, FreeCamera_FPP_PITCH_MIN, FreeCamera_FPP_PITCH_MAX, FreeCamera_FPP_PITCH_MIN_LIMITED, FreeCamera_FPP_PITCH_MAX_LIMITED, FreeCameraSPL_Hor_Parachute, FreeCameraSPL_Ver_Parachute, RecoverLagDelayTime) end

---@param FreeCameraSPL_Hor number
---@param FreeCameraSPL_Ver number
---@param FreeCamera_FPP_MIN number
---@param FreeCamera_FPP_MAX number
---@param FreeCamera_FPP_PITCH_MIN number
---@param FreeCamera_FPP_PITCH_MAX number
---@param FreeCamera_FPP_PITCH_MIN_LIMITED number
---@param FreeCamera_FPP_PITCH_MAX_LIMITED number
---@param FreeCameraSPL_Hor_Parachute number
---@param FreeCameraSPL_Ver_Parachute number
---@param RecoverLagDelayTime number
function UArchiveData:GetFreeCameraConfigFromMap(FreeCameraSPL_Hor, FreeCameraSPL_Ver, FreeCamera_FPP_MIN, FreeCamera_FPP_MAX, FreeCamera_FPP_PITCH_MIN, FreeCamera_FPP_PITCH_MAX, FreeCamera_FPP_PITCH_MIN_LIMITED, FreeCamera_FPP_PITCH_MAX_LIMITED, FreeCameraSPL_Hor_Parachute, FreeCameraSPL_Ver_Parachute, RecoverLagDelayTime) end

---@param MotionControlConfig FMotionControlConfig
function UArchiveData:PutFMotionControlConfigIntoMap(MotionControlConfig) end

---@param MotionControlConfig FMotionControlConfig
function UArchiveData:GetFMotionControlConfigFromMap(MotionControlConfig) end

---@param bIsNeedCheckPullPercentage boolean
---@param NoRespondArea number
---@param ComfortableSwipeAddition number
---@param bIsLeftScreenUseComfortableSwipe boolean
---@param bIsRightScreenUseComfortableSwipe boolean
---@param sprintOptType number
---@param JoystickSprintDisThreshold number
---@param JoystickSprintDisThresholdNew number
---@param JoystickSprintBtnHeight number
---@param JoystickSprintAngleThreshold number
---@param AutoSprintWaitingTime number
---@param AutoSprintThreshold number
---@param bIsUseDisOrSpeedMove boolean
---@param JoystickOperatingMode number
---@param EasyGoStraightAngle number
function UArchiveData:PutOperatingConfigIntoMap(bIsNeedCheckPullPercentage, NoRespondArea, ComfortableSwipeAddition, bIsLeftScreenUseComfortableSwipe, bIsRightScreenUseComfortableSwipe, sprintOptType, JoystickSprintDisThreshold, JoystickSprintDisThresholdNew, JoystickSprintBtnHeight, JoystickSprintAngleThreshold, AutoSprintWaitingTime, AutoSprintThreshold, bIsUseDisOrSpeedMove, JoystickOperatingMode, EasyGoStraightAngle) end

---@param bIsNeedCheckPullPercentage boolean
---@param NoRespondArea number
---@param ComfortableSwipeAddition number
---@param bIsLeftScreenUseComfortableSwipe boolean
---@param bIsRightScreenUseComfortableSwipe boolean
---@param sprintOptType number
---@param JoystickSprintDisThreshold number
---@param JoystickSprintDisThresholdNew number
---@param JoystickSprintBtnHeight number
---@param JoystickSprintAngleThreshold number
---@param AutoSprintWaitingTime number
---@param AutoSprintThreshold number
---@param bIsUseDisOrSpeedMove boolean
---@param JoystickOperatingMode number
---@param EasyGoStraightAngle number
function UArchiveData:GetOperatingConfigFromMap(bIsNeedCheckPullPercentage, NoRespondArea, ComfortableSwipeAddition, bIsLeftScreenUseComfortableSwipe, bIsRightScreenUseComfortableSwipe, sprintOptType, JoystickSprintDisThreshold, JoystickSprintDisThresholdNew, JoystickSprintBtnHeight, JoystickSprintAngleThreshold, AutoSprintWaitingTime, AutoSprintThreshold, bIsUseDisOrSpeedMove, JoystickOperatingMode, EasyGoStraightAngle) end

---@param PC_CameraMoveRateX number
---@param PC_CameraMoveRateY number
---@param Mobile_CameraMoveRateX number
---@param Mobile_CameraMoveRateY number
---@param bUseDisCurve boolean
---@param NearCameraModeCameraMoveAdditionalRate FVector2D
---@param NearCameraModeCameraMoveMaxSpeed FVector2D
---@param AimCameraModeCameraMoveAdditionalRate FVector2D
---@param AimCameraModeCameraMoveMaxSpeed FVector2D
---@param MoveCameraMinDistanceThreshold number
---@param MoveCameraMinTimeThreshold number
---@param MoveCameraSpeedLimit number
---@param NormalCameraModeData FCommonCameraModeData
---@param NearCameraModeData FCommonCameraModeData
---@param AimCameraModeData FAimCameraModeData
---@param PlaneCameraModeData FCommonCameraModeData
function UArchiveData:PutCameraConfigIntoMap(PC_CameraMoveRateX, PC_CameraMoveRateY, Mobile_CameraMoveRateX, Mobile_CameraMoveRateY, bUseDisCurve, NearCameraModeCameraMoveAdditionalRate, NearCameraModeCameraMoveMaxSpeed, AimCameraModeCameraMoveAdditionalRate, AimCameraModeCameraMoveMaxSpeed, MoveCameraMinDistanceThreshold, MoveCameraMinTimeThreshold, MoveCameraSpeedLimit, NormalCameraModeData, NearCameraModeData, AimCameraModeData, PlaneCameraModeData) end

---@param PC_CameraMoveRateX number
---@param PC_CameraMoveRateY number
---@param Mobile_CameraMoveRateX number
---@param Mobile_CameraMoveRateY number
---@param bUseDisCurve boolean
---@param NearCameraModeCameraMoveAdditionalRate FVector2D
---@param NearCameraModeCameraMoveMaxSpeed FVector2D
---@param AimCameraModeCameraMoveAdditionalRate FVector2D
---@param AimCameraModeCameraMoveMaxSpeed FVector2D
---@param MoveCameraMinDistanceThreshold number
---@param MoveCameraMinTimeThreshold number
---@param MoveCameraSpeedLimit number
---@param NormalCameraModeData FCommonCameraModeData
---@param NearCameraModeData FCommonCameraModeData
---@param AimCameraModeData FAimCameraModeData
---@param PlaneCameraModeData FCommonCameraModeData
function UArchiveData:GetCameraConfigFromMap(PC_CameraMoveRateX, PC_CameraMoveRateY, Mobile_CameraMoveRateX, Mobile_CameraMoveRateY, bUseDisCurve, NearCameraModeCameraMoveAdditionalRate, NearCameraModeCameraMoveMaxSpeed, AimCameraModeCameraMoveAdditionalRate, AimCameraModeCameraMoveMaxSpeed, MoveCameraMinDistanceThreshold, MoveCameraMinTimeThreshold, MoveCameraSpeedLimit, NormalCameraModeData, NearCameraModeData, AimCameraModeData, PlaneCameraModeData) end


---@class USensitiveArchiveEditor: UBlueprintFunctionLibrary
local USensitiveArchiveEditor = {}

---@param Data UArchiveData
---@param FileName string
---@return boolean
function USensitiveArchiveEditor:Save(Data, FileName) end
