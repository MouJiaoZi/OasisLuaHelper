---@meta

---@class UCameraPossessManager: UActorComponent
---@field StaticCameraPossessList ULuaArrayHelper<FCameraPossessData>
---@field RelativeLocationOffsetInterpSpeed number
---@field ArmLengthInterpSpeed number
---@field TargetOffsetInterpSpeed number
---@field SocketOffsetInterpSpeed number
---@field DesiredRotationOffsetInterpSpeed number
---@field CameraRotOffsetInterpSpeed number
---@field FieldOfViewInterpSpeed number
---@field DynamicCameraPossessList ULuaArrayHelper<FCameraPossessData>
---@field CurrentActiveCameraPossessList ULuaArrayHelper<FCameraPossessData>
---@field CurrentActiveModifyNameList ULuaArrayHelper<string>
---@field CurrentActiveCameraModifyList ULuaArrayHelper<FCameraModifyData>
---@field CurrentCameraModifyResult FCameraModifyData
---@field SpringArmClass UPossessedSpringArmComponent
---@field CameraClass UPossessedCameraComponent
---@field CameraAnimDataList ULuaArrayHelper<FCameraAnimData>
---@field AnimExtraTargetOffset FVector
---@field AnimExtraSocketOffset FVector
---@field SpringArmTargetOffsetCache FVector
---@field SpringArmSocketOffsetCache FVector
---@field IsCameraShouldActive boolean
local UCameraPossessManager = {}

---@return boolean
function UCameraPossessManager:IsEnableCameraPossess() end

---@return boolean
function UCameraPossessManager:IsEnableCameraPossessAllFeatureActive() end

---@param InIsActive boolean
function UCameraPossessManager:SetCameraActive(InIsActive) end

---@param InPossessName string
---@param InIsActive boolean
---@param InAttachParentComp USceneComponent
---@param force boolean
---@return boolean
function UCameraPossessManager:SetCameraPossessActive(InPossessName, InIsActive, InAttachParentComp, force) end

---@param InCameraPossessData FCameraPossessData
---@param IsAutoPossess boolean
---@return boolean
function UCameraPossessManager:AddDynamicCameraPossess(InCameraPossessData, IsAutoPossess) end

---@param InPossessName string
function UCameraPossessManager:RemoveDynamicCameraPossess(InPossessName) end

---@param InCameraPossessName string
---@param OutCameraPossessData FCameraPossessData
---@return boolean
function UCameraPossessManager:FindCameraPossess(InCameraPossessName, OutCameraPossessData) end

---@param ApplyImmediately boolean
function UCameraPossessManager:RefreshCameraModify(ApplyImmediately) end

---@param InPossessData FCameraPossessData
---@param InCameraModifyName string
---@param OutCameraModifyData FCameraModifyData
---@return boolean
function UCameraPossessManager:FindCameraModify(InPossessData, InCameraModifyName, OutCameraModifyData) end

---@param InCameraPossessName string
---@param InCameraModifyName string
---@param InEnable boolean
---@param AutoRecalculateCameraModify boolean
function UCameraPossessManager:SetCameraModifyEnable(InCameraPossessName, InCameraModifyName, InEnable, AutoRecalculateCameraModify) end

---@param InCameraPossessName string
---@param InModifyData FCameraModifyData
---@param IsAutoActive boolean
---@param ApplyImmediately boolean
function UCameraPossessManager:AddDynamicCameraModify(InCameraPossessName, InModifyData, IsAutoActive, ApplyImmediately) end

---@param InCameraPossessName string
---@param InCameraModifyName string
---@param ApplyImmediately boolean
function UCameraPossessManager:RemoveDynamicCameraModify(InCameraPossessName, InCameraModifyName, ApplyImmediately) end

---@param CameraAnimType ECameraCurveAnimType
---@param CurveVec UCurveVector
function UCameraPossessManager:PlayCameraCurveAnim(CameraAnimType, CurveVec) end

---@return number
function UCameraPossessManager:GetCurrentSpringArmLength() end

---@param NewSpringLength number
function UCameraPossessManager:SetCurrentSpringArmLength(NewSpringLength) end

---@param InData FCameraModifyData
---@param DeltaTime number
function UCameraPossessManager:ApplyCameraModifyData(InData, DeltaTime) end

---@param ApplyImmediately boolean
function UCameraPossessManager:RecalculateCameraModify(ApplyImmediately) end

---@param InModifyData FCameraModifyData
---@param IsAdd boolean
---@param AutoRecalculateCameraModify boolean
---@param ApplyImmediately boolean
function UCameraPossessManager:AddOrRemoveModifyDataFromCurrentActiveList(InModifyData, IsAdd, AutoRecalculateCameraModify, ApplyImmediately) end

---@param DeltaTime number
function UCameraPossessManager:UpdateCameraAnimData(DeltaTime) end
