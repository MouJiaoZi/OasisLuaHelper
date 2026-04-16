---@meta

---Used to determine how we should handle mouse wheel input events when someone scrolls.
---@class EConsumeMouseWheel
---@field WhenScrollingPossible number @Only consume the mouse wheel event when we actually scroll some amount.
---@field Always number @Always consume mouse wheel event even if we don't scroll at all.
---@field Never number @Never consume the mouse wheel
EConsumeMouseWheel = {}


---Type of check box
---@class ESlateCheckBoxType
---@field CheckBox number @Traditional check box with check button and label (or other content)
---@field ToggleButton number @Toggle button.  You provide button content (such as an image), and the user can press to toggle it.
ESlateCheckBoxType = {}


---Current state of the check box
---@class ECheckBoxState
---@field Unchecked number @Unchecked
---@field Checked number @Checked
---@field Undetermined number @Neither checked nor unchecked
ECheckBoxState = {}


---Represents the appearance of an SCheckBox
---@class FCheckBoxStyle
---@field CheckBoxType ESlateCheckBoxType @The visual type of the checkbox
---@field UncheckedImage FSlateBrush
---@field UncheckedHoveredImage FSlateBrush
---@field UncheckedPressedImage FSlateBrush
---@field CheckedImage FSlateBrush
---@field CheckedHoveredImage FSlateBrush
---@field CheckedPressedImage FSlateBrush
---@field UndeterminedImage FSlateBrush
---@field UndeterminedHoveredImage FSlateBrush
---@field UndeterminedPressedImage FSlateBrush
---@field Padding FMargin @Padding
---@field ForegroundColor FSlateColor @The foreground color
---@field BorderBackgroundColor FSlateColor @BorderBackgroundColor refers to the actual color and opacity of the supplied border image on toggle buttons
---@field CheckedSlateSound FSlateSound @The sound the check box should play when checked
---@field UncheckedSlateSound FSlateSound @The sound the check box should play when unchecked
---@field HoveredSlateSound FSlateSound @The sound the check box should play when initially hovered over
FCheckBoxStyle = {}


---Represents the appearance of an STextBlock
---@class FTextBlockStyle
---@field Font FSlateFontInfo @Font family and size to be used when displaying this text.
---@field ColorAndOpacity FSlateColor @The color and opacity of this text
---@field ShadowOffset FVector2D @How much should the shadow be offset? An offset of 0 implies no shadow.
---@field ShadowColorAndOpacity FLinearColor @The color and opacity of the shadow
---@field SelectedBackgroundColor FSlateColor @The background color of selected text
---@field HighlightColor FLinearColor @The color of highlighted text
---@field HighlightShape FSlateBrush @The shape of highlighted text
---@field UnderlineBrush FSlateBrush @The brush used to draw an underline under the text (if any)
FTextBlockStyle = {}


---Represents the appearance of an SButton
---@class FButtonStyle
---@field Normal FSlateBrush @Button appearance when the button is not hovered or pressed
---@field Hovered FSlateBrush @Button appearance when hovered
---@field Pressed FSlateBrush @Button appearance when pressed
---@field Disabled FSlateBrush @Button appearance when disabled, by default this is set to an invalid resource when that is the case default disabled drawing is used.
---@field NormalPadding FMargin @Padding that accounts for the border in the button's background image. When this is applied, the content of the button should appear flush with the button's border. Use this padding when the button is not pressed.
---@field PressedPadding FMargin @Same as NormalPadding but used when the button is pressed. Allows for moving the content to match any "movement" in the button's border image.
---@field PressedSlateSound FSlateSound @The sound the button should play when pressed
---@field HoveredSlateSound FSlateSound @The sound the button should play when initially hovered over
FButtonStyle = {}


---Represents the appearance of an SComboButton
---@class FComboButtonStyle
---@field ButtonStyle FButtonStyle @The style to use for our SButton
---@field DownArrowImage FSlateBrush @Image to use for the down arrow
---@field MenuBorderBrush FSlateBrush @Brush to use to add a "menu border" around the drop-down content
---@field MenuBorderPadding FMargin @Padding to use to add a "menu border" around the drop-down content
FComboButtonStyle = {}


---Represents the appearance of an SComboBox
---@class FComboBoxStyle
---@field ComboButtonStyle FComboButtonStyle @The style to use for our SComboButton
---@field PressedSlateSound FSlateSound @The sound the button should play when pressed
---@field SelectionChangeSlateSound FSlateSound @The Sound to play when the selection is changed
FComboBoxStyle = {}


