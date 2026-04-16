---@meta

---@class UAnimCompress_RemoveEverySecondKey: UAnimCompress
---@field MinKeys number @Animations with fewer than MinKeys will not lose any keys.
---@field bStartAtSecondKey number @If bStartAtSecondKey is true, remove keys 1,3,5,etc. If bStartAtSecondKey is false, remove keys 0,2,4,etc.
local UAnimCompress_RemoveEverySecondKey = {}
