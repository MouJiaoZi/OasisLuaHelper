---@meta

---@class IFocusCineProviderInterface
IFocusCineProviderInterface = {}

---@param FocusPoiont FVector
---@return boolean
function IFocusCineProviderInterface:GetFocus(FocusPoiont) end


---@class UFocusCineCameraComp: UCineCameraComponent
---@field bEnableInput boolean
---@field AddedPitchMin number
---@field AddedPitchMax number
---@field AddedYawMin number
---@field AddedYawMax number
---@field CameraRecoverSpeed number
local UFocusCineCameraComp = {}

---@param DeltaTime number
function UFocusCineCameraComp:UpdateCameraAddedRotation(DeltaTime) end

---@param bEnable boolean
function UFocusCineCameraComp:SetEnableInput(bEnable) end

---@param Pos FVector2D
function UFocusCineCameraComp:OnTouchBegin(Pos) end

function UFocusCineCameraComp:OnTouchEnd() end

---@param Pitch number
---@param Yaw number
---@param Loc FVector2D
function UFocusCineCameraComp:OnTouchMove(Pitch, Yaw, Loc) end

---@param NewProvider IFocusCineProviderInterface
function UFocusCineCameraComp:SetFocusProvider(NewProvider) end

function UFocusCineCameraComp:ClampAddedInput() end
