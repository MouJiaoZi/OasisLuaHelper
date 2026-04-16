---@meta

---Sets the maximum font fallback level, for when a character can't be found in the selected font set. UI code that renders strings from a third party (e.g. player chat in a multiplayer game), should restrict font fallback to localized, (or to no fallback, if international font isn't important), to prevent potential performance problems.
---@class EFontFallback
---@field FF_NoFallback number @No fallback font
---@field FF_LocalizedFallback number @Fallback to localized font set
---@field FF_LastResortFallback number @Fallback to last resort font set
---@field FF_Max number @Tries all fallbacks
EFontFallback = {}


---Settings for applying an outline to a font
---@class FFontOutlineSettings
---@field OutlineSize number @Size of the outline in slate units (at 1.0 font scale this unit is a pixel)
---@field OutlineColor FLinearColor @The color of the outline for any character in this font
---@field bSeparateFillAlpha boolean @If checked, the outline will be completely translucent where the filled area will be.  This allows for a separate fill alpha value The trade off when enabling this is slightly worse quality for completely opaque fills where the inner outline border meets the fill area
FFontOutlineSettings = {}


---A representation of a font in Slate.
---@class FSlateFontInfo
---@field OutlineSettings FFontOutlineSettings @Settings for applying an outline to a font
---@field TypefaceFontName string @The name of the font to use from the default typeface (None will use the first entry)
---@field Size number @The font size is a measure in point values.  The conversion of points to Slate Units is done at 96 dpi.  So if you're using a tool like Photoshop to prototype layouts and UI mock ups, be sure to change the default dpi measurements from 72 dpi to 96 dpi. 手机端无法渲染过大的字体图集，且出于内存考虑也不宜将字体设置过大。若有大字体需求，请用小字体+调整Scale的方案。 See MAXFONTSIZE
FSlateFontInfo = {}
