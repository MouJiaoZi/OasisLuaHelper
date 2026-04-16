---@meta

---@class ULobbyLevelSequenceUtils: UBlueprintFunctionLibrary
local ULobbyLevelSequenceUtils = {}

---启用全局捕获功能
---@param InLevelSequenceActor ALevelSequenceActor
function ULobbyLevelSequenceUtils:EnableGlobalCapture(InLevelSequenceActor) end

---设置是否在关卡序列播放结束时销毁生成的物体
---@param InLevelSequencePlayer ULevelSequencePlayer
---@param IsNeedDestroy boolean
function ULobbyLevelSequenceUtils:SetDestroySpawnObjectOnEnd(InLevelSequencePlayer, IsNeedDestroy) end

---清理指定关卡序列播放器的注册信息
---@param InLevelSequencePlayer ULevelSequencePlayer
function ULobbyLevelSequenceUtils:CleanRegister(InLevelSequencePlayer) end

---将Actor绑定到指定插槽的LevelSequence
---@param InLevelSequence ULevelSequence
---@param InLevelSequenceActor ALevelSequenceActor
---@param InSocketName string
---@param InActor AActor
---@return boolean
function ULobbyLevelSequenceUtils:AddBinding(InLevelSequence, InLevelSequenceActor, InSocketName, InActor) end

---批量将多个Actor绑定到指定插槽的LevelSequence
---@param InLevelSequence ULevelSequence
---@param InLevelSequenceActor ALevelSequenceActor
---@param InSocketActorMap ULuaMapHelper<string, AActor>
---@return boolean
function ULobbyLevelSequenceUtils:AddBindings(InLevelSequence, InLevelSequenceActor, InSocketActorMap) end

---移除指定插槽的LevelSequence与Actor的绑定关系
---@param InLevelSequence ULevelSequence
---@param InLevelSequenceActor ALevelSequenceActor
---@param InSocketName string
---@param InActor AActor
---@return boolean
function ULobbyLevelSequenceUtils:RemoveBinding(InLevelSequence, InLevelSequenceActor, InSocketName, InActor) end

---批量移除多个插槽的LevelSequence与Actor的绑定关系
---@param InLevelSequence ULevelSequence
---@param InLevelSequenceActor ALevelSequenceActor
---@param InSocketActorMap ULuaMapHelper<string, AActor>
---@return boolean
function ULobbyLevelSequenceUtils:RemoveBindings(InLevelSequence, InLevelSequenceActor, InSocketActorMap) end

---@param InLevelSequence ULevelSequence
---@param InSocketName string
---@return string
function ULobbyLevelSequenceUtils:GetBindingNameByDisPlayName(InLevelSequence, InSocketName) end


---@class ULobbyLevelSequenceMgr: UObject
---@field SocketNameToGuidMap ULuaMapHelper<string, FGuid> @存储插槽名称与对应绑定GUID的映射关系 Key（FName）：插槽名称，用于标识不同的绑定位置 Value（FGuid）：LevelSequence绑定的唯一标识符，用于后续的绑定/解绑操作
local ULobbyLevelSequenceMgr = {}

---启用全局捕获功能
---@param InLevelSequenceActor ALevelSequenceActor
function ULobbyLevelSequenceMgr:EnableGlobalCapture(InLevelSequenceActor) end

---设置是否在关卡序列播放结束时销毁生成的物体
---@param InLevelSequencePlayer ULevelSequencePlayer
---@param IsNeedDestroy boolean
function ULobbyLevelSequenceMgr:SetDestroySpawnObjectOnEnd(InLevelSequencePlayer, IsNeedDestroy) end

---清理指定关卡序列播放器的注册信息
---@param InLevelSequencePlayer ULevelSequencePlayer
function ULobbyLevelSequenceMgr:CleanRegister(InLevelSequencePlayer) end

---将Actor绑定到指定插槽的LevelSequence
---@param InLevelSequence ULevelSequence
---@param InLevelSequenceActor ALevelSequenceActor
---@param InSocketName string
---@param InActor AActor
---@return boolean
function ULobbyLevelSequenceMgr:AddBinding(InLevelSequence, InLevelSequenceActor, InSocketName, InActor) end

---批量将多个Actor绑定到指定插槽的LevelSequence
---@param InLevelSequence ULevelSequence
---@param InLevelSequenceActor ALevelSequenceActor
---@param InSocketActorMap ULuaMapHelper<string, AActor>
---@return boolean
function ULobbyLevelSequenceMgr:AddBindings(InLevelSequence, InLevelSequenceActor, InSocketActorMap) end

---移除指定插槽的LevelSequence与Actor的绑定关系
---@param InLevelSequence ULevelSequence
---@param InLevelSequenceActor ALevelSequenceActor
---@param InSocketName string
---@param InActor AActor
---@return boolean
function ULobbyLevelSequenceMgr:RemoveBinding(InLevelSequence, InLevelSequenceActor, InSocketName, InActor) end

---批量移除多个插槽的LevelSequence与Actor的绑定关系（蓝图可调用原生事件）
---@param InLevelSequence ULevelSequence
---@param InLevelSequenceActor ALevelSequenceActor
---@param InSocketActorMap ULuaMapHelper<string, AActor>
---@return boolean
function ULobbyLevelSequenceMgr:RemoveBindings(InLevelSequence, InLevelSequenceActor, InSocketActorMap) end