---Represents the appearance of an SHyperlink
---@class FHyperlinkStyle
---@field UnderlineStyle FButtonStyle @Underline style
---@field TextStyle FTextBlockStyle @Text style
---@field Padding FMargin @Padding
FHyperlinkStyle = {}


---Represents the appearance of an SEditableText
---@class FEditableTextStyle
---@field Font FSlateFontInfo @Font family and size to be used when displaying this text.
---@field ColorAndOpacity FSlateColor @The color and opacity of this text
---@field BackgroundImageSelected FSlateBrush @Background image for the selected text
---@field BackgroundImageComposing FSlateBrush @Background image for the selected text
---@field CaretImage FSlateBrush @Image brush used for the caret
FEditableTextStyle = {}


---Represents the appearance of an SScrollBar
---@class FScrollBarStyle
---@field HorizontalBackgroundImage FSlateBrush @Background image to use when the scrollbar is oriented horizontally
---@field VerticalBackgroundImage FSlateBrush @Background image to use when the scrollbar is oriented vertically
---@field VerticalTopSlotImage FSlateBrush @The image to use to represent the track above the thumb when the scrollbar is oriented vertically
---@field HorizontalTopSlotImage FSlateBrush @The image to use to represent the track above the thumb when the scrollbar is oriented horizontally
---@field VerticalBottomSlotImage FSlateBrush @The image to use to represent the track below the thumb when the scrollbar is oriented vertically
---@field HorizontalBottomSlotImage FSlateBrush @The image to use to represent the track below the thumb when the scrollbar is oriented horizontally
---@field NormalThumbImage FSlateBrush @Image to use when the scrollbar thumb is in its normal state
---@field HoveredThumbImage FSlateBrush @Image to use when the scrollbar thumb is in its hovered state
---@field DraggedThumbImage FSlateBrush @Image to use when the scrollbar thumb is in its dragged state
FScrollBarStyle = {}


---Represents the appearance of an SEditableTextBox
---@class FEditableTextBoxStyle
---@field BackgroundImageNormal FSlateBrush @Border background image when the box is not hovered or focused
---@field BackgroundImageHovered FSlateBrush @Border background image when the box is hovered
---@field BackgroundImageFocused FSlateBrush @Border background image when the box is focused
---@field BackgroundImageReadOnly FSlateBrush @Border background image when the box is read-only
---@field Padding FMargin @Padding
---@field Font FSlateFontInfo @Font family and size to be used when displaying this text.
---@field ForegroundColor FSlateColor @The foreground color of text.
---@field BackgroundColor FSlateColor @The background color applied to the active background image
---@field ReadOnlyForegroundColor FSlateColor @The read-only foreground color of text in read-only mode.
---@field HScrollBarPadding FMargin @Padding around the horizontal scrollbar
---@field VScrollBarPadding FMargin @Padding around the vertical scrollbar
---@field ScrollBarStyle FScrollBarStyle @Style used for the scrollbars
FEditableTextBoxStyle = {}


---Represents the appearance of an SInlineEditableTextBlock
---@class FInlineEditableTextBlockStyle
---@field EditableTextBoxStyle FEditableTextBoxStyle @The style of the editable text box, which dictates the font, color, and shadow options.
---@field TextStyle FTextBlockStyle @The style of the text block, which dictates the font, color, and shadow options. Style overrides all other properties!
FInlineEditableTextBlockStyle = {}


---Represents the appearance of an SProgressBar
---@class FProgressBarStyle
---@field BackgroundImage FSlateBrush @Background image to use for the progress bar
---@field FillImage FSlateBrush @Foreground image to use for the progress bar
---@field MarqueeImage FSlateBrush @Image to use for marquee mode
FProgressBarStyle = {}


---Represents the appearance of an SExpandableArea
---@class FExpandableAreaStyle
---@field CollapsedImage FSlateBrush @Image to use when the area is collapsed
---@field ExpandedImage FSlateBrush @Image to use when the area is expanded
---@field RolloutAnimationSeconds number @How long the rollout animation lasts
FExpandableAreaStyle = {}


---Represents the appearance of an SSearchBox
---@class FSearchBoxStyle
---@field TextBoxStyle FEditableTextBoxStyle @Style to use for the text box part of the search box
---@field ActiveFontInfo FSlateFontInfo @Font to use for the text box part of the search box when a search term is entered
---@field UpArrowImage FSlateBrush @Image to use for the search "up" arrow
---@field DownArrowImage FSlateBrush @Image to use for the search "down" arrow
---@field GlassImage FSlateBrush @Image to use for the search "glass"
---@field ClearImage FSlateBrush @Image to use for the search "clear" button
---@field ImagePadding FMargin @Padding to use around the images
---@field bLeftAlignButtons boolean @If true, buttons appear to the left of the search text
FSearchBoxStyle = {}


