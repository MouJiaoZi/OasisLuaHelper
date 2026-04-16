---@meta

---@class EObjectPropertyType
---@field Object number
---@field Array number
---@field Struct number
---@field Set number
---@field Map number
---@field Other number
EObjectPropertyType = {}


---@class FObjectPropertyInfo
---@field PropertyType EObjectPropertyType
---@field PropertyIndex number
---@field ArrayIndex number
FObjectPropertyInfo = {}


---@class FPropertyDecorator
---@field PropertyValue string
---@field bReplicated boolean
---@field PropertyChain ULuaArrayHelper<FObjectPropertyInfo>
---@field PropertyFullPath string
FPropertyDecorator = {}


---@class FObjectDecorator
---@field bIsClass boolean
---@field PropertyDecorators ULuaArrayHelper<FPropertyDecorator>
FObjectDecorator = {}


---@class FRemoteDecorator
FRemoteDecorator = {}


---@class FRemoteDecoratorSinglePropertySetting
---@field PropertyFullPath string
---@field PropertyValue string
---@field bReplicated boolean
---@field GameModeIDs ULuaArrayHelper<number>
---@field Filters ULuaArrayHelper<string>
---@field Rtx string
---@field bIsClass boolean
FRemoteDecoratorSinglePropertySetting = {}


---@class FRemoteDecoratorBlueprintStructHelperArray
---@field Decorators ULuaArrayHelper<FRemoteDecoratorSinglePropertySetting>
---@field bIsClass boolean
FRemoteDecoratorBlueprintStructHelperArray = {}


---@class URemoteDecoratorSettings: UDeveloperSettings
---@field ObjectDecorators ULuaMapHelper<FSoftObjectPath, FRemoteDecoratorBlueprintStructHelperArray>
local URemoteDecoratorSettings = {}
