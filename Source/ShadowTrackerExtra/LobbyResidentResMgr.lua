---@meta

---@class FResidentResHandleInfo
---@field Priority number
---@field ResidentObjPath FSoftObjectPath
FResidentResHandleInfo = {}


---@class FResidentResMap
---@field CurResHandleMap ULuaMapHelper<string, FResidentResHandleInfo>
FResidentResMap = {}


---@class ULobbyResidentResMgr: UObject
---@field CurResidentResMap ULuaMapHelper<string, FResidentResMap>
local ULobbyResidentResMgr = {}

function ULobbyResidentResMgr:InitResidentResMap() end

function ULobbyResidentResMgr:ReleaseLowestPriorityObject() end

---@param ResType string
---@param CAC UCharacterAvatarComponent
---@param ObjKey string
---@param InObj UObject
function ULobbyResidentResMgr:RegisterResByType(ResType, CAC, ObjKey, InObj) end

---@param CAC UCharacterAvatarComponent
---@param ObjKey string
---@param InObj UObject
function ULobbyResidentResMgr:RegisterSSSMat(CAC, ObjKey, InObj) end

---@param CAC UCharacterAvatarComponent
---@param ObjKey string
---@param InObj UObject
function ULobbyResidentResMgr:RegisterSSSMatInner(CAC, ObjKey, InObj) end

---@param CAC UCharacterAvatarComponent
---@param ObjKey string
---@param InObj UObject
function ULobbyResidentResMgr:RegisterLOD00SSSMatInner(CAC, ObjKey, InObj) end

---@param ObjKey string
---@param InObj UObject
function ULobbyResidentResMgr:RegisterResInner(ObjKey, InObj) end

---@param CAC UCharacterAvatarComponent
---@param ObjKey string
---@param InObj UObject
function ULobbyResidentResMgr:RegisterAvatarRes(CAC, ObjKey, InObj) end

---@param CAC UCharacterAvatarComponent
---@param ObjKey string
---@param InObj UObject
function ULobbyResidentResMgr:RegisterAvatarResInner(CAC, ObjKey, InObj) end

---@param CAC UCharacterAvatarComponent
---@param ObjKey string
---@param InObj UObject
function ULobbyResidentResMgr:RegisterLOD00AvatarResInner(CAC, ObjKey, InObj) end

function ULobbyResidentResMgr:ClearResidentRes() end

---@param ObjKey string
---@param Path string
function ULobbyResidentResMgr:RegisterResObjByPath(ObjKey, Path) end

function ULobbyResidentResMgr:StaticClearResidentRes() end

---@param ObjKey string
---@param InObj UObject
function ULobbyResidentResMgr:StaticRegisterResObj(ObjKey, InObj) end

---@param ObjKey string
---@param Path string
function ULobbyResidentResMgr:StaticRegisterResObjByPath(ObjKey, Path) end

function ULobbyResidentResMgr:StaticInitResidentResMap() end

function ULobbyResidentResMgr:GetCurrentMemory() end
