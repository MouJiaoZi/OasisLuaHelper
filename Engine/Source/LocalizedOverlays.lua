---@meta

---Implements an asset that contains a set of Basic Overlays that will be displayed in accordance with the current locale, or a default set if an appropriate locale is not found
---@class ULocalizedOverlays: UOverlays
---@field LocaleToOverlaysMap ULuaMapHelper<string, UBasicOverlays> @Maps a set of cultures to specific BasicOverlays assets. Cultures are comprised of three hyphen-separated parts: A two-letter ISO 639-1 language code (e.g., "zh") An optional four-letter ISO 15924 script code (e.g., "Hans") An optional two-letter ISO 3166-1 country code  (e.g., "CN")
local ULocalizedOverlays = {}
