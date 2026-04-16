---@meta

---@class EBTParallelMode
---@field AbortBackground number @Immediate
---@field WaitForBackground number @Delayed
EBTParallelMode = {}


---Simple Parallel composite node. Allows for running two children: one which must be a single task node (with optional decorators), and the other of which can be a complete subtree.
---@class UBTComposite_SimpleParallel: UBTCompositeNode
---@field FinishMode EBTParallelMode @how background tree should be handled when main task finishes execution
local UBTComposite_SimpleParallel = {}
