---@meta

---@class USpringArmModifier: UObject
---@field CurActiveDataList ULuaArrayHelper<FCameraOffsetData>
---@field CurActiveFadeDataList ULuaArrayHelper<FCameraOffsetDataFadeInfo>
---@field IgnoreArmLengthInterpOnce boolean
---@field IgnoreRelativeLocationOffsetInterpOnce boolean
---@field IgnoreSocketOffsetInterpOnce boolean
---@field IgnoreTargetOffsetInterpOnce boolean
---@field IgnoreFieldOfViewInterpOnce boolean
---@field CurCameraData FCameraOffsetData
---@field CameraOffsetDatas ULuaArrayHelper<FCameraOffsetData>
---@field LerpFunc ECameraDataLerpFunction
---@field LerpFuncInputFadeInSpeed number
---@field LerpDeltaTime number
---@field BackupCurCameraData FCameraOffsetData
---@field BackupCurAdditiveOffsetFov number
---@field FieldOfViewInterpSpeed number
---@field SocketOffsetInterpSpeed number
---@field TargetOffsetInterpSpeed number
---@field ArmLengthInterpSpeed number
---@field RelativeLocationOffsetInterpSpeed number
---@field bNeedCheckPoseData boolean
---@field bNeedForceUpdateCameraOffsetData boolean
---@field bDirtyFlag boolean
---@field ResultCameraData FCameraOffsetData
---@field CurAdditiveOffsetFov number
local USpringArmModifier = {}

---@param DeltaTime number
function USpringArmModifier:UpdateCurCameraData(DeltaTime) end

---@param InCameraData FCameraOffsetData
---@param InCameraComp UCameraComponent
---@param DeltaTime number
function USpringArmModifier:LerpCurCameraDataUseConfigSpeed(InCameraData, InCameraComp, DeltaTime) end

---@param InCameraData FCameraOffsetData
---@param InCameraComp UCameraComponent
---@param DeltaTime number
function USpringArmModifier:LerpCurCameraDataUseInputSpeed(InCameraData, InCameraComp, DeltaTime) end

---@param DeltaTime number
---@return boolean
function USpringArmModifier:UpdateCurCameraDataBlueprint(DeltaTime) end

function USpringArmModifier:ClearCameraData() end

---@return FVector
function USpringArmModifier:GetCameraTargetOffset() end

---@return FVector
function USpringArmModifier:GetCameraSocketOffset() end

---@return FVector
function USpringArmModifier:GetCameraRelativeLocationOffset() end

---@return number
function USpringArmModifier:GetCameraTargetArmLength() end

---@return number
function USpringArmModifier:GetCameraAdditiveOffsetFov() end

---@return boolean
function USpringArmModifier:GetLerpAdditiveOffsetFov() end

---@return number
function USpringArmModifier:GetArmLengthInterpSpeed() end

---@return number
function USpringArmModifier:GetRelativeLocationOffsetInterpSpeed() end

---@return number
function USpringArmModifier:GetSocketOffsetInterpSpeed() end

---@return number
function USpringArmModifier:GetTargetOffsetInterpSpeed() end

---@return number
function USpringArmModifier:GetFieldOfViewInterpSpeed() end

---@return boolean
function USpringArmModifier:GetbDoCollisionTest() end

---@param DataName string
---@return boolean
function USpringArmModifier:IsCameraDataEnableByName(DataName) end

function USpringArmModifier:Calculate() end

---@return boolean
function USpringArmModifier:CalculateBlueprint() end

---@param CustomCameraData FCameraOffsetData
---@param IsEnable boolean
function USpringArmModifier:SetCustomCameraDataEnable(CustomCameraData, IsEnable) end

---@param CustomCameraData FCameraOffsetData
---@param IsEnable boolean
---@param InFadeTime number
---@param InCurve UCurveFloat
---@param IsInverseCurve boolean
function USpringArmModifier:SetCustomCameraDataEnable_WithFadeEffect(CustomCameraData, IsEnable, InFadeTime, InCurve, IsInverseCurve) end

---@param InDeltaTime number
function USpringArmModifier:TickFadeCameraData(InDeltaTime) end

---@param CustomCameraData FCameraOffsetData
function USpringArmModifier:UpdateCustomCameraData(CustomCameraData) end

---@param DataName string
---@param IsEnable boolean
function USpringArmModifier:SetCameraDataEnableByName(DataName, IsEnable) end

---@param DataName string
---@param IsEnable boolean
---@param InFadeTime number
---@param InCurve UCurveFloat
---@param IsInverseCurve boolean
function USpringArmModifier:SetCameraDataEnableByName_WithFadeEffect(DataName, IsEnable, InFadeTime, InCurve, IsInverseCurve) end

---@param DataName string
---@return number
function USpringArmModifier:FindCameraDataIndex(DataName) end

---@param DataName string
---@param TargetArmLength number
function USpringArmModifier:SetTargetArmLengthByName(DataName, TargetArmLength) end

---@param Camera UCameraComponent
---@param Transform FTransform
---@param FOV number
function USpringArmModifier:AddAdditiveOffsetBP(Camera, Transform, FOV) end
