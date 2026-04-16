---@meta

---@class UCommandlet: UObject
---@field HelpDescription string @Description of the commandlet's purpose
---@field HelpUsage string @Usage template to show for "ucc help"
---@field HelpWebLink string @Hyperlink for more info
---@field HelpParamNames ULuaArrayHelper<string> @The name of the parameter the commandlet takes
---@field HelpParamDescriptions ULuaArrayHelper<string> @The description of the parameter
---@field IsServer number @Whether to load objects required in server, client, and editor context.  If IsEditor is set to false, then a UGameEngine (or whatever the value of /Script/Engine.Engine.GameEngine is) will be created for the commandlet instead of a UEditorEngine (or /Script/Engine.Engine.EditorEngine), unless the commandlet overrides the CreateCustomEngine method.
---@field IsClient number
---@field IsEditor number
---@field LogToConsole number @Whether to redirect standard log to the console
---@field ShowErrorCount number @Whether to show standard error and warning count on exit
local UCommandlet = {}
