---@meta

---@class EButtonClickMethod
---@field DownAndUp number @User must press the button, then release while over the button to trigger the click. This is the most common type of button.
---@field MouseDown number @Click will be triggered immediately on mouse down, and mouse will not be captured.
---@field MouseUp number @Click will always be triggered when mouse button is released over the button, even if the button wasn't pressed down over it.
---@field PreciseClick number @Inside a list, buttons can only be clicked with precise tap. Moving the pointer will scroll the list, also allows drag-droppable buttons.
EButtonClickMethod = {}


---@class EButtonTouchMethod
---@field DownAndUp number @Most buttons behave this way.
---@field PreciseTap number @Inside a list, buttons can only be clicked with precise tap. Moving the pointer will scroll the list.
EButtonTouchMethod = {}


---@class EButtonPressMethod
---@field DownAndUp number @User must press the button, then release while the button has focus to trigger the click. This is the most common type of button.
---@field ButtonPress number @Click will be triggered immediately on button press.
---@field ButtonRelease number @Click will always be triggered when a button release occurs on the focused button, even if the button wasn't pressed while focused.
EButtonPressMethod = {}


---Navigation context for event
---@class EUINavigation
---@field Left number @Four cardinal directions
---@field Right number
---@field Up number
---@field Down number
---@field Next number @Conceptual next and previous
---@field Previous number
---@field Num number @Number of navigation types
---@field Invalid number @Denotes an invalid navigation, more important used to denote no specified navigation
EUINavigation = {}


---Enumerates the source of the navigation
---@class ENavigationSource
---@field FocusedWidget number @Navigate from the focused widget
---@field WidgetUnderCursor number @Navigate from the widget under the cursor
ENavigationSource = {}


---Enumerates the genesis of the navigation, where generated the navigation
---@class ENavigationGenesis
---@field Keyboard number @Navigation caused by the Keyboard
---@field Controller number @Navigation caused by a Controller
---@field User number @Navigate caused by a user generated event (Users = WIdgets, Client Code, ...)
ENavigationGenesis = {}


---Enumerates horizontal alignment options, i.e. for widget slots.
---@class EHorizontalAlignment
---@field HAlign_Fill number @Fill the entire width.
---@field HAlign_Left number @Left-align.
---@field HAlign_Center number @Center-align.
---@field HAlign_Right number @Right-align.
EHorizontalAlignment = {}


---Enumerates vertical alignment options, i.e. for widget slots.
---@class EVerticalAlignment
---@field VAlign_Fill number @Fill the entire height.
---@field VAlign_Top number @Top-align.
---@field VAlign_Center number @Center-align.
---@field VAlign_Bottom number @Bottom-align.
EVerticalAlignment = {}


---Enumerates possible placements for pop-up menus.
---@class EMenuPlacement
---@field MenuPlacement_BelowAnchor number @Place the menu immediately below the anchor
---@field MenuPlacement_CenteredBelowAnchor number @Place the menu immediately centered below the anchor
---@field MenuPlacement_BelowRightAnchor number @Place the menu immediately below the anchor aligned to the right of the content
---@field MenuPlacement_ComboBox number @Place the menu immediately below the anchor and match is width to the anchor's content
---@field MenuPlacement_ComboBoxRight number @Place the menu immediately below the anchor and match is width to the anchor's content. If the width overflows, align with the right edge of the anchor.
---@field MenuPlacement_MenuRight number @Place the menu to the right of the anchor
---@field MenuPlacement_AboveAnchor number @Place the menu immediately above the anchor, no transition effect
---@field MenuPlacement_CenteredAboveAnchor number @Place the menu immediately centered above the anchor, no transition effect
---@field MenuPlacement_AboveRightAnchor number @Place the menu immediately above the anchor aligned to the right of the content
---@field MenuPlacement_MenuLeft number @Place the menu to the left of the anchor
---@field MenuPlacement_Center number @Place the menu's center on top of the menu anchor's center point
---@field MenuPlacement_RightLeftCenter number @Place the menu's vertical center on the left side at the menu anchor's vertical center on the right side
---@field MenuPlacement_MatchBottomLeft number @Place the menu's bottom left corner directly on top of the menu anchor's bottom left corner
EMenuPlacement = {}


---Enumerates widget orientations.
---@class EOrientation
---@field Orient_Horizontal number @Orient horizontally, i.e. left to right.
---@field Orient_Vertical number @Orient vertically, i.e. top to bottom.
EOrientation = {}


---Enumerates scroll directions.
---@class EScrollDirection
---@field Scroll_Down number @Scroll down.
---@field Scroll_Up number @Scroll up.
EScrollDirection = {}


---Additional information about a text committal
---@class ETextCommit
---@field Default number @Losing focus or similar event caused implicit commit
---@field OnEnter number @User committed via the enter key
---@field OnUserMovedFocus number @User committed via tabbing away or moving focus explicitly away
---@field OnCleared number @Keyboard focus was explicitly cleared via the escape key or other similar action
ETextCommit = {}


---Additional information about a selection event
---@class ESelectInfo
---@field OnKeyPress number @User selected via a key press
---@field OnNavigation number @User selected by navigating to the item
---@field OnMouseClick number @User selected by clicking on the item
---@field Direct number @Selection was directly set in code
ESelectInfo = {}


---Enumerates blur types
---@class EBlurType
---@field BlurType_Default number @Default blur
---@field BlurType_Directional number @Directional blur
---@field BlurType_Radial number @Radial blur
---@field BlurType_Rotate number @Rotate blur
EBlurType = {}
