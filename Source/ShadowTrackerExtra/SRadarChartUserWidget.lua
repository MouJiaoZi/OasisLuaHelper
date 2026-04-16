---@meta

---@class USRadarChartUserWidget: UWidget
---@field VertexColor ULuaArrayHelper<FColor>
---@field VertexFarPointImg ULuaArrayHelper<UImage>
---@field VertexScale ULuaArrayHelper<number>
---@field VertexUV ULuaArrayHelper<FVector2D>
local USRadarChartUserWidget = {}

function USRadarChartUserWidget:FreshChartDataToContent() end

function USRadarChartUserWidget:OnHide() end
