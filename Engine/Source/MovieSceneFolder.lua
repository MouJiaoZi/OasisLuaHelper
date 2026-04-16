---@meta

---Reprents a folder used for organizing objects in tracks in a movie scene.
---@class UMovieSceneFolder: UObject
---@field FolderName string @The name of this folder.
---@field ChildFolders ULuaArrayHelper<UMovieSceneFolder> @The folders contained by this folder.
---@field ChildMasterTracks ULuaArrayHelper<UMovieSceneTrack> @The master tracks contained by this folder.
---@field ChildObjectBindingStrings ULuaArrayHelper<string> @The guid strings used to serialize the guids for the object bindings contained by this folder.
local UMovieSceneFolder = {}
