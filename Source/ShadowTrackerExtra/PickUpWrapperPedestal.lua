---@meta

---@class FPickUpPedestalMiniMapData
---@field MarkSyncData FMarkSyncData
---@field NormalIconID number
FPickUpPedestalMiniMapData = {}


---随pickupwrapper生成的底座，有小地图mark，物品被捡时显示cd，小地图置灰 注：目前在训练模式下，拾取物被捡之后并不会被删，而是隐藏一段时间再显示，本底座在拾取物隐藏时显示cd，显示时隐藏cd，不会去自己刷拾取物。 因此，在训练模式之外暂不支持 add by czcheng 2020.6.3
---@class APickUpWrapperPedestal: AActor
---@field MiniMapData FPickUpPedestalMiniMapData
---@field PickUpCD number
---@field RefreshTimeStamp number @物资刷新的时间点
local APickUpWrapperPedestal = {}

function APickUpWrapperPedestal:ShowMiniMapMark() end

function APickUpWrapperPedestal:UpdateMiniMapMark() end

function APickUpWrapperPedestal:HideMiniMapMark() end

---@param percent number
function APickUpWrapperPedestal:BPShowRefreshCD(percent) end

function APickUpWrapperPedestal:BPHideRefreshCD() end

---@param InRefreshTimeStamp number
function APickUpWrapperPedestal:NotifyPickupHide(InRefreshTimeStamp) end

function APickUpWrapperPedestal:NotifyPickupShow() end

function APickUpWrapperPedestal:NotifyPickupDestroy() end

function APickUpWrapperPedestal:OnRep_RefreshCD() end
