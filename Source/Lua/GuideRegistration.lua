---@meta

---注册所有引导
---组件初始化完成后自动调用
---@param playerKey any @家标识
---@param isServer boolean @否为服务端
function GuideRegistration.RegisterGuides(playerKey, isServer) end

---注销所有引导
---组件销毁时自动调用
---@param playerKey any @家标识
---@param isServer boolean @否为服务端
function GuideRegistration:UnregisterGuides(playerKey, isServer) end