---Represents the appearance of an SSlider
---@class FSliderStyle
---@field NormalBarImage FSlateBrush @Image to use when the slider bar is in its normal state
---@field DisabledBarImage FSlateBrush @Image to use when the slider bar is in its disabled state
---@field NormalThumbImage FSlateBrush @Image to use when the slider thumb is in its normal state
---@field DisabledThumbImage FSlateBrush @Image to use when the slider thumb is in its disabled state
---@field BarThickness number
FSliderStyle = {}


---Represents the appearance of an SVolumeControl
---@class FVolumeControlStyle
---@field SliderStyle FSliderStyle @The style of the volume control slider
---@field HighVolumeImage FSlateBrush @Image to use when the volume is set to high
---@field MidVolumeImage FSlateBrush @Image to use when the volume is set to mid-range
---@field LowVolumeImage FSlateBrush @Image to use when the volume is set to low
---@field NoVolumeImage FSlateBrush @Image to use when the volume is set to off
---@field MutedImage FSlateBrush @Image to use when the volume is muted
FVolumeControlStyle = {}


---Represents the appearance of an inline image used by rich text
---@class FInlineTextImageStyle
---@field Image FSlateBrush @Image to use when the slider thumb is in its normal state
---@field Baseline number @The offset from the bottom of the image height to the baseline.
FInlineTextImageStyle = {}


---Represents the appearance of an SSpinBox
---@class FSpinBoxStyle
---@field BackgroundBrush FSlateBrush @Brush used to draw the background of the spinbox
---@field HoveredBackgroundBrush FSlateBrush @Brush used to draw the background of the spinbox when it's hovered over
---@field ActiveFillBrush FSlateBrush @Brush used to fill the spinbox when it's active
---@field InactiveFillBrush FSlateBrush @Brush used to fill the spinbox when it's inactive
---@field ArrowsImage FSlateBrush @Image used to draw the spinbox arrows
---@field ForegroundColor FSlateColor @Color used to draw the spinbox foreground elements
---@field TextPadding FMargin @Padding to add around the spinbox and its text
FSpinBoxStyle = {}


---Represents the appearance of an SSplitter
---@class FSplitterStyle
---@field HandleNormalBrush FSlateBrush @Brush used to draw the handle in its normal state
---@field HandleHighlightBrush FSlateBrush @Brush used to draw the handle in its highlight state
FSplitterStyle = {}


---Represents the appearance of an STableView
---@class FTableViewStyle
---@field BackgroundBrush FSlateBrush @Brush used when a selected row is active
FTableViewStyle = {}


---Represents the appearance of an STableRow
---@class FTableRowStyle
---@field SelectorFocusedBrush FSlateBrush @Brush used as a selector when a row is focused
---@field ActiveHoveredBrush FSlateBrush @Brush used when a selected row is active and hovered
---@field ActiveBrush FSlateBrush @Brush used when a selected row is active
---@field InactiveHoveredBrush FSlateBrush @Brush used when a selected row is inactive and hovered
---@field InactiveBrush FSlateBrush @Brush used when a selected row is inactive
---@field EvenRowBackgroundHoveredBrush FSlateBrush @Brush used when an even row is hovered
---@field EvenRowBackgroundBrush FSlateBrush @Brush used when an even row is in its normal state
---@field OddRowBackgroundHoveredBrush FSlateBrush @Brush used when an odd row is hovered
---@field OddRowBackgroundBrush FSlateBrush @Brush to used when an odd row is in its normal state
---@field TextColor FSlateColor @Text color used for all rows
---@field SelectedTextColor FSlateColor @Text color used for the selected row
---@field DropIndicator_Above FSlateBrush @Brush used to provide feedback that a user can drop above the hovered row.
---@field DropIndicator_Onto FSlateBrush @Brush used to provide feedback that a user can drop onto the hovered row.
---@field DropIndicator_Below FSlateBrush @Brush used to provide feedback that a user can drop below the hovered row.
FTableRowStyle = {}


