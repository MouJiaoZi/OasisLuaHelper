---@meta

---Is an entity visible?
---@class ESlateVisibility
---@field Visible number @Default widget visibility - visible and can interact with the cursor
---@field Collapsed number @Not visible and takes up no space in the layout; can never be clicked on because it takes up no space.
---@field Hidden number @Not visible, but occupies layout space. Not interactive for obvious reasons.
---@field HitTestInvisible number @Visible to the user, but only as art. The cursors hit tests will never see this widget.
---@field SelfHitTestInvisible number @Same as HitTestInvisible, but doesn't apply to child widgets.
ESlateVisibility = {}


---The sizing options of UWidgets
---@class ESlateSizeRule
---@field Automatic number @Only requests as much room as it needs based on the widgets desired size.
---@field Fill number @Greedily attempts to fill all available room based on the percentage value 0..1
ESlateSizeRule = {}


---@class EVirtualKeyboardType
---@field Default number
---@field Number number
---@field Web number
---@field Email number
---@field Password number
---@field AlphaNumeric number
EVirtualKeyboardType = {}


---Allows users to handle events and return information to the underlying UI layer.
---@class FEventReply
FEventReply = {}


---A struct exposing size param related properties to UMG.
---@class FSlateChildSize
---@field Value number @The parameter of the size rule.
---@field SizeRule ESlateSizeRule @The sizing rule of the content.
FSlateChildSize = {}
