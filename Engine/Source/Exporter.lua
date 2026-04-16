---@meta

---@class UExporter: UObject
---@field SupportedClass UObject @Supported class of this exporter
---@field FormatExtension ULuaArrayHelper<string> @File extension to use for this exporter
---@field FormatDescription ULuaArrayHelper<string> @Descriptiong of the export format
---@field PreferredFormatIndex number @Index into FormatExtension/FormatDescription of the preferred export format.
---@field TextIndent number @Current indentation of spaces of the exported text
---@field bText number @If true, this will export the data as text
---@field bSelectedOnly number @If true, this will export only the selected objects
---@field bForceFileOperations number @If true, this will force the exporter code to create a file-based Ar (this can keep large output files from taking too much memory)
local UExporter = {}
