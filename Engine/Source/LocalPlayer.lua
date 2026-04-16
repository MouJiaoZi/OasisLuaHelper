---@meta

---Each player that is active on the current client has a LocalPlayer. It stays active across maps There may be several spawned in the case of splitscreen/coop. There may be 0 spawned on servers.
---@class ULocalPlayer: UPlayer
---@field AspectRatioAxisConstraint EAspectRatioAxisConstraint @How to constrain perspective viewport FOV
---@field PendingLevelPlayerControllerClass APlayerController @The class of PlayerController to spawn for players logging in.
---@field bSentSplitJoin number @set when we've sent a split join request
---@field ControllerId number @The controller ID which this player accepts input from.
local ULocalPlayer = {}
