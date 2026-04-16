---@meta

---@class FConfigOverriderSetting
---@field Key string
---@field Value number
---@field CacheValue number
FConfigOverriderSetting = {}


---@class UConfigOverriderFor120fps: UObject
---@field ConfigFor120fps ULuaArrayHelper<FConfigOverriderSetting>
---@field ConfigForEnergySaving ULuaArrayHelper<FConfigOverriderSetting>
---@field TextureLODGroupFilterOverride ULuaArrayHelper<FTextureLODGroupFilterOverride>
---@field bHadApplyConfigFor120fps boolean
---@field bHadApplyForEnergySaving boolean
local UConfigOverriderFor120fps = {}

---@param bEnable boolean
function UConfigOverriderFor120fps:Enable120fpsConfigs(bEnable) end

---@param bEnergySaving boolean
function UConfigOverriderFor120fps:EnableEnergySavingModeConfigs(bEnergySaving) end

function UConfigOverriderFor120fps:RecoverConfigs() end

function UConfigOverriderFor120fps:Recover120fpsConfigs() end

function UConfigOverriderFor120fps:RecoverEnergySavingModeConfigs() end

---@param bEnable boolean
function UConfigOverriderFor120fps:EnableTextureFilterOverrider(bEnable) end