---Represents the appearance of an STableColumnHeader
---@class FTableColumnHeaderStyle
---@field SortPrimaryAscendingImage FSlateBrush @Image used when a column is primarily sorted in ascending order
---@field SortPrimaryDescendingImage FSlateBrush @Image used when a column is primarily sorted in descending order
---@field SortSecondaryAscendingImage FSlateBrush @Image used when a column is secondarily sorted in ascending order
---@field SortSecondaryDescendingImage FSlateBrush @Image used when a column is secondarily sorted in descending order
---@field NormalBrush FSlateBrush @Brush used to draw the header in its normal state
---@field HoveredBrush FSlateBrush @Brush used to draw the header in its hovered state
---@field MenuDropdownImage FSlateBrush @Image used for the menu drop-down button
---@field MenuDropdownNormalBorderBrush FSlateBrush @Brush used to draw the menu drop-down border in its normal state
---@field MenuDropdownHoveredBorderBrush FSlateBrush @Brush used to draw the menu drop-down border in its hovered state
FTableColumnHeaderStyle = {}


---Represents the appearance of an SHeaderRow
---@class FHeaderRowStyle
---@field ColumnStyle FTableColumnHeaderStyle @Style of the normal header row columns
---@field LastColumnStyle FTableColumnHeaderStyle @Style of the last header row column
---@field ColumnSplitterStyle FSplitterStyle @Style of the splitter used between the columns
---@field BackgroundBrush FSlateBrush @Brush used to draw the header row background
---@field ForegroundColor FSlateColor @Color used to draw the header row foreground
FHeaderRowStyle = {}


---Represents the appearance of an SDockTab
---@class FDockTabStyle
---@field CloseButtonStyle FButtonStyle @Style used for the close button
---@field NormalBrush FSlateBrush @Brush used when this tab is in its normal state
---@field ActiveBrush FSlateBrush @Brush used when this tab is in its active state
---@field ColorOverlayTabBrush FSlateBrush @Brush used to overlay a given color onto this tab
---@field ColorOverlayIconBrush FSlateBrush @Brush used to overlay a given color onto this tab
---@field ForegroundBrush FSlateBrush @Brush used when this tab is in the foreground
---@field HoveredBrush FSlateBrush @Brush used when this tab is hovered over
---@field ContentAreaBrush FSlateBrush @Brush used by the SDockingTabStack to draw the content associated with this tab; Documents, Apps, and Tool Panels have different backgrounds
---@field TabWellBrush FSlateBrush @Brush used by the SDockingTabStack to draw the content associated with this tab; Documents, Apps, and Tool Panels have different backgrounds
---@field TabPadding FMargin @Padding used around this tab
---@field OverlapWidth number @The width that this tab will overlap with side-by-side tabs
---@field FlashColor FSlateColor @Color used when flashing this tab
FDockTabStyle = {}


---Represents the appearance of an SScrollBox
---@class FScrollBoxStyle
---@field TopShadowBrush FSlateBrush @Brush used to draw the top shadow of a scrollbox
---@field BottomShadowBrush FSlateBrush @Brush used to draw the bottom shadow of a scrollbox
---@field LeftShadowBrush FSlateBrush @Brush used to draw the left shadow of a scrollbox
---@field RightShadowBrush FSlateBrush @Brush used to draw the right shadow of a scrollbox
FScrollBoxStyle = {}


---Represents the appearance of an FScrollBorderStyle
---@class FScrollBorderStyle
---@field TopShadowBrush FSlateBrush @Brush used to draw the top shadow of a scrollborder
---@field BottomShadowBrush FSlateBrush @Brush used to draw the bottom shadow of a scrollborder
FScrollBorderStyle = {}


---Represents the appearance of an SWindow
---@class FWindowStyle
---@field MinimizeButtonStyle FButtonStyle @Style used to draw the window minimize button
---@field MaximizeButtonStyle FButtonStyle @Style used to draw the window maximize button
---@field RestoreButtonStyle FButtonStyle @Style used to draw the window restore button
---@field CloseButtonStyle FButtonStyle @Style used to draw the window close button
---@field TitleTextStyle FTextBlockStyle @Style used to draw the window title text
---@field ActiveTitleBrush FSlateBrush @Brush used to draw the window title area when the window is active
---@field InactiveTitleBrush FSlateBrush @Brush used to draw the window title area when the window is inactive
---@field FlashTitleBrush FSlateBrush @Brush used to draw the window title area when the window is flashing
---@field BackgroundColor FSlateColor @Color used to draw the window background
---@field OutlineBrush FSlateBrush @Brush used to draw the window outline
---@field OutlineColor FSlateColor @Color used to draw the window outline
---@field BorderBrush FSlateBrush @Brush used to draw the window border
---@field BackgroundBrush FSlateBrush @Brush used to draw the window background
---@field ChildBackgroundBrush FSlateBrush @Brush used to draw the background of child windows
FWindowStyle = {}


---HACK: We need a UClass here or UHT will complain.
---@class USlateTypes: UObject
local USlateTypes = {}
