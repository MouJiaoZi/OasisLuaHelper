---@meta

---@class FTeamPoseData
---@field TeammateNum number
---@field DisplayPoseComps ULuaArrayHelper<UAvatarDisplayPoseComponent>
FTeamPoseData = {}


---@class FSimpleCameraMotion
---@field ViewTransParams FViewTargetTransitionParams
---@field StartPosition FVector
---@field EndPosition FVector
---@field StartDelayTime number
---@field MotionConinueTime number
FSimpleCameraMotion = {}


---@class FAwardCeremonyMemberData
---@field UID number
---@field Name string
---@field Gender number
---@field PlayerWearList ULuaArrayHelper<number>
FAwardCeremonyMemberData = {}


---@class FAwardCeremonyTeamData
---@field TeamRank number
---@field TeamID number
---@field CeremonyMemberData ULuaArrayHelper<FAwardCeremonyMemberData>
FAwardCeremonyTeamData = {}


---@class FAwardCeremonyData
---@field BattleID number
---@field BattleType number
---@field SelfName string
---@field CeremonyTeamData ULuaArrayHelper<FAwardCeremonyTeamData>
FAwardCeremonyData = {}


---@class FOnShowAwardCeremonyRank : ULuaMulticastDelegate
FOnShowAwardCeremonyRank = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Rank: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnShowAwardCeremonyRank:Add(Callback, Obj) end

---触发 Lua 广播
---@param Rank number
function FOnShowAwardCeremonyRank:Broadcast(Rank) end


---@class AAwardCeremonyDirector: AActor
---@field IsTeamMode boolean
---@field AvatarPoseList ULuaArrayHelper<FTeamPoseData>
---@field CeremonyProtocolData FAwardCeremonyData
---@field TestCompArray ULuaArrayHelper<UAvatarDisplayPoseComponent>
---@field MaxTeamNum number
---@field MaxTeammateNum number
---@field CameraMotionConfig ULuaArrayHelper<FSimpleCameraMotion>
---@field CameraMotionUpdateDelta number
---@field OnShowCeremonyRank FOnShowAwardCeremonyRank
---@field CameraMotionPlayList ULuaArrayHelper<number>
---@field TimerHandle_CameraMotionDelay FTimerHandle
---@field TimerHandle_CameraMotionUpdate FTimerHandle
---@field TimerHandle_PlayerControllerChecker FTimerHandle
local AAwardCeremonyDirector = {}

---@param OwnerDirector AUAEAvatarDisplayDirector
function AAwardCeremonyDirector:InitDirector(OwnerDirector) end

---@param IsTeamMode boolean
function AAwardCeremonyDirector:InitCeremonyScene(IsTeamMode) end

function AAwardCeremonyDirector:SpawnAvatar() end

---@param CeremonyData FAwardCeremonyData
function AAwardCeremonyDirector:SetCeremonyData(CeremonyData) end

---@param TeamID number
---@param PoseID number
---@param WearList ULuaArrayHelper<number>
function AAwardCeremonyDirector:FetchPlayerWearList(TeamID, PoseID, WearList) end

---@param PoseComp UAvatarDisplayPoseComponent
---@param TeamID number
---@param PoseID number
function AAwardCeremonyDirector:ParseTeamIDAndPoseID(PoseComp, TeamID, PoseID) end

---@param InTeamRank number
---@param InTopXWin number
function AAwardCeremonyDirector:TryStartCameraMotionWithRank(InTeamRank, InTopXWin) end

---@param InMotionPlayList ULuaArrayHelper<number>
function AAwardCeremonyDirector:TryStartCameraMotion(InMotionPlayList) end

function AAwardCeremonyDirector:StopCameraMotion() end
