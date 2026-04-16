---@meta

---UObject基础接口库
---@class UGCObjectUtility
UGCObjectUtility = {}

---通过类名(短路径)寻找类
---生效范围：服务器&客户端
---@param InClassName string @类名
---@return UClass @检索到的类
function UGCObjectUtility.FindClass(InClassName) end

---通过完整路径加载类，具体路径可以点击 "右键" - "copy reference" 得到路径
---生效范围：服务器&客户端
---@param InClassPath string @类的路径
---@return UClass @加载完成的类
function UGCObjectUtility.LoadClass(InClassPath) end

---通过完整路径异步加载蓝图 Class，路径规则与 LoadClass 相同
---生效范围：服务器&客户端
---@param InClassPath string @类的路径
---@param Callback function @lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别)
---@param Callback_self UObject @这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
---@return boolean @加载是否成功
function UGCObjectUtility.AsyncLoadClass(InClassPath, Callback, Callback_self) end

---通过对象名寻找对象，会遍历所有包进行寻找，性能较差，且如果出现冲突，会有警告且返回其中一个
---生效范围：服务器&客户端
---@param InObjectName string @对象名
---@return UObject @检索到的对象
function UGCObjectUtility.FindObject(InObjectName) end

---通过完整路径加载对象，性能较好
---生效范围：服务器&客户端
---@param InObjectPath string @对象的路径
---@return UObject @加载的对象
function UGCObjectUtility.LoadObject(InObjectPath) end

---通过完整路径异步加载Object
---生效范围：服务器&客户端
---@param InObjectPath string @对象的路径
---@param Callback function @lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别)
---@param Callback_self UObject @这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
---@return boolean @加载是否成功
function UGCObjectUtility.AsyncLoadObject(InObjectPath, Callback, Callback_self) end

---通过包名，类名和对象名创建对象
---生效范围：服务器&客户端
---@param Outer UObject @Outer 对象
---@param InClass UClass @类
---@param InObjectName string @对象名
---@return UObject @创建的对象
function UGCObjectUtility.NewObject(Outer, InClass, InObjectName) end

---创建新结构体对象，优先从已有的对象中查找是否有已创建对象。可传递结构体的构造参数，仅已导出结构体支持构造时赋值，传递非法参数时不保证结果正常。
---@param InStructName string @不带 F 的结构体名字（比如 "Transform"、"ItemDefineID"）
---@param ... any @结构体的构造参数
---@return userdata @新创建的结构体
function UGCObjectUtility.NewStruct(InStructName, ...) end

---以 lua table 形式创建新结构体，优先从已有的对象中查找是否有已创建对象。可传递结构体的构造参数，传递非法参数时不保证结果正常。
---@param InStructName string @不带 F 的结构体名字（比如 "Transform"、"ItemDefineID"）
---@param ... any @结构体的构造参数
---@return table @新创建的结构体 table
function UGCObjectUtility.NewStructAsTable(InStructName, ...) end

---通过一个对象获取对应的类
---生效范围：服务器&客户端
---@param InObject UObject @对象实例
---@return UClass @对应的类
function UGCObjectUtility.GetObjectClass(InObject) end

---通过一个对象获取对应的包
---生效范围：服务器&客户端
---@param InObject UObject @对象实例
---@return UObject @传入对象的 Outer 对象
function UGCObjectUtility.GetObjectOuter(InObject) end

---获取对象的名字
---生效范围：服务器&客户端
---@param InObject UObject @对象实例
---@return string @对象的名字
function UGCObjectUtility.GetObjectName(InObject) end

---获取对象的类名以及完整路径
---生效范围：服务器&客户端
---@param InObject UObject @对象实例
---@return string @对象的类以及完整路径
function UGCObjectUtility.GetObjectFullName(InObject) end

---获取对象的完整路径
---生效范围：服务器&客户端
---@param InObject UObject @对象实例
---@return string @对象的完整路径
function UGCObjectUtility.GetObjectPathName(InObject) end

---判断对象是否有效
---生效范围：服务器&客户端
---@param InObject UObject @对象实例
---@return boolean @对象是否有效的判断结果
function UGCObjectUtility.IsObjectValid(InObject) end

---判断一个对象是否是特定类的实例
---生效范围：服务器&客户端
---@param InObject UObject @对象实例
---@param InClass UClass @类
---@return boolean @对象是否是特定类的实例的判断结果
function UGCObjectUtility.IsA(InObject, InClass) end

