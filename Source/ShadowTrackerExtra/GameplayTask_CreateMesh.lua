---@meta

---@class FGameplayTask_CreateMesh_Data
---@field MeshPath FSoftObjectPath
---@field SocketName string
---@field RelativeTransform FTransform
---@field LocationRule EAttachmentRule
---@field RotationRule EAttachmentRule
---@field ScaleRule EAttachmentRule
---@field AnimBPClass UAnimInstance
FGameplayTask_CreateMesh_Data = {}


---@class UGameplayTask_CreateMesh: UUAEGameplayTask
---@field OnCreateMesh FOnCreateMesh
---@field GameplayTask_CreateMesh_Data FGameplayTask_CreateMesh_Data
local UGameplayTask_CreateMesh = {}
