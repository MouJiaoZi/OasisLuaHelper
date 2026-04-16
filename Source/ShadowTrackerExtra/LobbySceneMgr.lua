---@meta

---@class FMagicEmoteFinishDelegate : ULuaMulticastDelegate
FMagicEmoteFinishDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BeUsedCharacterId: ULuaArrayHelper<string>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMagicEmoteFinishDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BeUsedCharacterId ULuaArrayHelper<string>
function FMagicEmoteFinishDelegate:Broadcast(BeUsedCharacterId) end


---@class FMagicEmoteStopDelegate : ULuaMulticastDelegate
FMagicEmoteStopDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BeUsedCharacterId: ULuaArrayHelper<string>, InFromWho: ASTExtraLobbyCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMagicEmoteStopDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BeUsedCharacterId ULuaArrayHelper<string>
---@param InFromWho ASTExtraLobbyCharacter
function FMagicEmoteStopDelegate:Broadcast(BeUsedCharacterId, InFromWho) end


---@class FLobbyMagicEmoteEventDelagte : ULuaMulticastDelegate
FLobbyMagicEmoteEventDelagte = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BeUsedCharacterArray: ULuaArrayHelper<string>, EventType: number, EffectId: number, InFromWho: ASTExtraLobbyCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyMagicEmoteEventDelagte:Add(Callback, Obj) end

---触发 Lua 广播
---@param BeUsedCharacterArray ULuaArrayHelper<string>
---@param EventType number
---@param EffectId number
---@param InFromWho ASTExtraLobbyCharacter
function FLobbyMagicEmoteEventDelagte:Broadcast(BeUsedCharacterArray, EventType, EffectId, InFromWho) end


---@class ALobbySceneMgr: AActor
---@field LobbyMagicEmoteEventDelagte FLobbyMagicEmoteEventDelagte
---@field MagicEmoteFinishEvent FMagicEmoteFinishDelegate
---@field MagicEmoteStopEvent FMagicEmoteStopDelegate
---@field LightParamCollection UMaterialParameterCollection
local ALobbySceneMgr = {}

---@param LevelPath string
---@param bShouldBeLoad boolean
---@return boolean
function ALobbySceneMgr:AddStreamLevelInRuntime(LevelPath, bShouldBeLoad) end

---@param levelId number
---@param InWorldOffset FVector
---@param bWorldShift boolean
---@return boolean
function ALobbySceneMgr:MovetreamLevelInRuntime(levelId, InWorldOffset, bWorldShift) end

---@param LevelName string
---@param levelId number
---@param levelType number
function ALobbySceneMgr:LoadStreamLevel(LevelName, levelId, levelType) end

---@param LevelName string
---@param levelId number
---@param levelType number
function ALobbySceneMgr:UnloadStreamLevel(LevelName, levelId, levelType) end

function ALobbySceneMgr:FlushStreamLevel() end

---@param linkage number
function ALobbySceneMgr:LoadStreamLevelComplete(linkage) end

---@param linkage number
function ALobbySceneMgr:UnLoadStreamLevelComplete(linkage) end

---@param levelId number
---@param enable boolean
function ALobbySceneMgr:EnableSubLevel(levelId, enable) end

---@param levelId number
---@param enable boolean
function ALobbySceneMgr:EnableSubLevelBybShouldBeVisible(levelId, enable) end

---@param levelId number
---@param transform FTransform
function ALobbySceneMgr:ApplyTransform(levelId, transform) end

---@param levelId number
function ALobbySceneMgr:ResetTransform(levelId) end

---@param levelId number
---@return FTransform
function ALobbySceneMgr:GetLevelTransformById(levelId) end

---@param levelId number
---@return string
function ALobbySceneMgr:GetLevelNameById(levelId) end

---@param levelId number
---@param newLevelName string
---@return boolean
function ALobbySceneMgr:SetLevelNameById(levelId, newLevelName) end

---@param levelId number
---@return boolean
function ALobbySceneMgr:IsSubLevelLoaded(levelId) end

---@param linkage number
function ALobbySceneMgr:LobbyLoadStreamLevelComplete(linkage) end

---@param linkage number
function ALobbySceneMgr:LobbyUnLoadStreamLevelComplete(linkage) end

---@param LevelName string
---@param InActor AActor
---@return boolean
function ALobbySceneMgr:IsLevelContainActor(LevelName, InActor) end

---@param levelId number
---@return boolean
function ALobbySceneMgr:IsLevelVisible(levelId) end

function ALobbySceneMgr:GetAllLoadedLevel() end
