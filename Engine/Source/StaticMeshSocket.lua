---@meta

---@class UStaticMeshSocket: UObject
---@field SocketName string @Defines a named attachment location on the UStaticMesh. These are set up in editor and used as a shortcut instead of specifying everything explicitly to AttachComponent in the StaticMeshComponent. The Outer of a StaticMeshSocket should always be the UStaticMesh.
---@field RelativeLocation FVector
---@field RelativeRotation FRotator
---@field RelativeScale FVector
---@field Tag string
---@field bDynamicCreate boolean
local UStaticMeshSocket = {}
