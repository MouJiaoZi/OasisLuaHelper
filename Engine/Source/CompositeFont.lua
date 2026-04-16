---@meta

---@class EFontHinting
---@field Default number @Use the default hinting specified in the font.
---@field Auto number @Force the use of an automatic hinting algorithm.
---@field AutoLight number @Force the use of an automatic light hinting algorithm, optimized for non-monochrome displays.
---@field Monochrome number @Force the use of an automatic hinting algorithm optimized for monochrome displays.
---@field None number @Do not use hinting.
EFontHinting = {}


---@class EFontLoadingPolicy
---@field LazyLoad number @Lazy load the entire font into memory. This will consume more memory than Streaming, however there will be zero file-IO when rendering glyphs within the font, although the initial load may cause a hitch.
---@field Stream number @Stream the font from disk. This will consume less memory than LazyLoad or Inline, however there will be file-IO when rendering glyphs, which may cause hitches under certain circumstances or on certain platforms.
---@field Inline number @Embed the font data within the asset. This will consume more memory than Streaming, however it is guaranteed to be hitch free (only valid for font data within a Font Face asset).
EFontLoadingPolicy = {}


---@class EFontLayoutMethod
---@field Metrics number @Layout the font using the metrics data available in the font. This is typically the desired option, however some fonts have broken or incorrect metrics so may yield better results when using the bounding box values to layout the font.
---@field BoundingBox number @Layout the font using the values from its bounding box. This typically yields a larger line height for fonts that have valid metrics, however it can also produce much better results for fonts that have broken or incorrect metrics.
EFontLayoutMethod = {}


---Payload data describing an individual font in a typeface. Keep this lean as it's also used as a key!
---@class FFontData
---@field FontFilename string @The filename of the font to use. This variable is ignored if we have a font face asset, and is set to the .ufont file in a cooked build.
---@field Hinting EFontHinting @The hinting algorithm to use with the font. This variable is ignored if we have a font face asset, and is synchronized with the font face asset on load in a cooked build.
---@field LoadingPolicy EFontLoadingPolicy @Enum controlling how this font should be loaded at runtime. See the enum for more explanations of the options. This variable is ignored if we have a font face asset, and is synchronized with the font face asset on load in a cooked build.
FFontData = {}


---A single entry in a typeface
---@class FTypefaceEntry
---@field Name string @Name used to identify this font within its typeface
---@field Font FFontData @Raw font data for this font
FTypefaceEntry = {}


---Definition for a typeface (a family of fonts)
---@class FTypeface
---@field Fonts ULuaArrayHelper<FTypefaceEntry> @The fonts contained within this family
FTypeface = {}


---@class FCompositeFallbackFont
---@field Typeface FTypeface @Typeface data for this sub-font
---@field ScalingFactor number @Amount to scale this sub-font so that it better matches the size of the default font
FCompositeFallbackFont = {}


---@class FCompositeSubFont
---@field CharacterRanges ULuaArrayHelper<FInt32Range> @Array of character ranges for which this sub-font should be used
---@field Cultures string @Optional semi-colon separated list of cultures that this sub-font should be used with (if specified, this sub-font will be favored by those cultures and ignored by others)
FCompositeSubFont = {}


---@class FCompositeFont
---@field DefaultTypeface FTypeface @The default typeface that will be used when not overridden by a sub-typeface
---@field SubTypefaces ULuaArrayHelper<FCompositeSubFont> @Sub-typefaces to use for a specific set of characters
FCompositeFont = {}
