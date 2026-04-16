---@meta

---All the types of delegate callbacks that a CloudStorage subclass may receive from C++
---@class ECloudStorageDelegate
---@field CSD_KeyValueReadComplete number
---@field CSD_KeyValueWriteComplete number
---@field CSD_ValueChanged number
---@field CSD_DocumentQueryComplete number
---@field CSD_DocumentReadComplete number
---@field CSD_DocumentWriteComplete number
---@field CSD_DocumentConflictDetected number @Desc: Called when multiple machines have updated the document, and script needs to determine which one to use, via the Resolve functions.
---@field CSD_MAX number
ECloudStorageDelegate = {}


---Base class for the various platform interface classes.
---@class UCloudStorageBase: UPlatformInterfaceBase
---@field LocalCloudFiles ULuaArrayHelper<string> @When using local storage (aka "cloud emulation"), this maintains a list of the file paths.
---@field bSuppressDelegateCalls number @If true, delegate callbacks should be skipped.
local UCloudStorageBase = {}
