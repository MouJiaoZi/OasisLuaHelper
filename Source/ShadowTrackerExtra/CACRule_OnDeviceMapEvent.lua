---@meta

---Event handler for OnDeviceMapEvent
---@class UCACRule_OnDeviceMapEvent: UCheckAimCheatRule
local UCACRule_OnDeviceMapEvent = {}

---@param MarkInfo FQuickSignMark
function UCACRule_OnDeviceMapEvent:OnQuickSignCheckDelegate(MarkInfo) end

---@param Character ASTExtraBaseCharacter
---@param Alpha number
function UCACRule_OnDeviceMapEvent:OnVoiceCheckShowMoveImageDelegate(Character, Alpha) end

---@param Vehicle ASTExtraVehicleBase
---@param Alpha number
function UCACRule_OnDeviceMapEvent:OnVoiceCheckShowVehicleImageDelegate(Vehicle, Alpha) end

---@param OtherCharacter ASTExtraBaseCharacter
---@param bIsExplosion boolean
---@param Alpha number
function UCACRule_OnDeviceMapEvent:OnVoiceCheckWeaponShootImageDelegate(OtherCharacter, bIsExplosion, Alpha) end

---@param PitchInputAdd number
---@param YawInputAdd number
---@param Loc FVector2D
function UCACRule_OnDeviceMapEvent:OnTouchInputEventDelegate(PitchInputAdd, YawInputAdd, Loc) end
