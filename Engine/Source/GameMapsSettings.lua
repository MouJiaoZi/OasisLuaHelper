---@meta

---Ways the screen can be split with two players.
---@class ETwoPlayerSplitScreenType
---@field Horizontal number
---@field Vertical number
ETwoPlayerSplitScreenType = {}


---Ways the screen can be split with three players.
---@class EThreePlayerSplitScreenType
---@field FavorTop number
---@field FavorBottom number
EThreePlayerSplitScreenType = {}


---Helper structure, used to associate GameModes with shortcut names.
---@class FGameModeName
---@field Name string @Abbreviation/prefix that can be used as an alias for the class name
---@field GameMode FSoftClassPath @GameMode class to load
FGameModeName = {}


---@class UGameMapsSettings: UObject
---@field EditorStartupMap FSoftObjectPath @If set, this map will be loaded when the Editor starts up.
---@field LocalMapOptions string @The default options that will be appended to a map being loaded.
---@field TransitionMap FSoftObjectPath @The map loaded when transition from one map to another.
---@field bUseSplitscreen boolean @Whether the screen should be split or not when multiple local players are present
---@field TwoPlayerSplitscreenLayout ETwoPlayerSplitScreenType @The viewport layout to use if the screen should be split and there are two local players
---@field ThreePlayerSplitscreenLayout EThreePlayerSplitScreenType @The viewport layout to use if the screen should be split and there are three local players
---@field bOffsetPlayerGamepadIds boolean @If enabled, this will make so that gamepads start being assigned to the second controller ID in local multiplayer games. In PIE sessions with multiple windows, this has the same effect as enabling "Route 1st Gamepad to 2nd Client"
---@field GameInstanceClass FSoftClassPath @The class to use when instantiating the transient GameInstance class
---@field GameDefaultMap FSoftObjectPath @The map that will be loaded by default when no other map is loaded.
---@field HSCDefaultMap FSoftObjectPath
---@field UGCMDefaultMap FSoftObjectPath
---@field ServerDefaultMap FSoftObjectPath @The map that will be loaded by default when no other map is loaded (DEDICATED SERVER).
---@field GlobalDefaultGameMode FSoftClassPath @GameMode to use if not specified in any other way. (e.g. per-map DefaultGameMode or on the URL).
---@field GlobalDefaultServerGameMode FSoftClassPath @GameMode to use if not specified in any other way. (e.g. per-map DefaultGameMode or on the URL) (DEDICATED SERVERS) If not set, the GlobalDefaultGameMode value will be used.
---@field GameModeMapPrefixes ULuaArrayHelper<FGameModeName> @Overrides the GameMode to use when loading a map that starts with a specific prefix
---@field GameModeClassAliases ULuaArrayHelper<FGameModeName> @List of GameModes to load when game= is specified in the URL (e.g. "DM" could be an alias for "MyProject.MyGameModeMP_DM")
local UGameMapsSettings = {}
