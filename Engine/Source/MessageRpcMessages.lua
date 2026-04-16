---@meta

---Message for canceling an RPC call.
---@class FMessageRpcCancel
---@field CallId FGuid @Correlation identifier for the RPC call that this message refers to.
FMessageRpcCancel = {}


---Message for updating the progress of an RPC call.
---@class FMessageRpcProgress
---@field Completion number @Completion percentage (0.0 to 1.0).
---@field CallId FGuid @Correlation identifier for the RPC call that this message refers to.
---@field StatusText string @Status text.
FMessageRpcProgress = {}


---Message for notifying RPC clients that a call was not handled by the server.
---@class FMessageRpcUnhandled
---@field CallId FGuid @Correlation identifier for the RPC call that this message refers to.
FMessageRpcUnhandled = {}
