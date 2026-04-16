---@meta

---@class FFastRepRemoteContent
---@field ContentBlockCount number
---@field ContentNumBytes number
---@field Content ULuaArrayHelper<number>
---@field ObjPtrs ULuaArrayHelper<UObject>
---@field DebugInfo string
---@field DSFrameCounter number
FFastRepRemoteContent = {}


---@class FTestFastRep
---@field P1 number
---@field P2 number
FTestFastRep = {}


---@class FTestFastRep_Custom
---@field P1 number
---@field P2 number
FTestFastRep_Custom = {}


---@class FTestFastRep_Composite
---@field P1 number
---@field P2 number
---@field P4 FTestFastRep
FTestFastRep_Composite = {}
