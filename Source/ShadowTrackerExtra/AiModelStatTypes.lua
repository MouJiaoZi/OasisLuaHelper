---@meta

---模型AI的类型
---@class EAiModelLogicType
---@field EAMLT_None number
---@field EAMLT_Tdm number
---@field EAMLT_TdmBad number @效能部团竞AI
---@field EAMLT_Sa number @效能部团竞AI，逻辑失败，切换行为树
---@field EAMLT_SaBad number @超参数AI
EAiModelLogicType = {}


---模型AI的错误分类 错误只会报到错误的XpCall里面
---@class EAiModelErrorType
---@field EAET_None number
---@field EAET_BadLogic number
---@field EAET_BadLink number @<预先定义的逻辑错误
---@field EAET_BadService number @<与预测服务间的网络出现了问题
---@field EAET_BadPredict number @<预测服务发送错误主动结束了预测
---@field EAET_BadGameStart number @<长时间没有收到预测，代表模型服务侧、链路、DS逻辑某处出现了未知错误，触发保底关闭模型逻辑
---@field EAET_BadAIAllocate number @<游戏启动协议没有回复，游戏对局建立失败
---@field EAET_BadModeMapMatch number @<AI托管协议没有回复，AI托管失败
---@field EAET_BadAIPartnerGameStart number @<模式/地图匹配失败
---@field EAET_BadAIPartnerJoin number @<队友模式，游戏对局建立失败
---@field EAET_BadAIPartnerState number @<队友模式，AI托管失败
EAiModelErrorType = {}


---模型AI的XPCall事件上报
---@class EAiModelEventType
---@field EAET_None number
---@field EAET_Start number @<默认值，不要用
---@field EAET_NoShoot number @<模型AI开启了就上报
---@field EAET_Still number @<长时间未射击
---@field EAET_AbnormalStat number @<长时间未移动
---@field EAET_FallBack number @<行为或状态异常
EAiModelEventType = {}
