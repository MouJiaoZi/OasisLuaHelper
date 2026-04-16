---@meta

---@class UAnimNotify_SpawnEmoteItem: UAnimNotify
---@field ActorTemplate AActor
---@field SocketName string
---@field TransformOffset FTransform
---@field bDisableCollison boolean
---@field LifeSpan number
---@field bNeedAlign boolean
---@field SpawnActorMap ULuaMapHelper<USkeletalMeshComponent, AActor>
local UAnimNotify_SpawnEmoteItem = {}

---@param InActor AActor
---@param InPosition number
function UAnimNotify_SpawnEmoteItem:SetActorMontagePosition(InActor, InPosition) end

---@param InActor AActor
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
function UAnimNotify_SpawnEmoteItem:AlignActorMontage(InActor, MeshComp, Animation) end
