---@meta

---@class ESelectionMode
---@field None number @Nothing can be selected and there is no hover cue for selection.  You can still handle mouse button events though.
---@field Single number @A single item can be selected at once, or no item may be selected.
---@field SingleToggle number @A single item can be selected at once, or no item may be selected.  You can click the item to toggle selection on and off.
---@field Multi number @Multiple items can be selected at the same time.
ESelectionMode = {}


---Lists can exist as regular lists or as backing widgets for a tree.
---@class ETableViewMode
---@field List number
---@field Tile number
---@field Tree number
ETableViewMode = {}
