---@meta

---@class UIdentityInfoComponent: UActorComponent, IBasicIdentityInfoInterface
---@field PlayerName string
---@field PlayerKey number
---@field PlayerUID string
---@field UID number
---@field bIsAI boolean
local UIdentityInfoComponent = {}

function UIdentityInfoComponent:OnRep_PlayerName() end
