---@meta

---@class FSkinMountInfo
---@field MountPanelName string
---@field MountWidget UUserWidget
---@field MountAnchorData FAnchorData
---@field ZOrder number
---@field SizeToContent boolean
---@field MountWidgetPtr_GameWorld UWidget
FSkinMountInfo = {}


---@class FWSPropKey
---@field WidgetName string
---@field PropName string
---@field bIsSlotProp boolean
FWSPropKey = {}


---@class FWSPropContext
---@field Properties ULuaMapHelper<FWSPropKey, UWigetSkinType>
FWSPropContext = {}


---@class FSkinDynamicElemKey
---@field UniqueElemID number
---@field ParentName string
---@field WidgetClass UWidget
---@field RuntimeWidget UWidget
FSkinDynamicElemKey = {}


---@class FWSDynamicPropContext
---@field DynamicElements ULuaArrayHelper<FSkinDynamicElemKey>
---@field DynamicProperties ULuaMapHelper<number, FWSPropContext>
FWSDynamicPropContext = {}


---@class UWigetSkinType: UObject
local UWigetSkinType = {}


---@class UWST_Int32: UWigetSkinType
---@field Value number
local UWST_Int32 = {}


---@class UWST_Object: UWigetSkinType
local UWST_Object = {}


---@class UWST_String: UWigetSkinType
---@field Value string
local UWST_String = {}


---@class UWST_Name: UWigetSkinType
---@field Value string
local UWST_Name = {}


---@class UWST_Bool: UWigetSkinType
---@field Value boolean
local UWST_Bool = {}


---@class UWST_UInt8: UWigetSkinType
---@field Value number
local UWST_UInt8 = {}


---@class UWST_Float: UWigetSkinType
---@field Value number
local UWST_Float = {}


---@class UWST_Text: UWigetSkinType
---@field Value string
local UWST_Text = {}


---@class UWST_LinearColor: UWigetSkinType
---@field Value FLinearColor
local UWST_LinearColor = {}


---@class UWST_SlateFontInfo: UWigetSkinType
---@field Value FSlateFontInfo
local UWST_SlateFontInfo = {}


---@class UWST_WidgetTransform: UWigetSkinType
---@field Value FWidgetTransform
local UWST_WidgetTransform = {}


---@class UWST_SlateBrush: UWigetSkinType
---@field Value FSlateBrush
local UWST_SlateBrush = {}


---@class UWST_Vector2D: UWigetSkinType
---@field Value FVector2D
local UWST_Vector2D = {}


---@class UWST_Vector: UWigetSkinType
---@field Value FVector
local UWST_Vector = {}


---@class UWST_Margin: UWigetSkinType
---@field Value FMargin
local UWST_Margin = {}


---@class UWST_AnchorData: UWigetSkinType
---@field Value FAnchorData
local UWST_AnchorData = {}


---@class UWST_SlateColor: UWigetSkinType
---@field Value FSlateColor
local UWST_SlateColor = {}


---@class UWST_SlateChildSize: UWigetSkinType
---@field Value FSlateChildSize
local UWST_SlateChildSize = {}


---@class UWST_ButtonStyle: UWigetSkinType
---@field Value FButtonStyle
local UWST_ButtonStyle = {}


---@class UWST_CheckBoxStyle: UWigetSkinType
---@field Value FCheckBoxStyle
local UWST_CheckBoxStyle = {}


---@class UWST_ComboBoxStyle: UWigetSkinType
---@field Value FComboBoxStyle
local UWST_ComboBoxStyle = {}


---@class UWST_EditableTextStyle: UWigetSkinType
---@field Value FEditableTextStyle
local UWST_EditableTextStyle = {}


---@class UWST_EditableTextBoxStyle: UWigetSkinType
---@field Value FEditableTextBoxStyle
local UWST_EditableTextBoxStyle = {}


---@class UWST_ProgressBarStyle: UWigetSkinType
---@field Value FProgressBarStyle
local UWST_ProgressBarStyle = {}


---@class UWST_ScrollBarStyle: UWigetSkinType
---@field Value FScrollBarStyle
local UWST_ScrollBarStyle = {}


---@class UWST_ScrollBoxStyle: UWigetSkinType
---@field Value FScrollBoxStyle
local UWST_ScrollBoxStyle = {}


---@class UWST_SliderStyle: UWigetSkinType
---@field Value FSliderStyle
local UWST_SliderStyle = {}


---@class UWST_SpinBoxStyle: UWigetSkinType
---@field Value FSpinBoxStyle
local UWST_SpinBoxStyle = {}


---@class UWST_TextBlockStyle: UWigetSkinType
---@field Value FTextBlockStyle
local UWST_TextBlockStyle = {}


---@class UWST_SlateSound: UWigetSkinType
---@field Value FSlateSound
local UWST_SlateSound = {}


---@class UWST_Array: UWigetSkinType
local UWST_Array = {}
