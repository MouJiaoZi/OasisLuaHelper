---@meta

---@class EAiGMParamType
---@field AiGMParamType_None number
---@field AiGMParamType_Text number
---@field AiGMParamType_Boolean number
---@field AiGMParamType_Enum number
---@field AiGMParamType_BitEnum number
---@field AiGMParamType_ActorProperty number
---@field AiGMParamType_FVector number
---@field AiGMParamType_FRotator number
EAiGMParamType = {}


---@class FOnGmParamMenuItemSelected : ULuaSingleDelegate
FOnGmParamMenuItemSelected = {}

---绑定回调函数
---@param Callback fun(Obj: any, Content: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGmParamMenuItemSelected:Bind(Callback, Obj) end

---执行委托
---@param Content string
function FOnGmParamMenuItemSelected:Execute(Content) end


---@class UAiGmParamBase: UUserWidget
---@field Type EAiGMParamType
local UAiGmParamBase = {}


---@class UAiGmParamText: UAiGmParamBase
local UAiGmParamText = {}


---@class UAiGmParamBitEnumItem: UUserWidget
local UAiGmParamBitEnumItem = {}


---@class UAiGmBitEnumPanel: UUserWidget
---@field ItemClass UAiGmParamBitEnumItem
local UAiGmBitEnumPanel = {}

function UAiGmBitEnumPanel:OnBtnClose() end


---@class UAiGmParamBitEnum: UAiGmParamBase
---@field BitEnumPanelClass UAiGmBitEnumPanel
local UAiGmParamBitEnum = {}

function UAiGmParamBitEnum:OnBitEnumValueChanged() end

function UAiGmParamBitEnum:OnParamButton() end


---@class UAiGmParamComboBox: UAiGmParamBase
local UAiGmParamComboBox = {}


---@class UAiGmParamCheckBox: UAiGmParamBase
local UAiGmParamCheckBox = {}


---@class UAiGmParamMenuItem: UUserWidget
local UAiGmParamMenuItem = {}

function UAiGmParamMenuItem:OnButtonClicked() end


---@class UAiGmParamMenuConent: UUserWidget
---@field MenuItemClass UAiGmParamMenuItem
local UAiGmParamMenuConent = {}

---@param Content string
function UAiGmParamMenuConent:OnItemSelected(Content) end


---@class UAiGmParamEditableComboBoxValueGetterBase: UObject
local UAiGmParamEditableComboBoxValueGetterBase = {}


---@class UAiGmParamEditableComboBoxValueGetterVector: UAiGmParamEditableComboBoxValueGetterBase
local UAiGmParamEditableComboBoxValueGetterVector = {}


---@class UAiGmParamEditableComboBoxValueGetterRotator: UAiGmParamEditableComboBoxValueGetterBase
local UAiGmParamEditableComboBoxValueGetterRotator = {}


---@class UAiGmParamEditableComboBox: UAiGmParamBase
---@field MenuContentClass UAiGmParamMenuConent
local UAiGmParamEditableComboBox = {}

function UAiGmParamEditableComboBox:OnOpenMenuButtonClicked() end

---@param Content string
function UAiGmParamEditableComboBox:OnItemSelected(Content) end
