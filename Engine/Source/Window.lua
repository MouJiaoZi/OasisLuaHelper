---@meta

---@class UWindow: UUserWidget
---@field Title string
---@field InitSize FVector2D
local UWindow = {}

---@param InTitle string
function UWindow:SetTitle(InTitle) end

---@param Content UWidget
function UWindow:SetContent(Content) end

---@param NewSize FVector2D
function UWindow:Resize(NewSize) end
