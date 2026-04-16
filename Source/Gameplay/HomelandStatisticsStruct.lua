---@meta

---@class FHomelandSingleTileData
---@field Data ULuaArrayHelper<number>
FHomelandSingleTileData = {}


---@class FHomelandItemInfo
---@field Type string
---@field Count number
FHomelandItemInfo = {}


---@class FHomelandValidationItemInfo
---@field UseCount number
---@field PreUseCount number
---@field DepotCount number
FHomelandValidationItemInfo = {}


---@class FHomelandItemListInfo
---@field ItemInfos ULuaMapHelper<number, FHomelandItemInfo>
FHomelandItemListInfo = {}


---@class FHomelandOperationInfo
---@field DataInfos ULuaMapHelper<number, FHomelandSingleTileData>
---@field ItemList ULuaMapHelper<number, FHomelandItemListInfo>
---@field ValidateItemList ULuaMapHelper<number, FHomelandValidationItemInfo>
FHomelandOperationInfo = {}


---@class FSyncHomeBuildingRspData
---@field Sub_ID number
---@field Data ULuaArrayHelper<number>
FSyncHomeBuildingRspData = {}


---@class FSyncHomeBuildingRspDatas
---@field Datas ULuaArrayHelper<FSyncHomeBuildingRspData>
FSyncHomeBuildingRspDatas = {}


---@class FHLBytesBlock
---@field Bytes ULuaArrayHelper<number>
FHLBytesBlock = {}


---@class FSyncHomeBuildingRspCompressedDatas
---@field Blocks ULuaArrayHelper<FHLBytesBlock>
---@field UncompressSize number
FSyncHomeBuildingRspCompressedDatas = {}


---@class FSyncCreateBlueprintReqAppendData
---@field Width number
---@field Length number
---@field Height number
---@field StructureNum number
---@field DecorationNum number
---@field WallpaperNum number
FSyncCreateBlueprintReqAppendData = {}


---@class FCompressedBlueprintDataInfo
---@field Data ULuaArrayHelper<number>
---@field Name string
---@field URL string
---@field AuthorName string
---@field AuthorURL string
---@field Sex number
---@field BlueprintType number
---@field BP_Data FSyncCreateBlueprintReqAppendData
---@field HomeBPUncompressSize number
FCompressedBlueprintDataInfo = {}
