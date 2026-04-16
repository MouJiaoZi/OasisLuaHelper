---@meta

---Implements an asset that contains a set of overlay data (which includes timing, text, and position) to be displayed for any given source (including, but not limited to, audio, dialog, and movies)
---@class UBasicOverlays: UOverlays
---@field Overlays ULuaArrayHelper<FOverlayItem> @The overlay data held by this asset. Contains info on timing, position, and the subtitle to display
local UBasicOverlays = {}
