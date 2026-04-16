---@meta

---GamePart系统接口库
---@class UGCGamePartSystem
UGCGamePartSystem = {}

---获取指定GamePart的Config
---生效范围：服务器&客户端
---@param GamePartName string @GamePart名称
---@return UUGCGamePartConfig @指定GamePart的Config
function UGCGamePartSystem.GetGamePartConfig(GamePartName) end

---获取指定GamePart的GlobalActor
---生效范围：服务器&客户端
---@param GamePartName string @GamePart名称
---@return AActor @指定GamePart的GlobalActor
function UGCGamePartSystem.GetGamePartGlobalActor(GamePartName) end

---获取指定GamePart的指定玩家的指定PlayerComponent
---@param GamePartName string @GamePart名称
---@param PC PlayerController @玩家控制器
---@param PlayerComponentName string @PlayerComponent名称
---@return UActorComponent @指定的PlayerComponent
function UGCGamePartSystem.GetGamePartPlayerComponent(GamePartName, PC, PlayerComponentName) end

---获取指定GamePart是否已加载
---@param GamePartName string @GamePart名称
---@return boolean @GamePart是否已加载
function UGCGamePartSystem.IsGamePartLoaded(GamePartName) end

---获取所有已加载的GamePart
---@return string[] @所有已加载的GamePart列表
function UGCGamePartSystem.GetAllLoadedGameParts() end