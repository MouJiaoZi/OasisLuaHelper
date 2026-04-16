---@meta

---阵营接口库
---@class UGCCampSystem
UGCCampSystem = {}

---增加阵营
---生效范围：服务器
---@param InCampName string @阵营名称
---@return number @通过CampName创建的阵营ID，CampName与CampID都是阵营唯一标识符
function UGCCampSystem.AddCamp(InCampName) end

---设置非玩家Actor所属阵营，例如设置怪物的阵营
---生效范围：服务器
---@param InActor AActor @AActor
---@param InCampID number @阵营ID
function UGCCampSystem.SetCampForActor(InActor, InCampID) end

---设置队伍所属阵营
---生效范围：服务器
---@param InTeamID number @队伍ID
---@param InCampID number @阵营ID
---@return boolean @设置队伍所属阵营是否成功
function UGCCampSystem.SetCampForTeam(InTeamID, InCampID) end

---通过非玩家Actor获取阵营ID，获取失败的时候返回-1
---生效范围：客户端&服务器
---@param InActor AActor @AActor
---@return number @阵营ID
function UGCCampSystem.GetCampIDByActor(InActor) end

---通过非玩家Actor获取阵营名称，获取失败的时候返回空字符串
---生效范围：客户端&服务器
---@param InActor AActor @AActor
---@return string @阵营名称
function UGCCampSystem.GetCampNameByActor(InActor) end

---通过队伍ID获取阵营ID，获取失败的时候返回-1
---生效范围：客户端&服务器
---@param InTeamID number @队伍ID
---@return number @阵营ID
function UGCCampSystem.GetCampIDByTeamID(InTeamID) end

---通过队伍ID获取阵营名称，获取失败的时候返回空字符串
---生效范围：客户端&服务器
---@param InTeamID number @队伍ID
---@return string @阵营名称
function UGCCampSystem.GetCampNameByTeamID(InTeamID) end

---设置默认阵营关系
---生效范围：服务器
---@param InCampRelation ECampRelation @阵营关系,1:友好,2:中立,3:敌对
function UGCCampSystem.SetDefaultCampRelation(InCampRelation) end

---设置两个阵营之间的阵营关系
---生效范围：服务器
---@param InCampA_ID number @阵营A ID
---@param InCampB_ID number @阵营B ID
---@param InCampRelation ECampRelation @阵营关系,0:友好,1:中立,2:敌对
function UGCCampSystem.SetCampRelation(InCampA_ID, InCampB_ID, InCampRelation) end

---获取两个阵营之间的阵营关系，获取失败默认返回中立
---生效范围：服务器
---@param InCampA_ID number @阵营A ID
---@param InCampB_ID number @阵营B ID
---@return ECampRelation @阵营关系,1:友好,2:中立,3:敌对
function UGCCampSystem.GetCampRelation(InCampA_ID, InCampB_ID) end

---获取两个Actor之间的阵营关系，获取失败默认返回中立
---生效范围：服务器&客户端
---@param InActorA AActor @AActor
---@param InActorB AActor @AActor
---@return ECampRelation @阵营关系,1:友好,2:中立,3:敌对
function UGCCampSystem.GetCampRelationWithActor(InActorA, InActorB) end

---设置阵营出生方式
---生效范围：服务器
---@param InCampID number @阵营ID
---@param SpawnPointSelectionMethod EUGCCampSpawnPointSelectionMethod @阵营出生方式
---@param SpawnMethodInfo FVector|uint8 @指定PlayerStartID或者世界坐标
---@param PlayerStartInfo boolean @是否随机出生点ID
function UGCCampSystem.SetCampDefaultSpawnMethod(InCampID, SpawnPointSelectionMethod, SpawnMethodInfo, PlayerStartInfo) end