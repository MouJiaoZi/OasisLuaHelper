---@meta

---󲿷OBModePositionWidget߼
---@class EPlayerHeadType
---@field ForName number
---@field ForDistance number
EPlayerHeadType = {}


---@class UPlayerHeadWidget: UUAEUserWidget
---@field RightOffset number
---@field UIOffset FVector2D
---@field UIOffset_ForName FVector2D
---@field UIOffset_ForDistance FVector2D
---@field UILimit FVector4
---@field UILimit_ForName FVector4
---@field UILimit_ForDistance FVector4
---@field LocOffset FVector
---@field LocOffset_ForName FVector
---@field LocOffset_ForDistance FVector
local UPlayerHeadWidget = {}

---@param WidgetType EPlayerHeadType
function UPlayerHeadWidget:SetupUIInBP(WidgetType) end

---@param inCharacter ASTExtraPlayerCharacter
function UPlayerHeadWidget:SetupUIParam(inCharacter) end

---@return string
function UPlayerHeadWidget:GetEagleWatchReplaceName() end
