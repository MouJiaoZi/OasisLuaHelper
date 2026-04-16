---@meta

---@class FGameplayTask_PlayMontage_Data
---@field bFemaleUseDifferentAnim boolean
---@field bUseMontagePlayAll boolean
---@field bStopPrevMontage boolean
---@field bOnlySimulation boolean
---@field StartPosition number
---@field StartSectionName string
---@field bNeedRePlayWhenAnimInsInit boolean
---@field bNeedRestoreStateWhenRePlayInAnimInsInit boolean
FGameplayTask_PlayMontage_Data = {}


---@class UGameplayTask_PlayMontage: UUAEGameplayTask
---@field PlayMontage_Data FGameplayTask_PlayMontage_Data
local UGameplayTask_PlayMontage = {}

function UGameplayTask_PlayMontage:HandleOnAnimInitialized() end

function UGameplayTask_PlayMontage:OnPreAnimClearScriptInstance() end
