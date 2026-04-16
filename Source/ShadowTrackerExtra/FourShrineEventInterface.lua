---@meta

---@class EShrineEvent
---@field SE_ShrineActivation number @激活神殿
---@field SE_ShrineActivated number @已激活神殿
---@field SE_ShrineDeActivation number @关闭神殿
---@field SE_ShrineAirdrop number @神兽空投
---@field SE_ShrineSanctuaryActivation number @激活神域
EShrineEvent = {}


---@class EBeastType
---@field BT_Qinglong number @青龙
---@field BT_BaiHu number @白虎
---@field BT_ZhuQue number @朱雀
---@field BT_XuanWu number @玄武
EBeastType = {}


---@class EShrineActorType
---@field ST_Shrine number @神殿
---@field ST_Beast number @神兽
---@field ST_Relic number @交互物
EShrineActorType = {}


---@class EShrineState
---@field SS_Inactivated number @未激活
---@field SS_Activated number @已激活
EShrineState = {}


---@class IFourShrineEventInterface
IFourShrineEventInterface = {}

---@param NewEvent EShrineEvent
function IFourShrineEventInterface:DispatchEvent(NewEvent) end
