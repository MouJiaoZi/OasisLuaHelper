---@meta

---@class ETouchEventStatus
---@field Listen number
---@field Record number
---@field Replay number
ETouchEventStatus = {}


---Struct containing mappings for legacy method of binding keys to exec commands.
---@class FKeyBind
---@field Key FKey @The key to be bound to the command
---@field Command string @The command to execute when the key is pressed/released
---@field Control number @Whether the control key needs to be held when the key event occurs
---@field Shift number @Whether the shift key needs to be held when the key event occurs
---@field Alt number @Whether the alt key needs to be held when the key event occurs
---@field Cmd number @Whether the command key needs to be held when the key event occurs
---@field bIgnoreCtrl number @Whether the control key must not be held when the key event occurs
---@field bIgnoreShift number @Whether the shift key must not be held when the key event occurs
---@field bIgnoreAlt number @Whether the alt key must not be held when the key event occurs
---@field bIgnoreCmd number @Whether the command key must not be held when the key event occurs
---@field bDisabled number
FKeyBind = {}


---Configurable properties for control axes, used to transform raw input into game ready values.
---@class FInputAxisProperties
---@field DeadZone number @What the dead zone of the axis is.  For control axes such as analog sticks.
---@field Sensitivity number @Scaling factor to multiply raw value by.
---@field Exponent number @For applying curves to [0..1] axes, e.g. analog sticks
---@field bInvert number @Inverts reported values for this axis
FInputAxisProperties = {}


---Configurable properties for control axes.
---@class FInputAxisConfigEntry
---@field AxisKeyName string @Axis Key these properties apply to
---@field AxisProperties any @Properties for the Axis Key
FInputAxisConfigEntry = {}


---Defines a mapping between an action and key
---@class FInputActionKeyMapping
---@field ActionName string @Friendly name of action, e.g "jump"
---@field Key FKey @Key to bind it to.
---@field bShift number @true if one of the Shift keys must be down when the KeyEvent is received to be acknowledged
---@field bCtrl number @true if one of the Ctrl keys must be down when the KeyEvent is received to be acknowledged
---@field bAlt number @true if one of the Alt keys must be down when the KeyEvent is received to be acknowledged
---@field bCmd number @true if one of the Cmd keys must be down when the KeyEvent is received to be acknowledged
---@field KeySeq number @key sequence number: 0 for Primary key, 1 for Backup key
FInputActionKeyMapping = {}


---Defines a mapping between an axis and key
---@class FInputAxisKeyMapping
---@field AxisName string @Friendly name of axis, e.g "MoveForward"
---@field Key FKey @Key to bind it to.
---@field Scale number @Multiplier to use for the mapping when accumulating the axis value
---@field KeySeq number @key sequence number: 0 for Primary key, 1 for Backup key
FInputAxisKeyMapping = {}


---@class FInputTouchCacheData
---@field ITCDHandle number
---@field ITCDType number
---@field ITCDTouchLocation FVector2D
---@field ITCDTouchpadIndex number
---@field ITCDforce number
---@field ITCDTimeStamp number
FInputTouchCacheData = {}


---单条记录，滑屏轨迹中的一个点
---@class FTouchDelegateDispatchDetailsRecord
FTouchDelegateDispatchDetailsRecord = {}


---一次Tick的数据
---@class FTouchRecordArray
FTouchRecordArray = {}


---Object within PlayerController that processes player input. Only exists on the client in network games.
---@class UPlayerInput: UObject
---@field bEnableKeyInput boolean
---@field InputTouchCacheDataList ULuaArrayHelper<FInputTouchCacheData>
---@field DebugExecBindings ULuaArrayHelper<FKeyBind> @Generic bindings of keys to Exec()-compatible strings for development purposes only
---@field InvertedAxis ULuaArrayHelper<string> @List of Axis Mappings that have been inverted
local UPlayerInput = {}

---Exec function to change the mouse sensitivity
---@param Sensitivity number
function UPlayerInput:SetMouseSensitivity(Sensitivity) end

---Exec function to add a debug exec command
---@param BindName string
---@param Command string
function UPlayerInput:SetBind(BindName, Command) end

---Exec function to invert an axis key
---@param AxisKey FKey
function UPlayerInput:InvertAxisKey(AxisKey) end

---Exec function to invert an axis mapping
---@param AxisName string
function UPlayerInput:InvertAxis(AxisName) end

---Exec function to reset mouse smoothing values
function UPlayerInput:ClearSmoothing() end
