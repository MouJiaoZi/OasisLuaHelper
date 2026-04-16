---@meta

---@class UCustomNetRelevantWithPC: UCustomNetRelevantBase
---@field bIsRelevant boolean
---@field bForceNetRelevant boolean
---@field PCs ULuaArrayHelper<APlayerController>
local UCustomNetRelevantWithPC = {}

---@param PC APlayerController
function UCustomNetRelevantWithPC:AddRelevantPC(PC) end

---@param PC APlayerController
function UCustomNetRelevantWithPC:RemoveRelevantPC(PC) end

function UCustomNetRelevantWithPC:ClearRelevantPC() end

function UCustomNetRelevantWithPC:GetRelevantPC() end

function UCustomNetRelevantWithPC:MarkAllConnectionDirty() end

function UCustomNetRelevantWithPC:FinishForceNet() end
