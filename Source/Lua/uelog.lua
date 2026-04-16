---@meta

---UE中日志详细级别等级
---@class ELogVerbosity
---@field Fatal number @ Always prints s fatal error to console (and log file) and crashes (even if logging is disabled)
---@field Error number @  Prints an error to console (and log file). 
---@field Warning number @  Prints a warning to console (and log file).
---@field Display number @  Prints a message to console (and log file)
---@field Log number @ Prints a message to a log file (does not print to console)
---@field Verbose number @  Prints a verbose message to a log file (if Verbose logging is enabled for the given category, 
---@field VeryVerbose number @  Prints a verbose message to a log file (if VeryVerbose logging is enabled, 
ELogVerbosity = {}
