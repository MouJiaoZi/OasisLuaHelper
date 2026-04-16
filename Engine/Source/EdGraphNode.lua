---@meta

---Enum used to define which way data flows into or out of this pin.
---@class EEdGraphPinDirection
---@field EGPD_Input number
---@field EGPD_Output number
---@field EGPD_MAX number
EEdGraphPinDirection = {}


---Enum used to define what container type a pin represents.
---@class EPinContainerType
---@field None number
---@field Array number
---@field Set number
---@field Map number
EPinContainerType = {}


---Enum to indicate what sort of title we want.
---@class ENodeTitleType
---@field FullTitle number @The full title, may be multiple lines.
---@field ListView number @More concise, single line title.
---@field EditableTitle number @Returns the editable title (which might not be a title at all).
---@field MenuTitle number @Menu Title for context menus to be displayed in context menus referencing the node.
---@field MAX_TitleTypes number
ENodeTitleType = {}


---Enum to indicate if a node has advanced-display-pins, and whether they are shown.
---@class ENodeAdvancedPins
---@field NoPins number @No advanced pins.
---@field Shown number @There are some advanced pins, and they are shown.
---@field Hidden number @There are some advanced pins, and they are hidden.
ENodeAdvancedPins = {}


---Enum to indicate a node's enabled state.
---@class ENodeEnabledState
---@field Enabled number @Node is enabled.
---@field Disabled number @Node is disabled.
---@field DevelopmentOnly number @Node is enabled for development only.
ENodeEnabledState = {}


---Struct used to define information for terminal types, e.g. types that can be contained by a container. Currently can represent strong/weak references to a type (only UObjects), a structure, or a primitive. Support for "Container of Containers" is done by wrapping a structure, rather than implicitly defining names for containers.
---@class FEdGraphTerminalType
---@field TerminalCategory string @Category
---@field TerminalSubCategory string @Sub-category
---@field TerminalSubCategoryObject UObject @Sub-category object
---@field bTerminalIsConst boolean @Whether or not this pin is a immutable const value
---@field bTerminalIsWeakPointer boolean @Whether or not this is a weak reference
FEdGraphTerminalType = {}


---@class UEdGraphNode: UObject
---@field DeprecatedPins ULuaArrayHelper<UEdGraphPin_Deprecated> @List of connector pins
---@field NodePosX number @X position of node in the editor
---@field NodePosY number @Y position of node in the editor
---@field NodeWidth number @Width of node in the editor; only used when the node can be resized
---@field NodeHeight number @Height of node in the editor; only used when the node can be resized
---@field AdvancedPinDisplay ENodeAdvancedPins @Enum to indicate if a node has advanced-display-pins, and if they are shown
---@field EnabledState ENodeEnabledState @Indicates in what state the node is enabled, which may eliminate it from being compiled
---@field bUserSetEnabledState number @Indicates whether or not the user explicitly set the enabled state
---@field bIsNodeEnabled_DEPRECATED number @(DEPRECATED) FALSE if the node is a disabled, which eliminates it from being compiled
---@field bHasCompilerMessage number @Flag to check for compile error/warning
---@field bCommentBubblePinned number @Comment bubble pinned state
---@field bCommentBubbleVisible number @Comment bubble visibility
---@field bCommentBubbleMakeVisible number @Make comment bubble visible
---@field NodeComment string @Comment string that is drawn on the node
---@field ReferenceObjCategory string @ReferenceObjCategory that is drawn on the node
---@field ErrorType number @Flag to store node specific compile error/warning
---@field ErrorMsg string @Error/Warning description
---@field NodeGuid FGuid @GUID to uniquely identify this node, to facilitate diffing versions of this graph
local UEdGraphNode = {}
