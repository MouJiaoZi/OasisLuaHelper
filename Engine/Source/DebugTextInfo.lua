---@meta

---@class FDebugTextInfo
---@field SrcActorOffset FVector @Offset from SrcActor.Location to apply
---@field SrcActorDesiredOffset FVector @Desired offset to interpolate to
---@field DebugText string @Text to display
---@field TimeRemaining number @Time remaining for the debug text, -1.f == infinite
---@field Duration number @Duration used to lerp desired offset
---@field TextColor FColor @Text color
---@field bAbsoluteLocation number @whether the offset should be treated as absolute world location of the string
---@field bKeepAttachedToActor number @If the actor moves does the text also move with it?
---@field bDrawShadow number @Whether to draw a shadow for the text
---@field OrigActorLocation FVector @When we first spawn store off the original actor location for use with bKeepAttachedToActor
---@field FontScale number @Scale to apply to font when rendering
FDebugTextInfo = {}
