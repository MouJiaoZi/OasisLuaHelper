---@meta

---Enumerates supported font caching types.
---@class EFontCacheType
---@field Offline number @The font is using offline caching (this is how UFont traditionally worked).
---@field Runtime number @The font is using runtime caching (this is how Slate fonts work).
EFontCacheType = {}


---This struct is serialized using native serialization so any changes to it require a package version bump.
---@class FFontCharacter
---@field StartU number
---@field StartV number
---@field USize number
---@field VSize number
---@field TextureIndex number
---@field VerticalOffset number
FFontCharacter = {}


---A font object, for use by Slate, UMG, and Canvas. A font can either be: * Runtime cached - The font contains a series of TTF files that combine to form a composite font. The glyphs are cached on demand when required at runtime. * Offline cached - The font contains a series of textures containing pre-baked cached glyphs and their associated texture coordinates.
---@class UFont: UObject, IFontProviderInterface
---@field FontCacheType EFontCacheType @What kind of font caching should we use? This controls which options we see
---@field Characters ULuaArrayHelper<FFontCharacter> @List of characters in the font.  For a MultiFont, this will include all characters in all sub-fonts!  Thus, the number of characters in this array isn't necessary the number of characters available in the font
---@field Textures ULuaArrayHelper<UTexture2D> @Textures that store this font's glyph image data
---@field IsRemapped number @True if font is 'remapped'.  That is, the character array is not a direct mapping to unicode values.  Instead, all characters are indexed indirectly through the CharRemap array
---@field EmScale number @Font metrics.
---@field Ascent number
---@field Descent number
---@field Leading number
---@field Kerning number @Default horizontal spacing between characters when rendering text with this font
---@field ImportOptions any @Options used when importing this font
---@field NumCharacters number @Number of characters in the font, not including multiple instances of the same character (for multi-fonts). This is cached at load-time or creation time, and is never serialized.
---@field MaxCharHeight ULuaArrayHelper<number> @The maximum height of a character in this font.  For multi-fonts, this array will contain a maximum character height for each multi-font, otherwise the array will contain only a single element.  This is cached at load-time or creation time, and is never serialized.
---@field ScalingFactor number @Scale to apply to the font.
---@field LegacyFontSize number @The default size of the font used for legacy Canvas APIs that don't specify a font size
---@field LegacyFontName string @The default font name to use for legacy Canvas APIs that don't specify a font name
---@field CompositeFont FCompositeFont @Embedded composite font data
local UFont = {}
