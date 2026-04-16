---@meta

---@class FSaveGameItemInteractionData
---@field CenterOffsetX number
---@field CenterOffsetY number
---@field InteractionNum number
FSaveGameItemInteractionData = {}


---@class FCustomHotSpotSaveGameItemData
---@field PositionInteractionDataList ULuaArrayHelper<FSaveGameItemInteractionData>
FCustomHotSpotSaveGameItemData = {}


---@class FCustomHotSpotSaveGameData
---@field CustomTypeToSaveGameItemDataMap ULuaMapHelper<number, FCustomHotSpotSaveGameItemData>
FCustomHotSpotSaveGameData = {}


---@class FCustomHotSpotItemData
---@field PositionToInteractionMap ULuaMapHelper<number, number>
FCustomHotSpotItemData = {}


---@class FCustomHotSpotData
---@field CustomTypeToItemDataMap ULuaMapHelper<number, FCustomHotSpotItemData>
FCustomHotSpotData = {}


---@class FHotSpotLayoutData
---@field CenterPosition FVector2D
---@field Anchors FAnchors
FHotSpotLayoutData = {}


---@class UCustomHotSpotSaveGame: USaveGame
---@field SaveGameData FCustomHotSpotSaveGameData
local UCustomHotSpotSaveGame = {}


---@class UCustomHotSpotManager: UObject, ILuaInterface
---@field CustomHotSpotData FCustomHotSpotData
---@field CustomTypeToMaxPositionKeyMap ULuaMapHelper<number, number>
---@field CustomTypeToLayoutDataMap ULuaMapHelper<number, FHotSpotLayoutData>
---@field FinalHotSpotDataList ULuaArrayHelper<FVector>
---@field FinalGrayDataList ULuaArrayHelper<number>
---@field HotSpotHighPixelDataMap ULuaMapHelper<number, number>
---@field RTHotSpotHighPixelDataMap ULuaMapHelper<number, number>
---@field PositionSamplingFractor number
---@field ViewportPixelThreshold number
---@field RTPixelThreshold number
---@field MaxUInt16Num number
---@field ViewportInteractionMaxNum number
local UCustomHotSpotManager = {}

function UCustomHotSpotManager:Initialize() end

function UCustomHotSpotManager:Shutdown() end

---@return boolean
function UCustomHotSpotManager:InitHotSpotSaveGame() end

---@param bCompleteClear boolean
function UCustomHotSpotManager:FillCustomHotSpotSaveGame(bCompleteClear) end

---@param CustomType number
---@param OffsetPositionX number
---@param OffsetPositionY number
function UCustomHotSpotManager:UpdateCustomHotSpotItemData(CustomType, OffsetPositionX, OffsetPositionY) end

---@param CustomType number
---@param CenterPositionX number
---@param CenterPositionY number
---@param MinX number
---@param MinY number
---@param MaxX number
---@param MaxY number
function UCustomHotSpotManager:AddHotSpotLayoutData(CustomType, CenterPositionX, CenterPositionY, MinX, MinY, MaxX, MaxY) end

---@param SaveGameList ULuaArrayHelper<USaveGame>
---@param ViewportPixelSizeX number
---@param ViewportPixelSizeY number
---@param ViewportScale number
---@param SizeX number
---@param SizeY number
---@param UIRectLeft number
---@param UIRectTop number
---@param UIRectRight number
---@param UIRectBottom number
---@return boolean
function UCustomHotSpotManager:GenerationFinalHotSpotDataList(SaveGameList, ViewportPixelSizeX, ViewportPixelSizeY, ViewportScale, SizeX, SizeY, UIRectLeft, UIRectTop, UIRectRight, UIRectBottom) end

---@param SizeX number
---@param SizeY number
---@param CurrentStage number
---@param TotalStage number
---@param bInitGrayDataList boolean
---@return boolean
function UCustomHotSpotManager:ProcessHotSpotGrayDataList(SizeX, SizeY, CurrentStage, TotalStage, bInitGrayDataList) end

---@param TextureRenderTarget2D UTextureRenderTarget2D
function UCustomHotSpotManager:DrawHotSpotRenderTarget2D(TextureRenderTarget2D) end

---@param TextureRenderTarget2D UTextureRenderTarget2D
---@param SizeX number
---@param SizeY number
function UCustomHotSpotManager:ResizeRenderTarget2D(TextureRenderTarget2D, SizeX, SizeY) end

---@param bCompleteClear boolean
function UCustomHotSpotManager:ClearAllCustomHotSpotData(bCompleteClear) end

---@param bCompleteClear boolean
function UCustomHotSpotManager:ClearCustomHotSpotSaveGame(bCompleteClear) end

---@param SaveGame USaveGame
---@return boolean
function UCustomHotSpotManager:IsCustomHotSpotSaveGame(SaveGame) end

---@param OffsetPositionX number
---@param OffsetPositionY number
---@return number
function UCustomHotSpotManager:CombinePositionKey(OffsetPositionX, OffsetPositionY) end

---@param PositionKey number
---@param OutOffsetPositionX number
---@param OutOffsetPositionY number
function UCustomHotSpotManager:SplitPositionKey(PositionKey, OutOffsetPositionX, OutOffsetPositionY) end

---@param OffsetPositionX number
---@param OffsetPositionY number
---@return number
function UCustomHotSpotManager:CombinePositionKey64(OffsetPositionX, OffsetPositionY) end

---@param PositionKey number
---@param OutOffsetPositionX number
---@param OutOffsetPositionY number
function UCustomHotSpotManager:SplitPositionKey64(PositionKey, OutOffsetPositionX, OutOffsetPositionY) end

---@return string
function UCustomHotSpotManager:GetLuaModule() end
