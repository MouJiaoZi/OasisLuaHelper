---@meta

---@class ECsgOper
---@field CSG_Active number @Active brush. (deprecated, do not use.)
---@field CSG_Add number @Add to world. (deprecated, do not use.)
---@field CSG_Subtract number @Subtract from world. (deprecated, do not use.)
---@field CSG_Intersect number @Form from intersection with world.
---@field CSG_Deintersect number @Form from negative intersection with world.
---@field CSG_None number
---@field CSG_MAX number
ECsgOper = {}


---@class EBrushType
---@field Brush_Default number @Default/builder brush.
---@field Brush_Add number @Add to world.
---@field Brush_Subtract number @Subtract from world.
---@field Brush_MAX number
EBrushType = {}


---@class FGeomSelection
---@field Type number
---@field Index number
---@field SelectionIndex number
FGeomSelection = {}


---@class ABrush: AActor
---@field BrushType EBrushType @Type of brush
---@field BrushColor FColor
---@field PolyFlags number
---@field bColored number
---@field bSolidWhenSelected number
---@field bPlaceableFromClassBrowser number @If true, this brush class can be placed using the class browser like other simple class types
---@field bNotForClientOrServer number @If true, this brush is a builder or otherwise does not need to be loaded into the game
---@field bInManipulation number @Flag set when we are in a manipulation (scaling, translation, brush builder param change etc.)
---@field SavedSelections ULuaArrayHelper<FGeomSelection> @Stores selection information from geometry mode.  This is the only information that we can't regenerate by looking at the source brushes following an undo operation.
local ABrush = {}
