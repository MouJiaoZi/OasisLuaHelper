---@meta

---@class UAsianGameTrackContainerComponent: UActorComponent
---@field TrimmedLinks ULuaArrayHelper<AActor>
---@field CustomTrimConfig ULuaArrayHelper<number>
---@field bUseCustomTrimConfig number
---@field bHasTrimmed number
local UAsianGameTrackContainerComponent = {}

---@param SetOfAsianGameTracks ULuaSetHelper<UAsianGameTrackComponent>
---@return boolean
function UAsianGameTrackContainerComponent:RetriveAsianGameTracksToSet(SetOfAsianGameTracks) end

function UAsianGameTrackContainerComponent:OnInitGameModeProbe() end
