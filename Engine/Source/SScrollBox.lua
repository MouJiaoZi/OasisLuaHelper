---@meta

---Where to scroll the descendant to
---@class EDescendantScrollDestination
---@field IntoView number @Scroll the widget into view using the least amount of energy possible.  So if the new item is above the visible set, it will stop as soon as it's in view at the top.  If it's below the visible set, it stop it comes into view at the bottom.
---@field TopOrLeft number @Always scroll the widget so it appears at the top/Left of the scrollable area.
---@field Center number @Always scroll the widget so it appears at the center of the scrollable area, if possible. This won't be possible for the first few items and the last few items, as there's not enough slack.
EDescendantScrollDestination = {}