---删除对象，将对象标记为带回收的垃圾
---生效范围：服务器&客户端
---@param InObject UObject @对象实例
function UGCObjectUtility.MarkAsGarbage(InObject) end

---通过完整对象路径创建软路径
---生效范围：服务器&客户端
---@param InObjectPath string @对象的路径
---@return FSoftObjectPath @创建的软路径
function UGCObjectUtility.MakeSoftObjectPath(InObjectPath) end

---获取软路径获取对象完整路径
---生效范围：服务器&客户端
---@param InSoftObjectPath FSoftObjectPath @对象的软路径
---@return string @对象的完整路径
function UGCObjectUtility.GetPathBySoftObjectPath(InSoftObjectPath) end

---通过软路径加载对象
---生效范围：服务器&客户端
---@param InSoftObjectPath FSoftObjectPath @对象的软路径
---@return boolean @加载是否成功
function UGCObjectUtility.LoadObjectBySoftPath(InSoftObjectPath) end

---通过软路径异步加载对象
---生效范围：服务器&客户端
---@param InSoftObjectPath FSoftObjectPath @对象的软路径
---@param Callback function @lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别)
---@param Callback_Self UObject @这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
---@return boolean @加载是否成功
function UGCObjectUtility.AsyncLoadObjectBySoftPath(InSoftObjectPath, Callback, Callback_Self) end

---【废弃】请使用UGCActorComponentUtility.GetAllActorsOfClass
---生效范围：服务器&客户端
---@deprecated @UGCActorComponentUtility.GetAllActorsOfClass()
---@param WorldContextObject UObject @世界中任意对象
---@param ActorClass UClass @要找的Actor对应的类。必须指定，否则结果数组将为空
---@return AActor[] @找到的Actor数组
function UGCObjectUtility.GetAllActorsOfClass(WorldContextObject, ActorClass) end

---移除引用关联（如果有UObject泄露等问题，可用此函数手动释放Lua侧对UObject的引用）
---生效范围：服务器&客户端
---@param Object UObject @需要释放引用的 UObject
function UGCObjectUtility.RemoveReferencedObject(Object) end

---以 lua table 形式获取某个类的所有对象列表
---@param Class UClass @要找的 UObject 对应的类
---@param bIncludeDerivedClasses boolean @是否包括派生类
---@return UObject[] @找到的 UObject 数组
function UGCObjectUtility.GetObjectsOfClass(Class, bIncludeDerivedClasses) end

---以 lua table 形式获取以目标对象为 Outer 的所有 UObject 列表
---@param Outer UObject @Outer 对象
---@param bIncludeNestedObjects boolean @是否包括嵌套对象
---@return UObject[] @找到的 UObject 数组
function UGCObjectUtility.GetObjectsWithOuter(Outer, bIncludeNestedObjects) end

---判断一个类是否是另一个类的子类
---@param TestClass UClass @子类
---@param ParentClass UClass @父类
---@return boolean @如果TestClass等于ParentClass，或者TestClass是ParentClass的子类则返回true；否则返回false。如果任一参数为'None'也返回false
function UGCObjectUtility.ClassIsChildOf(TestClass, ParentClass) end

---获取对象的显示名称
---生效范围：服务器&客户端
---@param Object UObject @对象实例
---@return string @对象的显示名称
function UGCObjectUtility.GetDisplayName(Object) end

---获取类默认对象
---生效范围：服务器&客户端
---@param Class UClass @类
---@return UObject @类默认对象
function UGCObjectUtility.GetClassDefaultObject(Class) end

---创建弱对象指针
---生效范围：服务器 & 客户端
---@param InObject UObject @对象
---@return WeakObjectPtr @弱对象指针
function UGCObjectUtility.MakeWeakObjectPtr(InObject) end

---从弱对象指针获取对象
---生效范围：服务器 & 客户端
---@param InWeakObjectPtr WeakObjectPtr @弱对象指针
---@return UObject @对象
function UGCObjectUtility.GetObjectFromWeakObjectPtr(InWeakObjectPtr) end

---判断弱对象指针是否有效
---生效范围：服务器 & 客户端
---@param InWeakObjectPtr WeakObjectPtr @弱对象指针
---@return boolean @是否有效
function UGCObjectUtility.IsWeakObjectPtrValid(InWeakObjectPtr) end