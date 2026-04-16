---@meta

---@class UGameplayTask_SetupCachedViewPOV: UUAEGameplayTask
local UGameplayTask_SetupCachedViewPOV = {}

---@param AttachParent AActor
---@param AttachParent_Direct AActor
---@param AttachComponent USceneComponent
---@param AttachSocket string
function UGameplayTask_SetupCachedViewPOV:OnPreAttach(AttachParent, AttachParent_Direct, AttachComponent, AttachSocket) end

---@param PC APlayerController
function UGameplayTask_SetupCachedViewPOV:OnBecomeViewTarget(PC) end
