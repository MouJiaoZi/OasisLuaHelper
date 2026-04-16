---@meta

---@class FExtendPendantAnimPlayParam
---@field AnimPlayIndex number
---@field MinAnimRandomPlayCount number
---@field MaxAnimRandomPlayCount number
FExtendPendantAnimPlayParam = {}


---@class FExtendPendantAnimPlayConfig
---@field bAlwaysPlayDefaultAnim boolean
---@field DefaultAnimParam FExtendPendantAnimPlayParam
---@field RandomAnimParamList ULuaArrayHelper<FExtendPendantAnimPlayParam>
FExtendPendantAnimPlayConfig = {}


---@class UAvatarExtendPendantAnimInstance: UAvatarPendantAnimInstance
---@field C_InPlayPetAnimIndex number
---@field RandomPetAnimTimerHandle FTimerHandle
---@field RandomAnimPlayConfig FExtendPendantAnimPlayConfig
local UAvatarExtendPendantAnimInstance = {}

function UAvatarExtendPendantAnimInstance:StartPendantAnimRandomPlay() end

function UAvatarExtendPendantAnimInstance:StopPendantAnimRandomPlay() end

function UAvatarExtendPendantAnimInstance:RandomPlayNextAnim() end

function UAvatarExtendPendantAnimInstance:PlayDefaultAnim() end

---@param RandomAnimParam FExtendPendantAnimPlayParam
function UAvatarExtendPendantAnimInstance:DoPlayRandomAnim(RandomAnimParam) end
