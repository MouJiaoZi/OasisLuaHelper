---@meta

---@class UNetAlienationPersonalRepComponent: UActorComponent
---@field PersonalNetAlienDataList ULuaArrayHelper<URepViaPCNetAlienationData>
---@field PendingForceNetUpdateDataList ULuaSetHelper<URepViaPCNetAlienationData>
local UNetAlienationPersonalRepComponent = {}

function UNetAlienationPersonalRepComponent:OnRep_PersonalNetAlienDataList() end
