---@meta

---Implements a texture asset for rendering video tracks from UMediaPlayer assets.
---@class UMediaTexture: UTexture
---@field AddressX TextureAddress @The addressing mode to use for the X axis.
---@field AddressY TextureAddress @The addressing mode to use for the Y axis.
---@field AutoClear boolean @Whether to clear the texture when no media is being played (default = enabled).
---@field ClearColor FLinearColor @The color used to clear the texture if AutoClear is enabled (default = black).
local UMediaTexture = {}

---Gets the current aspect ratio of the texture.
---@return number
function UMediaTexture:GetAspectRatio() end

---Gets the current height of the texture.
---@return number
function UMediaTexture:GetHeight() end

---Gets the current width of the texture.
---@return number
function UMediaTexture:GetWidth() end

---Reset The IsFirstFrameRender&IsFirstFrameNotify to false for iOS
function UMediaTexture:ResetFirstFrame() end
