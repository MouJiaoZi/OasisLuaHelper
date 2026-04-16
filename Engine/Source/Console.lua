---@meta

---Node for storing an auto-complete tree based on each char in the command.
---@class FAutoCompleteNode
---@field IndexChar number @Char for node in the tree
---@field AutoCompleteListIndices ULuaArrayHelper<number> @Indices into AutoCompleteList for commands that match to this level
FAutoCompleteNode = {}


---A basic command line console that accepts most commands.
---@class UConsole: UObject, FOutputDevice
---@field HistoryBuffer ULuaArrayHelper<string> @Holds the history buffer, order is old to new
local UConsole = {}
