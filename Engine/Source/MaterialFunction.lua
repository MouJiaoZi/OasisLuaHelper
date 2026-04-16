---@meta

---A Material Function is a collection of material expressions that can be reused in different materials
---@class UMaterialFunction: UObject
---@field StateId FGuid @Used by materials using this function to know when to recompile.
---@field Description string @Description of the function which will be displayed as a tooltip wherever the function is used.
---@field bExposeToLibrary number @Whether to list this function in the material function library, which is a window in the material editor that lists categorized functions.
---@field bUseFullPrecision number @Whether forces the function to use full (highp) precision in the pixel shader.
---@field FunctionExpressions ULuaArrayHelper<UMaterialExpression> @Array of material expressions, excluding Comments.  Used by the material editor.
---@field bReentrantFlag number @Transient flag used to track re-entrance in recursive functions like IsDependent.
local UMaterialFunction = {}
