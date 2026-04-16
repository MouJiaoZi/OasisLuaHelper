---@meta

---@class FStExtraUserAndPointer
---@field UserIndex number
---@field PointerIndex number
FStExtraUserAndPointer = {}


---@class USTExtraUIUtils: UBlueprintFunctionLibrary
local USTExtraUIUtils = {}

---@param TheFloat number
---@param Precision number
---@param IncludeLeadingZero boolean
---@return string
function USTExtraUIUtils:GetFloatAsStringWithPrecision(TheFloat, Precision, IncludeLeadingZero) end

---@param ContextObject UObject
---@param SubString string
---@param bUseCase boolean
---@param bSearchFromEnd boolean
---@return boolean
function USTExtraUIUtils:IsGameStateObjectNameContains(ContextObject, SubString, bUseCase, bSearchFromEnd) end

---@param UAEUserWidget UUAEUserWidget
---@return string
function USTExtraUIUtils:GetOwningPlayerOpenID(UAEUserWidget) end

---@param UAEUserWidget UUAEUserWidget
---@return string
function USTExtraUIUtils:GetOwningPlayerRoleID(UAEUserWidget) end

---@param UAEUserWidget UUAEUserWidget
---@return string
function USTExtraUIUtils:GetBattleID(UAEUserWidget) end

---@param LogContent string
function USTExtraUIUtils:PrintGameLog(LogContent) end

---@param second number
---@return string
function USTExtraUIUtils:GetMinuteAndSecondTextByTime(second) end

---@param Path string
---@param replaceUsset boolean
function USTExtraUIUtils:GetFileList(Path, replaceUsset) end

---@param Controller ASTExtraPlayerController
---@param JoystickLocaltion FVector2D
function USTExtraUIUtils:SetVirtualJoystickLocaltion(Controller, JoystickLocaltion) end

---@param Controller ASTExtraPlayerController
---@param OutLocation FVector2D
---@return boolean
function USTExtraUIUtils:GetVirtualJoystickLocaltion(Controller, OutLocation) end

---@param Controller ASTExtraPlayerController
---@param ThumbPosition FVector2D
function USTExtraUIUtils:SetVirtualJoystickThumbPosition(Controller, ThumbPosition) end

---@param Controller ASTExtraPlayerController
---@param OutLocation FVector2D
---@return boolean
function USTExtraUIUtils:GetVirtualJoystickThumbPosition(Controller, OutLocation) end

---@param Controller ASTExtraPlayerController
---@param VisualCenter FVector2D
function USTExtraUIUtils:SetVirtualJoystickVirtualCenter(Controller, VisualCenter) end

---@param Controller ASTExtraPlayerController
---@param OutLocation FVector2D
---@return boolean
function USTExtraUIUtils:GetVirtualJoystickVirtualCenter(Controller, OutLocation) end

---@param Controller ASTExtraPlayerController
---@param CenterInScreen FVector2D
function USTExtraUIUtils:SetVirtualJoystickCenterInScreen(Controller, CenterInScreen) end

---@param Controller ASTExtraPlayerController
---@param OutLocation FVector2D
---@return boolean
function USTExtraUIUtils:GetVirtualJoystickCenterInScreen(Controller, OutLocation) end

---@param Controller ASTExtraPlayerController
---@param CorrectedCenter FVector2D
function USTExtraUIUtils:SetVirtualJoystickCorrectedCenter(Controller, CorrectedCenter) end

---@param Controller ASTExtraPlayerController
---@param OutLocation FVector2D
---@return boolean
function USTExtraUIUtils:GetVirtualJoystickCollectCenter(Controller, OutLocation) end

---@param Controller ASTExtraPlayerController
---@param CorrectedVisualSize FVector2D
---@return boolean
function USTExtraUIUtils:GetVirtualJoystickCorrectedVisualSize(Controller, CorrectedVisualSize) end

---@param Controller ASTExtraPlayerController
---@param CorrectedVisualSize FVector2D
function USTExtraUIUtils:SetVirtualJoystickCorrectedVisualSize(Controller, CorrectedVisualSize) end

---@param Controller ASTExtraPlayerController
---@param bNextIgnorePositionInsideCheck boolean
function USTExtraUIUtils:ForceTouchStart(Controller, bNextIgnorePositionInsideCheck) end

---@param Controller ASTExtraPlayerController
---@param OutLastTouchingMyGeometry FGeometry
---@param OutLastTouchingEvent FPointerEvent
---@param OldJoyConUserAndPointe FStExtraUserAndPointer
function USTExtraUIUtils:ForceRestoreTouching(Controller, OutLastTouchingMyGeometry, OutLastTouchingEvent, OldJoyConUserAndPointe) end

---@param Controller ASTExtraPlayerController
---@param OutLastTouchingMyGeometry FGeometry
---@param OutLastTouchingEvent FPointerEvent
---@return boolean
function USTExtraUIUtils:GetVirtualJoystickCorrectedCenter(Controller, OutLastTouchingMyGeometry, OutLastTouchingEvent) end

---@param Controller ASTExtraPlayerController
---@param NextCenter FVector2D
function USTExtraUIUtils:SetVirtualJoystickNextCenter(Controller, NextCenter) end

---@param Controller ASTExtraPlayerController
---@param OutNextCenter FVector2D
---@return boolean
function USTExtraUIUtils:GetVirtualJoystickNextCenter(Controller, OutNextCenter) end

---@param Controller ASTExtraPlayerController
---@param bRecordLastMyGeometryAndEvent boolean
---@return boolean
function USTExtraUIUtils:SetVirtualJoystickIsRecordLastMyGeometryAndEvent(Controller, bRecordLastMyGeometryAndEvent) end

---@param Controller ASTExtraPlayerController
---@param OutUserAndPointer FStExtraUserAndPointer
---@return boolean
function USTExtraUIUtils:GetCurrentJoyConTouchPointer(Controller, OutUserAndPointer) end

---@param Controller ASTExtraPlayerController
function USTExtraUIUtils:GetCurrentJoyConTouchPointers(Controller) end

---@param Widget UUAEUserWidget
---@param InPCWidgetIndex number
function USTExtraUIUtils:SetPCWidgetIndexAndRecreateHintUI(Widget, InPCWidgetIndex) end
