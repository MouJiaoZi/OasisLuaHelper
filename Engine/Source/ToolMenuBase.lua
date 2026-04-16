---@meta

---@class ECustomizedToolMenuVisibility
---@field None number
---@field Visible number
---@field Hidden number
ECustomizedToolMenuVisibility = {}


---@class FCustomizedToolMenuEntry
---@field Visibility ECustomizedToolMenuVisibility
FCustomizedToolMenuEntry = {}


---@class FCustomizedToolMenuSection
---@field Visibility ECustomizedToolMenuVisibility
FCustomizedToolMenuSection = {}


---@class FCustomizedToolMenuNameArray
---@field Names ULuaArrayHelper<string>
FCustomizedToolMenuNameArray = {}


---@class FToolMenuProfile
---@field Name string
---@field Entries ULuaMapHelper<string, FCustomizedToolMenuEntry>
---@field Sections ULuaMapHelper<string, FCustomizedToolMenuSection>
---@field SuppressExtenders ULuaArrayHelper<string>
FToolMenuProfile = {}


---@class FCustomizedToolMenu
---@field EntryOrder ULuaMapHelper<string, FCustomizedToolMenuNameArray>
---@field SectionOrder ULuaArrayHelper<string>
FCustomizedToolMenu = {}


---@class UToolMenuBase: UObject
local UToolMenuBase = {}
