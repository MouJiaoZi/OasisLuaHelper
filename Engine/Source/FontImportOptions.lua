---@meta

---Font character set type for importing TrueType fonts.
---@class EFontImportCharacterSet
---@field FontICS_Default number
---@field FontICS_Ansi number
---@field FontICS_Symbol number
---@field FontICS_MAX number
EFontImportCharacterSet = {}


---Font import options
---@class FFontImportOptionsData
---@field FontName string @Name of the typeface for the font to import
---@field Height number @Height of font (point size)
---@field bEnableAntialiasing number @Whether the font should be antialiased or not.  Usually you should leave this enabled.
---@field bEnableBold number @Whether the font should be generated in bold or not
---@field bEnableItalic number @Whether the font should be generated in italics or not
---@field bEnableUnderline number @Whether the font should be generated with an underline or not
---@field bAlphaOnly number @if true then forces PF_G8 and only maintains Alpha value and discards color
---@field CharacterSet EFontImportCharacterSet @Character set for this font
---@field Chars string @Explicit list of characters to include in the font
---@field UnicodeRange string @Range of Unicode character values to include in the font.  You can specify ranges using hyphens and/or commas (e.g. '400-900')
---@field CharsFilePath string @Path on disk to a folder where files that contain a list of characters to include in the font
---@field CharsFileWildcard string @File mask wildcard that specifies which files within the CharsFilePath to scan for characters in include in the font
---@field bCreatePrintableOnly number @Skips generation of glyphs for any characters that are not considered 'printable'
---@field bIncludeASCIIRange number @When specifying a range of characters and this is enabled, forces ASCII characters (0 thru 255) to be included as well
---@field ForegroundColor FLinearColor @Color of the foreground font pixels.  Usually you should leave this white and instead use the UI Styles editor to change the color of the font on the fly
---@field bEnableDropShadow number @Enables a very simple, 1-pixel, black colored drop shadow for the generated font
---@field TexturePageWidth number @Horizontal size of each texture page for this font in pixels
---@field TexturePageMaxHeight number @The maximum vertical size of a texture page for this font in pixels.  The actual height of a texture page may be less than this if the font can fit within a smaller sized texture page.
---@field XPadding number @Horizontal padding between each font character on the texture page in pixels
---@field YPadding number @Vertical padding between each font character on the texture page in pixels
---@field ExtendBoxTop number @How much to extend the top of the UV coordinate rectangle for each character in pixels
---@field ExtendBoxBottom number @How much to extend the bottom of the UV coordinate rectangle for each character in pixels
---@field ExtendBoxRight number @How much to extend the right of the UV coordinate rectangle for each character in pixels
---@field ExtendBoxLeft number @How much to extend the left of the UV coordinate rectangle for each character in pixels
---@field bEnableLegacyMode number @Enables legacy font import mode.  This results in lower quality antialiasing and larger glyph bounds, but may be useful when debugging problems
---@field Kerning number @The initial horizontal spacing adjustment between rendered characters.  This setting will be copied directly into the generated Font object's properties.
---@field bUseDistanceFieldAlpha number @If true then the alpha channel of the font textures will store a distance field instead of a color mask
---@field DistanceFieldScaleFactor number @Scale factor determines how big to scale the font bitmap during import when generating distance field values Note that higher values give better quality but importing will take much longer.
---@field DistanceFieldScanRadiusScale number @Shrinks or expands the scan radius used to determine the silhouette of the font edges.
FFontImportOptionsData = {}


---Holds options for importing fonts.
---@class UFontImportOptions: UObject
---@field Data any @The actual data for this object.  We wrap it in a struct so that we can copy it around between objects.
local UFontImportOptions = {}
