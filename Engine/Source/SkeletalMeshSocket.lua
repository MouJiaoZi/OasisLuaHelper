---@meta

---@class USkeletalMeshSocket: UObject
---@field SocketName string @Defines a named attachment location on the USkeletalMesh. These are set up in editor and used as a shortcut instead of specifying everything explicitly to AttachComponent in the SkeletalMeshComponent. The Outer of a SkeletalMeshSocket should always be the USkeletalMesh.
---@field BoneName string
---@field RelativeLocation FVector
---@field RelativeRotation FRotator
---@field RelativeScale FVector
---@field BaseLocation FVector
---@field BaseRotation FRotator
---@field BaseScale FVector
---@field bDynamicCreate boolean
---@field RelativeBoneName string
---@field bForceAlwaysAnimated boolean @If true then the hierarchy of bones this socket is attached to will always be evaluated, even if it had previously been removed due to the current lod setting
local USkeletalMeshSocket = {}

---@param SkelComp USkeletalMeshComponent
---@return FVector
function USkeletalMeshSocket:GetSocketLocation(SkelComp) end

---Sets BoneName, RelativeLocation and RelativeRotation based on closest bone to WorldLocation and WorldNormal
---@param SkelComp USkeletalMeshComponent
---@param WorldLocation FVector
---@param WorldNormal FVector
function USkeletalMeshSocket:InitializeSocketFromLocation(SkelComp, WorldLocation, WorldNormal) end
