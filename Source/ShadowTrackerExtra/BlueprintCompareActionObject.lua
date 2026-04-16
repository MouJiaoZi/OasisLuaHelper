---@meta

---@class UBlueprintCompareActionObject: UCompareBaseNode
---@field bHandleTouch boolean
local UBlueprintCompareActionObject = {}

---@param OwnerCom UObjectPropertyCompareBase
function UBlueprintCompareActionObject:InitCompareNode(OwnerCom) end

function UBlueprintCompareActionObject:UnInitCompareNode() end

---@param InDeltaTime number
function UBlueprintCompareActionObject:TickCompareNode(InDeltaTime) end

---@param PitchInput number
---@param YawInput number
---@param ScreenLoc FVector2D
function UBlueprintCompareActionObject:HandleTouchInputEvent(PitchInput, YawInput, ScreenLoc) end

---@param InHandleTouch boolean
function UBlueprintCompareActionObject:SetHandleTouch(InHandleTouch) end

---@return boolean
function UBlueprintCompareActionObject:GetHandleTouch() end

---@param InDeltaTime number
function UBlueprintCompareActionObject:BP_TickCompareNode(InDeltaTime) end

---@param PitchInput number
---@param YawInput number
---@param ScreenLoc FVector2D
function UBlueprintCompareActionObject:BP_HandleTouchInputEvent(PitchInput, YawInput, ScreenLoc) end
