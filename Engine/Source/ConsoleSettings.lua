---@meta

---Structure for auto-complete commands and their descriptions.
---@class FAutoCompleteCommand
---@field Command string
---@field Desc string
FAutoCompleteCommand = {}


---Implements the settings for the UConsole class.
---@class UConsoleSettings: UObject
---@field MaxScrollbackSize number @Visible Console stuff
---@field ManualAutoCompleteList ULuaArrayHelper<FAutoCompleteCommand> @Manual list of auto-complete commands and info specified in BaseInput.ini
---@field AutoCompleteMapPaths ULuaArrayHelper<string> @List of relative paths (e.g. Content/Maps) to search for map names for auto-complete usage. Specified in BaseInput.ini.
---@field BackgroundOpacityPercentage number @Amount of transparency of the console background.
---@field bOrderTopToBottom boolean @Whether we legacy bottom-to-top ordering or regular top-to-bottom ordering
---@field InputColor FColor @The color used for text input.
---@field HistoryColor FColor @The color used for the previously typed commands history.
---@field AutoCompleteCommandColor FColor @The autocomplete color used for executable commands.
---@field AutoCompleteCVarColor FColor @The autocomplete color used for mutable CVars.
---@field AutoCompleteFadedColor FColor @The autocomplete color used for command descriptions and read-only CVars.
local UConsoleSettings = {}
