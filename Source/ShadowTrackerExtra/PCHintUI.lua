---@meta

---PC按键提示UI基类
---@class UPCHintUI: UUAEUserWidget
---@field HintUIType EHintUIType
local UPCHintUI = {}

---按键提示UI被复用时调用
function UPCHintUI:OnReused() end

---按键提示UI被回收时调用
function UPCHintUI:OnRecycled() end

---@param HintUIConfig FPCHintUIConfig
function UPCHintUI:SetHintUIInfo(HintUIConfig) end

---@param HintUI UWidget
---@param VisRelatedWidget UWidget
---@param IsVisOppositeRelated boolean
function UPCHintUI:BindHintUIRelatedWidget(HintUI, VisRelatedWidget, IsVisOppositeRelated) end

---@param ActionName string
---@param CustomHintTextIndex number
---@param IsAxisMapping boolean
---@param AxisMappingScale number
---@param ShowKeyMode number
---@param RowID string
---@param ShowHUDStyle number
function UPCHintUI:ShowHintKey(ActionName, CustomHintTextIndex, IsAxisMapping, AxisMappingScale, ShowKeyMode, RowID, ShowHUDStyle) end

---@param ActionName string
function UPCHintUI:UpdateHintKey(ActionName) end
