---@meta

---@class UKillInfoBase: UUAEUserWidget
local UKillInfoBase = {}

---@param ImageDownloader UObject
---@param KillTable IKillTableInterface
function UKillInfoBase:InitBaseInfoC(ImageDownloader, KillTable) end

---@param Data FClientFatalDamageRecordData
---@param ImageDownloader UObject
function UKillInfoBase:ShowQueueBaseInfoC(Data, ImageDownloader) end
