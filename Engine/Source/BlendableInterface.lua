---@meta

---Where to place a material node in the post processing graph.
---@class EBlendableLocation
---@field BL_AfterTonemapping number @Input0:former pass color, Input1:SeparateTranslucency.
---@field BL_BeforeTonemapping number @Input0:former pass color, Input1:SeparateTranslucency.
---@field BL_BeforeTranslucency number @Input0:former pass color, Input1:SeparateTranslucency.
---@field BL_ReplacingTonemapper number @Input0:former pass color, Input1:SeparateTranslucency, Input2: BloomOutput vector parameters: Engine.FilmWhitePoint scalar parameters: Engine.FilmSaturation, Engine.FilmContrast
---@field BL_AfterUI number @After UI
---@field BL_MAX number
EBlendableLocation = {}
