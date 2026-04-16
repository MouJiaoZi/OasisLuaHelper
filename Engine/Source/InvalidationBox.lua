---@meta

---Invalidate * Single Child * Caching / Performance
---@class UInvalidationBox: UContentWidget
---@field bCanCache boolean @Should the invalidation panel cache the widgets?  Making this false makes it so the invalidation panel stops acting like an invalidation panel, just becomes a simple container widget.
---@field CacheRelativeTransforms boolean @Caches the locations for child draw elements relative to the invalidation box, this adds extra overhead to drawing them every frame.  However, in cases where the position of the invalidation boxes changes every frame this can be a big savings.
local UInvalidationBox = {}

function UInvalidationBox:InvalidateCache() end

---@return boolean
function UInvalidationBox:GetCanCache() end

---@param CanCache boolean
function UInvalidationBox:SetCanCache(CanCache) end
