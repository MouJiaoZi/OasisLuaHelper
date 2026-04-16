---@meta

---Distinguishes between different graph types. Graphs can have different properties; for example: functions have one entry point, ubergraphs can have multiples.
---@class EGraphType
---@field GT_Function number
---@field GT_Ubergraph number
---@field GT_Macro number
---@field GT_Animation number
---@field GT_StateMachine number
---@field GT_MAX number
EGraphType = {}


---This is the type of response the graph editor should take when making a connection
---@class ECanCreateConnectionResponse
---@field CONNECT_RESPONSE_MAKE number @Make the connection; there are no issues (message string is displayed if not empty).
---@field CONNECT_RESPONSE_DISALLOW number @Cannot make this connection; display the message string as an error.
---@field CONNECT_RESPONSE_BREAK_OTHERS_A number @Break all existing connections on A and make the new connection (it's exclusive); display the message string as a warning/notice.
---@field CONNECT_RESPONSE_BREAK_OTHERS_B number @Break all existing connections on B and make the new connection (it's exclusive); display the message string as a warning/notice.
---@field CONNECT_RESPONSE_BREAK_OTHERS_AB number @Break all existing connections on A and B, and make the new connection (it's exclusive); display the message string as a warning/notice.
---@field CONNECT_RESPONSE_MAKE_WITH_CONVERSION_NODE number @Make the connection via an intermediate cast node, or some other conversion node.
---@field CONNECT_RESPONSE_MAX number
ECanCreateConnectionResponse = {}


---This structure represents a context dependent action, with sufficient information for the schema to perform it.
---@class FEdGraphSchemaAction
---@field MenuDescription string @The menu text that should be displayed for this node in the creation menu.
---@field TooltipDescription string @The tooltip text that should be displayed for this node in the creation menu.
---@field Category string @This is the UI centric category the action fits in (e.g., Functions, Variables). Use this instead of the NodeType.NodeCategory because multiple NodeCategories might visually belong together.
---@field Keywords string @This is just an arbitrary dump of extra text that search will match on, in addition to the description and tooltip, e.g., Add might have the keyword Math.
---@field Grouping number @This is a priority number for overriding alphabetical order in the action list (higher value  == higher in the list).
---@field SectionID number @Section ID of the action list in which this action belongs.
---@field MenuDescriptionArray ULuaArrayHelper<string>
---@field FullSearchTitlesArray ULuaArrayHelper<string>
---@field FullSearchKeywordsArray ULuaArrayHelper<string>
---@field FullSearchCategoryArray ULuaArrayHelper<string>
---@field LocalizedMenuDescriptionArray ULuaArrayHelper<string>
---@field LocalizedFullSearchTitlesArray ULuaArrayHelper<string>
---@field LocalizedFullSearchKeywordsArray ULuaArrayHelper<string>
---@field LocalizedFullSearchCategoryArray ULuaArrayHelper<string>
---@field SearchText string
FEdGraphSchemaAction = {}


---Action to add a node to the graph
---@class FEdGraphSchemaAction_NewNode
FEdGraphSchemaAction_NewNode = {}


---@class UEdGraphSchema: UObject
local UEdGraphSchema = {}
