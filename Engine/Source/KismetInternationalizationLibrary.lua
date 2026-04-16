---@meta

---@class UKismetInternationalizationLibrary: UBlueprintFunctionLibrary
local UKismetInternationalizationLibrary = {}

---Set the current culture.
---@param Culture string
---@param SaveToConfig boolean
---@return boolean
function UKismetInternationalizationLibrary:SetCurrentCulture(Culture, SaveToConfig) end

---Get the current culture as an IETF language tag: - A two-letter ISO 639-1 language code (eg, "zh"). - An optional four-letter ISO 15924 script code (eg, "Hans"). - An optional two-letter ISO 3166-1 country code (eg, "CN").
---@return string
function UKismetInternationalizationLibrary:GetCurrentCulture() end

---Set *only* the current language (for localization).
---@param Culture string
---@param SaveToConfig boolean
---@return boolean
function UKismetInternationalizationLibrary:SetCurrentLanguage(Culture, SaveToConfig) end

---Get the current language (for localization) as an IETF language tag: - A two-letter ISO 639-1 language code (eg, "zh"). - An optional four-letter ISO 15924 script code (eg, "Hans"). - An optional two-letter ISO 3166-1 country code (eg, "CN").
---@return string
function UKismetInternationalizationLibrary:GetCurrentLanguage() end

---Set *only* the current locale (for internationalization).
---@param Culture string
---@param SaveToConfig boolean
---@return boolean
function UKismetInternationalizationLibrary:SetCurrentLocale(Culture, SaveToConfig) end

---Get the current locale (for internationalization) as an IETF language tag: - A two-letter ISO 639-1 language code (eg, "zh"). - An optional four-letter ISO 15924 script code (eg, "Hans"). - An optional two-letter ISO 3166-1 country code (eg, "CN").
---@return string
function UKismetInternationalizationLibrary:GetCurrentLocale() end

---Set the current language (for localization) and locale (for internationalization).
---@param Culture string
---@param SaveToConfig boolean
---@return boolean
function UKismetInternationalizationLibrary:SetCurrentLanguageAndLocale(Culture, SaveToConfig) end

---Set the given asset group category culture from an IETF language tag (eg, "zh-Hans-CN").
---@param AssetGroup string
---@param Culture string
---@param SaveToConfig boolean
---@return boolean
function UKismetInternationalizationLibrary:SetCurrentAssetGroupCulture(AssetGroup, Culture, SaveToConfig) end

---Get the given asset group category culture.
---@param AssetGroup string
---@return string
function UKismetInternationalizationLibrary:GetCurrentAssetGroupCulture(AssetGroup) end

---Clear the given asset group category culture.
---@param AssetGroup string
---@param SaveToConfig boolean
function UKismetInternationalizationLibrary:ClearCurrentAssetGroupCulture(AssetGroup, SaveToConfig) end
