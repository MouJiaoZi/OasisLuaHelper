---@meta

---一三人称相机切换时插值过渡相机位置
---@class UFC_InterpPerspectiveCameraSwitch: UFeatureCustomModule
---@field PerspectiveCameraSwitchInterpSpeed_Rate number
---@field InterpPPCameraSwitchHideMeshArea FVector2D
---@field InterpPPCameraSwitchHideMeshArea_FPP FVector2D
---@field DisableInterpPPCameraSwitchPawnState ULuaArrayHelper<EPawnState>
---@field ReplaceMainMeshCompWhenBackPack string
local UFC_InterpPerspectiveCameraSwitch = {}

---@param DeltaTime number
function UFC_InterpPerspectiveCameraSwitch:UpdateInterpPerspectiveCameraSwitch(DeltaTime) end

---@param bIsFPP boolean
---@return boolean
function UFC_InterpPerspectiveCameraSwitch:TrySetInterpPerspectiveCamaerSwitch(bIsFPP) end

---@param OldMode EPlayerCameraMode
---@param NewMode EPlayerCameraMode
function UFC_InterpPerspectiveCameraSwitch:HandleCamerModeChange(OldMode, NewMode) end
