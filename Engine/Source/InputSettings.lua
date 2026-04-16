---@meta

---Project wide settings for input handling
---@class UInputSettings: UObject
---@field AxisConfig ULuaArrayHelper<FInputAxisConfigEntry> @Properties of Axis controls
---@field bAltEnterTogglesFullscreen number
---@field bF11TogglesFullscreen number
---@field bUseMouseForTouch number
---@field bEnableMouseSmoothing number
---@field bEnableFOVScaling number
---@field FOVScale number
---@field DoubleClickTime number @If a key is pressed twice in this amount of time it is considered a "double click"
---@field bCaptureMouseOnLaunch boolean @Controls if the viewport will capture the mouse on Launch of the application
---@field DefaultViewportMouseCaptureMode EMouseCaptureMode @The default mouse capture mode for the game viewport
---@field bDefaultViewportMouseLock_DEPRECATED boolean @The default mouse lock state when the viewport acquires capture
---@field DefaultViewportMouseLockMode EMouseLockMode @The default mouse lock state behavior when the viewport acquires capture
---@field ActionMappings ULuaArrayHelper<FInputActionKeyMapping> @List of Action Mappings
---@field AxisMappings ULuaArrayHelper<FInputAxisKeyMapping> @List of Axis Mappings
---@field bAlwaysShowTouchInterface boolean @Should the touch input interface be shown always, or only when the platform has a touch screen?
---@field bShowConsoleOnFourFingerTap boolean @Whether or not to show the console on 4 finger tap, on mobile platforms
---@field DefaultTouchInterface FSoftObjectPath @The default on-screen touch input interface for the game (can be null to disable the onscreen interface)
---@field ConsoleKey_DEPRECATED FKey @The key which opens the console.
---@field ConsoleKeys ULuaArrayHelper<FKey> @The keys which open the console.
local UInputSettings = {}

---Programmatically add an action mapping to the project defaults
---@param KeyMapping FInputActionKeyMapping
---@param bForceRebuildKeymaps boolean
function UInputSettings:AddActionMapping(KeyMapping, bForceRebuildKeymaps) end

---@param InActionName string
---@param OutMappings ULuaArrayHelper<FInputActionKeyMapping>
function UInputSettings:GetActionMappingByName(InActionName, OutMappings) end

---Programmatically remove an action mapping to the project defaults
---@param KeyMapping FInputActionKeyMapping
---@param bForceRebuildKeymaps boolean
function UInputSettings:RemoveActionMapping(KeyMapping, bForceRebuildKeymaps) end

---Programmatically add an axis mapping to the project defaults
---@param KeyMapping FInputAxisKeyMapping
---@param bForceRebuildKeymaps boolean
function UInputSettings:AddAxisMapping(KeyMapping, bForceRebuildKeymaps) end

---Retrieve all axis mappings by a certain name.
---@param InAxisName string
---@param OutMappings ULuaArrayHelper<FInputAxisKeyMapping>
function UInputSettings:GetAxisMappingByName(InAxisName, OutMappings) end

---Programmatically remove an axis mapping to the project defaults
---@param KeyMapping FInputAxisKeyMapping
---@param bForceRebuildKeymaps boolean
function UInputSettings:RemoveAxisMapping(KeyMapping, bForceRebuildKeymaps) end

---Flush the current mapping values to the config file
function UInputSettings:SaveKeyMappings() end

---Populate a list of all defined action names
---@param ActionNames ULuaArrayHelper<string>
function UInputSettings:GetActionNames(ActionNames) end

---Populate a list of all defined axis names
---@param AxisNames ULuaArrayHelper<string>
function UInputSettings:GetAxisNames(AxisNames) end

---When changes are made to the default mappings, push those changes out to PlayerInput key maps
function UInputSettings:ForceRebuildKeymaps() end

function UInputSettings:ApplySettings() end

function UInputSettings:ResetToDefaultEditorSettings() end

function UInputSettings:SaveToConfig() end

function UInputSettings:GetActionMappings() end

function UInputSettings:GetAxisMappings() end
