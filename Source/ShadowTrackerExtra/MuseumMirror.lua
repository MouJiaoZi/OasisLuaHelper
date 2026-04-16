---@meta

---@class FMuseumMirrorCfg
---@field MirrorPos FVector
---@field MirrorStartRot FRotator
---@field MirrorRot1 FRotator
---@field MirrorRot2 FRotator
---@field MirrorRot3 FRotator
---@field LightPos FVector
---@field LightStartRot1 FRotator
---@field LightRot1 FRotator
---@field LightRot2 FRotator
---@field LightRot3 FRotator
FMuseumMirrorCfg = {}


---@class AMuseumMirror: AActivityBaseActor
---@field RotatingTime number
---@field RotatingLastTime number
---@field SelfRotatingCD number
---@field bRotating boolean
---@field CurIndex number
---@field MirrorIndex number
---@field SelfRotateIndex number
---@field bEnableSelfRotate boolean
---@field BeginRot FRotator
---@field MirrorConfig FMuseumMirrorCfg
local AMuseumMirror = {}

---@param DeltaTime number
function AMuseumMirror:UpdateMirrorRotate(DeltaTime) end

function AMuseumMirror:UpdateRotateInit() end

function AMuseumMirror:TriggerMirrorRotate() end
