---@meta

---@class UAvatarBehaviorFeature_PlayerTranslucent: UAvatarBehaviorFeature
---@field TranslucentBehaviorParam FAvatarTranslucentBehaviorParam
---@field bOverride_ApplyTranslucentConfig boolean
---@field bOverride_RevertTranslucentConfig boolean
local UAvatarBehaviorFeature_PlayerTranslucent = {}

function UAvatarBehaviorFeature_PlayerTranslucent:ApplyTranslucentConfig() end

function UAvatarBehaviorFeature_PlayerTranslucent:BP_ApplyTranslucentConfig() end

function UAvatarBehaviorFeature_PlayerTranslucent:RevertTranslucentConfig() end

function UAvatarBehaviorFeature_PlayerTranslucent:BP_RevertTranslucentConfig() end
