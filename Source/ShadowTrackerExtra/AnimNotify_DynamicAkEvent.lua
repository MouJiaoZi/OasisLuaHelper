---@meta

---@class UAnimNotify_DynamicAkEvent: UAnimNotify
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field bAttached number
---@field SocketName string
local UAnimNotify_DynamicAkEvent = {}

function UAnimNotify_DynamicAkEvent:AddAnimNotifyGetAudioEventHandler() end

function UAnimNotify_DynamicAkEvent:RemoveAnimNotifyGetAudioEventHandler() end
