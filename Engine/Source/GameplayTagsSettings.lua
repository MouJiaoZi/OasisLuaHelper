---@meta

---A single redirect from a deleted tag to the new tag that should replace it
---@class FGameplayTagRedirect
---@field OldTagName string
---@field NewTagName string
FGameplayTagRedirect = {}


---Category remapping. This allows base engine tag category meta data to remap to multiple project-specific categories.
---@class FGameplayTagCategoryRemap
---@field BaseCategory string
---@field RemapCategories ULuaArrayHelper<string>
FGameplayTagCategoryRemap = {}


---Base class for storing a list of gameplay tags as an ini list. This is used for both the central list and additional lists
---@class UGameplayTagsList: UObject
---@field ConfigFileName string @Relative path to the ini file that is backing this list
---@field GameplayTagList ULuaArrayHelper<FGameplayTagTableRow> @List of tags saved to this file
local UGameplayTagsList = {}


---Class for importing GameplayTags directly from a config file. FGameplayTagsEditorModule::StartupModule adds this class to the Project Settings menu to be edited. Editing this in Project Settings will output changes to Config/DefaultGameplayTags.ini. Primary advantages of this approach are: -Adding new tags doesn't require checking out external and editing file (CSV or xls) then reimporting. -New tags are mergeable since .ini are text and non exclusive checkout. To do: -Better support could be added for adding new tags. We could match existing tags and autocomplete subtags as the user types (e.g, autocomplete 'Damage.Physical' as the user is adding a 'Damage.Physical.Slash' tag).
---@class UGameplayTagsSettings: UGameplayTagsList
---@field ImportTagsFromConfig boolean @If true, will import tags from ini files in the config/tags folder
---@field WarnOnInvalidTags boolean @If true, will give load warnings when reading invalid tags off disk
---@field InvalidTagCharacters string @These characters cannot be used in gameplay tags, in addition to special ones like newline
---@field CategoryRemapping ULuaArrayHelper<FGameplayTagCategoryRemap>
---@field FastReplication boolean @If true, will replicate gameplay tags by index instead of name. For this to work, tags must be identical on client and server
---@field GameplayTagTableList ULuaArrayHelper<FSoftObjectPath> @List of data tables to load tags from
---@field GameplayTagRedirects ULuaArrayHelper<FGameplayTagRedirect> @List of active tag redirects
---@field CommonlyReplicatedTags ULuaArrayHelper<string> @List of tags most frequently replicated
---@field NumBitsForContainerSize number @Numbers of bits to use for replicating container size, set this based on how large your containers tend to be
---@field NetIndexFirstBitSegment number @The length in bits of the first segment when net serializing tags. We will serialize NetIndexFirstBitSegment + 1 bit to indicate "more", which is slower to replicate
---@field GameplayTagDontNeedFastReplicationList ULuaArrayHelper<string>
local UGameplayTagsSettings = {}


---@class UGameplayTagsDeveloperSettings: UObject
---@field DeveloperConfigName string @Allows new tags to be saved into their own INI file. This is make merging easier for non technical developers by setting up their own ini file.
local UGameplayTagsDeveloperSettings = {}
