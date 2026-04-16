---@meta

---@class USTExtraAnimFMObj_Inspect: UAnimFunctionModule_ObjInstance
---@field b_UseDynamicStateInInspect boolean
---@field InspectGameplayTag FGameplayTag
---@field b_IsInspectingWeapon boolean
local USTExtraAnimFMObj_Inspect = {}

---@param GameplayTag FGameplayTag
function USTExtraAnimFMObj_Inspect:OnDynamicStateEnter(GameplayTag) end

---@param GameplayTag FGameplayTag
function USTExtraAnimFMObj_Inspect:OnDynamicStateLeave(GameplayTag) end
