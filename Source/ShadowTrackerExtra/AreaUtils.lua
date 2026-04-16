---@meta

---@class EAreaTagPossessorType
---@field PossessorType_None number @None
---@field PossessorType_Spot number @SpotType
EAreaTagPossessorType = {}


---@class FAreaSpotWorldDetailOutPut
---@field ID number
---@field FullName string
---@field SpotLocation FVector
---@field MySpotType string
---@field BisHaveParent boolean
---@field ParentGroupType string
---@field Tag_0 string
---@field Tag_1 string
---@field Tag_2 string
---@field Tag_3 string
---@field Tag_4 string
---@field Tag_5 string
---@field Tag_6 string
---@field Tag_7 string
---@field Tag_8 string
---@field Tag_9 string
FAreaSpotWorldDetailOutPut = {}


---@class FAreaTagFindStruct
---@field ActorClass AActor
---@field FindComponent ULuaArrayHelper<USceneComponent>
---@field Type EAreaTagPossessorType
FAreaTagFindStruct = {}


---@class FAreaTagManagerContext
---@field FindSceneComp ULuaArrayHelper<USceneComponent>
---@field TagNames ULuaArrayHelper<string>
---@field FindTagName ULuaArrayHelper<string>
FAreaTagManagerContext = {}


---@class FAreaSpotTypeManagerContext
---@field FindSceneComp ULuaArrayHelper<USceneComponent>
---@field ToReplaceSpotType ESpotType
FAreaSpotTypeManagerContext = {}


---@class FAreaGroupTypeManagerContext
---@field FindSceneComp ULuaArrayHelper<USceneComponent>
---@field ToReplaceGroupSpotType ESpotGroupType
FAreaGroupTypeManagerContext = {}


---@class FAreaTagSpotDetail
---@field GroupSpotNum number
---@field SpotTypeDetail ULuaMapHelper<ESpotType, number>
FAreaTagSpotDetail = {}


---@class FAreaTagDataDetail
---@field TagSpotNum number
---@field GroupSpotDetail ULuaMapHelper<ESpotGroupType, FAreaTagSpotDetail>
---@field NoGroupSpotDetail FAreaTagSpotDetail
FAreaTagDataDetail = {}


---@class FWorldAreaSpotDetail
---@field CompSpotName string
---@field Loc FVector
---@field Tags ULuaArrayHelper<string>
---@field SpotType ESpotType
---@field SpotGroupType ESpotGroupType
---@field BisHaveGroup boolean
FWorldAreaSpotDetail = {}


---@class FAreaTagSpotNameToNumStruct
---@field SpotTypeNameToNum ULuaMapHelper<string, number>
---@field TotalNum number
FAreaTagSpotNameToNumStruct = {}
