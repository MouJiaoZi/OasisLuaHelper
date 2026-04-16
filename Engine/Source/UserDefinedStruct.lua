---@meta

---@class EUserDefinedStructureStatus
---@field UDSS_UpToDate number @Struct is in an unknown state.
---@field UDSS_Dirty number @Struct has been modified but not recompiled.
---@field UDSS_Error number @Struct tried but failed to be compiled.
---@field UDSS_Duplicate number @Struct is a duplicate, the original one was changed.
---@field UDSS_MAX number
EUserDefinedStructureStatus = {}


---@class UUserDefinedStruct: UScriptStruct
---@field Guid FGuid
local UUserDefinedStruct = {}
