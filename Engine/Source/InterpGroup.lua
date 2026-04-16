---@meta

---A group, associated with a particular  AActor  or set of Actors, which contains a set of InterpTracks for interpolating properties of the  AActor  over time. The Outer of an UInterpGroup is an InterpData.
---@class FInterpEdSelKey
---@field KeyIndex number
---@field UnsnappedPosition number
FInterpEdSelKey = {}


---@class UInterpGroup: UObject, FInterpEdInputInterface
---@field InterpTracks ULuaArrayHelper<UInterpTrack>
---@field GroupName string @Within an InterpData, all GroupNames must be unique. Used for naming Variable connectors on the Action in Kismet and finding each groups object.
---@field GroupColor FColor @Colour used for drawing tracks etc. related to this group.
---@field bCollapsed number @Whether or not this group is folded away in the editor.
---@field bVisible number @Whether or not this group is visible in the editor.
---@field bIsFolder number @When enabled, this group is treated like a folder in the editor, which should only be used for organization.  Folders are never associated with actors and don't have a presence in the Kismet graph.
---@field bIsParented number @When true, this group is considered a 'visual child' of another group.  This doesn't at all affect the behavior of the group, it's only for visual organization.  Also, it's implied that the parent is the next prior group in the array that doesn't have a parent.
---@field bIsSelected number @When enabled, this group will be selected in the interp editor.
local UInterpGroup = {}
