---@meta

---@class UGameplayTask_PlayMedia: UUAEGameplayTask
---@field MediaEndReached FOnMediaPlayerManagerEvent
---@field MediaOpenFailed FOnMediaPlayerManagerEvent
---@field MediaOpenSuccess FOnMediaPlayerOpenSuccess
---@field Url string
local UGameplayTask_PlayMedia = {}

function UGameplayTask_PlayMedia:OnMediaPlayEndReached() end

function UGameplayTask_PlayMedia:OnMediaOpenFailed() end

function UGameplayTask_PlayMedia:OnMediaUIExit() end

function UGameplayTask_PlayMedia:PlayVideoOnUI() end
