---@meta

---Enumerates ways in which an image can be drawn.
---@class ESlateBrushDrawType
---@field NoDrawType number @Don't do anything
---@field Box number @Draw a 3x3 box, where the sides and the middle stretch based on the Margin
---@field Border number @Draw a 3x3 border where the sides tile and the middle is empty
---@field Image number @Draw an image; margin is ignored
---@field RoundedBox number @Draw a solid rectangle with an outline and corner radius
ESlateBrushDrawType = {}


---Enumerates tiling options for image drawing.
---@class ESlateBrushTileType
---@field NoTile number @Just stretch
---@field Horizontal number @Tile the image horizontally
---@field Vertical number @Tile the image vertically
---@field Both number @Tile in both directions
ESlateBrushTileType = {}


---Possible options for mirroring the brush image
---@class ESlateBrushMirrorType
---@field NoMirror number @Don't mirror anything, just draw the texture as it is.
---@field Horizontal number @Mirror the image horizontally.
---@field Vertical number @Mirror the image vertically.
---@field Both number @Mirror in both directions.
ESlateBrushMirrorType = {}


---Enumerates brush image types.
---@class ESlateBrushImageType
---@field NoImage number @No image is loaded.  Color only brushes, transparent brushes etc.
---@field FullColor number @The image to be loaded is in full color.
---@field Linear number @The image is a special texture in linear space (usually a rendering resource such as a lookup table).
---@field Vector number @The image is vector graphics and will be rendered and cached in full color using size/scale requested by slate
ESlateBrushImageType = {}


---An brush which contains information about how to draw a Slate element
---@class FSlateBrush
---@field ImageSize FVector2D @Size of the resource in Slate Units
---@field Margin FMargin @The margin to use in Box and Border modes
---@field TintColor FSlateColor @Tinting applied to the image.
---@field ResourceName string @The name of the rendering resource to use
---@field UVRegion FBox2D @Optional UV region for an image When valid - overrides UV region specified in resource proxy
---@field DrawAs ESlateBrushDrawType @How to draw the image
---@field Tiling ESlateBrushTileType @How to tile the image in Image mode
---@field Mirroring ESlateBrushMirrorType @How to mirror the image in Image mode.  This is normally only used for dynamic image brushes where the source texture comes from a hardware device such as a web camera.
---@field ImageType ESlateBrushImageType @The type of image
---@field bUseImageSizeAsTextureSize number
---@field bIsDynamicallyLoaded number @Whether or not the brush path is a path to a UObject
---@field bHasUObject_DEPRECATED number @Whether or not the brush has a UTexture resource
FSlateBrush = {}
