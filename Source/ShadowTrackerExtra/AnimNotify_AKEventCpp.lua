---@meta

---@class UAnimNotify_AKEvenCpp: UAnimNotify
---@field bCreateNewAKComp boolean
---@field AttachName string
---@field TransformOffset FTransform
---@field Event_PCSoundStyle UAkAudioEvent
---@field EventLocal_PCSoundStyle UAkAudioEvent
---@field bFollow boolean
---@field EventName string
---@field bAutoDestriy boolean
---@field bAutonomousOnly boolean
---@field bAlwaysUpdatePosition boolean
---@field bCheckNewFPPPerson boolean
---@field bCheckConsiderHidden boolean
---@field bFootSound boolean
---@field bExcludePCSoundStyle boolean
---@field bHasTryAsyncLoadPCSound boolean
local UAnimNotify_AKEvenCpp = {}

function UAnimNotify_AKEvenCpp:OnAsyncLoadPCSoundFinished() end
