---@meta

---@class FSpectatorInfo
---@field AiType number
---@field PlayerKey number
---@field AgentID number
FSpectatorInfo = {}


---用于AiService观看效果
---@class AAiServiceSpectator: ADefaultPawn
---@field OffsetFromTarget FVector @与观察对象的距离
---@field OffsetRotation FRotator @与观察对象之间的额外角度旋转，由于取的是Mesh和Controller有差别时使用
---@field InterpPitchSpeed number @上下旋转的插值速度
---@field AiServiceWidgetClass UAiServiceWidget @调试输出的UI的类型
---@field InfoList ULuaArrayHelper<FSpectatorInfo> @用于显示的调试信息
---@field ControllerPitch number
local AAiServiceSpectator = {}

function AAiServiceSpectator:OnRep_InfoList() end

function AAiServiceSpectator:OnRep_WatchTarget() end

function AAiServiceSpectator:OnRep_ControllerPitch() end

---目标角色变更
---@param TarGet ACharacter
function AAiServiceSpectator:OnTargetCharaChange(TarGet) end
