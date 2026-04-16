---@meta

---@class FAutoChooseParachuteTeamLeaderData
---@field UID number
---@field PlayerName string
---@field MaxRankingScore number
---@field LeaderCount number
---@field LastGameLeaderUID number
---@field LastGameTeammatesUID ULuaArrayHelper<number>
---@field LastGameBattleID number
---@field bDoInitialFollow boolean
FAutoChooseParachuteTeamLeaderData = {}


---@class FSceneTeamChangeNotifyMsg
---@field team_id number
FSceneTeamChangeNotifyMsg = {}


---@class FTeammateLoginDelegate : ULuaMulticastDelegate
FTeammateLoginDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TeamID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTeammateLoginDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TeamID number
function FTeammateLoginDelegate:Broadcast(TeamID) end


---@class UTeamModeComponent: UGameModeBaseComponent
---@field bUseLoginOptions boolean
local UTeamModeComponent = {}

---@param InPlayerState ASTExtraPlayerState
---@return boolean
function UTeamModeComponent:IsPlayerExisted(InPlayerState) end

---@param PlayerState ASTExtraPlayerState
function UTeamModeComponent:AddToTeamMap(PlayerState) end

---生化团竞合入, feishen, 20200828
---@param PlayerState ASTExtraPlayerState
function UTeamModeComponent:RemoveFromTeamMap(PlayerState) end

---@param PlayerState ASTExtraPlayerState
---@param NewTeamID number
function UTeamModeComponent:ChangePlayerTeamID(PlayerState, NewTeamID) end

---@param TeamID number
function UTeamModeComponent:RemoveTeam(TeamID) end

function UTeamModeComponent:ResetTeamMap() end

---@param TeamID number
---@return boolean
function UTeamModeComponent:IsTeamIDValid(TeamID) end

---@return number
function UTeamModeComponent:GetTeamSize() end

---@param TeamId number
---@return number
function UTeamModeComponent:GetTeamSizeById(TeamId) end

---@param InController AUAEPlayerController
---@param InTeamID number
---@param IsAITeam boolean
function UTeamModeComponent:RefreshWatchTeammates(InController, InTeamID, IsAITeam) end

---@param TeamId number
function UTeamModeComponent:GetTeamates(TeamId) end

---@param TeamID number
function UTeamModeComponent:GetTeamPlayerKeys(TeamID) end

---@param TeamID number
function UTeamModeComponent:GetTeamAIPlayerKeys(TeamID) end

function UTeamModeComponent:GetTeamIDs() end

---@return number
function UTeamModeComponent:GetRealTeamNum() end

---@param ExistPlayerCharacter ULuaSetHelper<number>
function UTeamModeComponent:RefreshTeammap(ExistPlayerCharacter) end

---@param bForceFollowTogether boolean
function UTeamModeComponent:AutoGroupAllParachuteTeams(bForceFollowTogether) end

---@param PlayerState ASTExtraPlayerState
---@return number
function UTeamModeComponent:GetTeammateIndex(PlayerState) end

---@return number
function UTeamModeComponent:AssignNewTeamId() end

---@param TeamID number
function UTeamModeComponent:UpdateTeamPlayerStatesData(TeamID) end

---@param NewPlayer APlayerController
function UTeamModeComponent:OnPostLogin(NewPlayer) end

---@param Exiting APlayerController
function UTeamModeComponent:OnLogout(Exiting) end

---@param UID number
---@param NewTeamID number
function UTeamModeComponent:OnPlayerTeamIDChanged(UID, NewTeamID) end

---@param PlayerState ASTExtraPlayerState
---@param Index number
function UTeamModeComponent:SetTeammateIndex(PlayerState, Index) end

---@param Killer AController
---@param VictimPlayer AController
---@param VictimPawn APawn
---@param DamageType UDamageType
function UTeamModeComponent:Killed(Killer, VictimPlayer, VictimPawn, DamageType) end

---@param bAliveTeamOnly boolean
---@return number
function UTeamModeComponent:GetBestScoreTeam(bAliveTeamOnly) end

---@param TeamID number
---@return FTeamInfo
function UTeamModeComponent:GetTeamInfo(TeamID) end

---@param InPlayerState ASTExtraPlayerState
function UTeamModeComponent:InitDefaultTeamID(InPlayerState) end

---@return number
function UTeamModeComponent:GetDefaultTeamID() end

---@param PlayerKey number
---@param TeamID number
function UTeamModeComponent:SetAITeamIDCache(PlayerKey, TeamID) end

---@param PlayerKey number
---@param bDeleteIfGet boolean
---@return number
function UTeamModeComponent:GetAITeamIDCache(PlayerKey, bDeleteIfGet) end

---@param InTestTeamNum number
function UTeamModeComponent:SetTestTeamNum(InTestTeamNum) end

---@param InTestUniformDistribution boolean
function UTeamModeComponent:SetTestUniformDistribution(InTestUniformDistribution) end

function UTeamModeComponent:HandleClubTeamInfo() end

---@param TeamID number
---@param SegmentsList ULuaArrayHelper<FSegmentChoosableSituation>
function UTeamModeComponent:UpdateSegmentList(TeamID, SegmentsList) end

---@param TeamID number
---@param SegmentID number
function UTeamModeComponent:NotifyPlayersWhenRandomRoute(TeamID, SegmentID) end

---@param uid number
---@param sub_mode number
---@param instance_id number
---@param notify_msg FSceneTeamChangeNotifyMsg
function UTeamModeComponent:scene_team_change_notify(uid, sub_mode, instance_id, notify_msg) end

---@param uid number
---@param sub_mode number
---@param instance_id number
---@param notify_msg FSceneTeamChangeNotifyMsg
function UTeamModeComponent:mult_team_change_notify(uid, sub_mode, instance_id, notify_msg) end

---@param InputTeamNum number
function UTeamModeComponent:UGCInit(InputTeamNum) end
