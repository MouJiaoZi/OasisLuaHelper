---@meta

---@class UMapUIMarkDynamicWidget: UMapUIMarkBaseWidget
---@field IsSelf boolean
---@field NeedUpdateRotator boolean
---@field bAutoSizeContent boolean
---@field bFindCharacterInTick boolean
---@field FindCharacterInterval number
---@field bAlwaysVisible boolean
---@field WidgetZOrider number
---@field LuaPath string
---@field CachedPlayerKey number
---@field UsePlayerState boolean
local UMapUIMarkDynamicWidget = {}

---@param InVisable boolean
function UMapUIMarkDynamicWidget:SetVisable(InVisable) end

function UMapUIMarkDynamicWidget:OnViewTargetChange() end

---@param InController AUAEPlayerController
function UMapUIMarkDynamicWidget:OnPlayerControllerRespawn(InController) end

---@param ParentState EMarkParentWidget
function UMapUIMarkDynamicWidget:Event_UIBPCreate(ParentState) end

function UMapUIMarkDynamicWidget:Event_UIBPDestroy() end

function UMapUIMarkDynamicWidget:Event_UpdateUIBPState() end

function UMapUIMarkDynamicWidget:Event_FindCharacter() end

function UMapUIMarkDynamicWidget:Event_ViewTargetChange() end
