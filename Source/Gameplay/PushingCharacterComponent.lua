---@meta

---@class ERoleFrontAxis
---@field ERoleFrontAxis_X number @角色的正前方是X轴
---@field ERoleFrontAxis_Y number @角色的正前方是Y轴
ERoleFrontAxis = {}


---Types of Pushing Character Shapes that are used by Trace *
---@class EPushingCharacterShapeFlag
---@field Box number
---@field Sphere number
---@field Capsule number
EPushingCharacterShapeFlag = {}


---@class UPushingCharacterComponent: UActorComponent
---@field TestPushingCharacterIndex number
---@field bIsOpenTickDependency boolean
---@field RoleFrontAxis ERoleFrontAxis
---@field bIsPushInMovingCharacter boolean
---@field bMoveActorRotationFollowMoveDir boolean
---@field PushCharacterChannels ULuaArrayHelper<ECollisionChannel>
---@field PushCharacterShapeType EPushingCharacterShapeFlag
---@field PushCharacterComponentMatchTag string
---@field PushActorSpeed number
---@field PushActorUpSpeed number
---@field CurPos FVector
---@field LastPos FVector
---@field BoxExtent FVector
local UPushingCharacterComponent = {}

---@return string
function UPushingCharacterComponent:GetToString() end

---@param InMoveScene USceneComponent
---@param InShape UShapeComponent
function UPushingCharacterComponent:SetMoveSceneAndShape(InMoveScene, InShape) end
