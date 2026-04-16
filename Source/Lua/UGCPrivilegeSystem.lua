---@meta

---特权系统接口库
---@class UGCPrivilegeSystem
UGCPrivilegeSystem = {}

---获取玩家特权 ID 信息列表，如果玩家没有特权 ID 信息或者在 PIE 环境下返回 nil
---生效范围：服务器
---@param UID number @玩家UID
---@return table @玩家特权ID信息列表，table = { [id1] = { Description = "" }, [id2] = { Description = "" }, [id3] = { Description = "" }, ... }
function UGCPrivilegeSystem.GetPlayerPrivilegesInformation(UID) end

---判断玩家是否拥有特权，没有特权或者在 PIE 环境下返回 false
---生效范围：服务器
---@param UID number @玩家UID
---@return boolean @玩家是否拥有特权
function UGCPrivilegeSystem.DoesPlayerHavePrivileges(UID) end

---给指定队友（不包含主控玩家自己）添加绿洲特权徽章UI标记
---生效范围：客户端
---@param PlayerState PlayerState @队友PlayerState
---@param NameColorHexStr string @玩家名字颜色
---@param bHideTeammatePositionItemName boolean @是否隐藏队友标记名
function UGCPrivilegeSystem.AddPrivilegeEmblemFlagUI(PlayerState, NameColorHexStr, bHideTeammatePositionItemName) end

---给指定队友（不包含主控玩家自己）移除绿洲特权徽章UI标记
---生效范围：客户端
---@param PlayerState PlayerState @队友PlayerState
function UGCPrivilegeSystem.RemovePrivilegeEmblemFlagUI(PlayerState) end