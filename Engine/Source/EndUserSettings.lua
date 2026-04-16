---@meta

---@class UEndUserSettings: UObject, IImportantToggleSettingInterface
---@field bSendAnonymousUsageDataToEpic boolean @Determines whether the engine sends anonymous usage information about game sessions to Epic Games in order to improve Unreal Engine. Information will never be shared with 3rd parties.
---@field bSendMeanTimeBetweenFailureDataToEpic boolean @Determines whether the engine sends anonymous crash/abnormal-shutdown data about game sessions to Epic Games in order to improve Unreal Engine. Information will never be shared with 3rd parties.
---@field bAllowUserIdInUsageData boolean @If enabled, adds user identifying data to the otherwise anonymous reports sent to Epic Games.
local UEndUserSettings = {}
