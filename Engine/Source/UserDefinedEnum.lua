---@meta

---An Enumeration is a list of named values.
---@class UUserDefinedEnum: UEnum
---@field DisplayNameMap ULuaMapHelper<string, string> @De-facto display names for enum entries mapped against their raw enum name (UEnum::GetNameByIndex). To sync DisplayNameMap use FEnumEditorUtils::EnsureAllDisplayNamesExist.
local UUserDefinedEnum = {}
