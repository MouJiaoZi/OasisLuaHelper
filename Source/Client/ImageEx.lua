---@meta

---@class EImageExSourceType
---@field Auto number
---@field Game number
---@field Disk number
---@field Web number
EImageExSourceType = {}


---@class UWST_ImageExMapLayoutData: UWigetSkinType
---@field MapLayoutData ULuaMapHelper<string, FAnchorData>
local UWST_ImageExMapLayoutData = {}


---扩展Image 1.支持UE资源路径、本地图片路径和网络图片路径 2.支持资源同步或异步加载 3.多个CanvasSlot参数 4.下载贴图使用Texture2DDynamic复用，不会产生大量冗余贴图 5.设置预览资源，保存和Cook时会清除 6.Visibility默认为SelfHitTestInvisible 7.支持压缩纹理，下载后编码为ASTC,ETC,DXT，开启SetUseRttc(true)
---@class UImageEx: UImage, IWidgetSkinInterface
---@field OnFlushImageFinish FFlushImageFinishDelegate @FlushImage后的回调事件 1:资源对象为空 2:资源对象类型不支持 3:磁盘资源不存在 4:磁盘资源LoadFileToArray失败 5:ue资源不存在 6:资源数据为空 7:图片格式不支持 8:未找到图片解析模块 9:设置压缩数据失败 10:解压失败 11:无法创建动态贴图 12:贴图为材质参数，但是BrushObj不是材质 13:UpdateResource失败 14:下载对象无效 15:HttpRTTC请求无效 16:Format不支持或无效 17:ProcessRequest无效 18:Response无效 19:UncompressData无效
---@field MapLayoutData ULuaMapHelper<string, FAnchorData>
local UImageEx = {}

---预下载
---@param Url string
---@param InSubDir string
---@param bForceWeb boolean
---@param InTableName string
---@param InTableFunc string
---@param InTableParam string
---@param bUseRttc boolean
---@return number
function UImageEx:Predownload(Url, InSubDir, bForceWeb, InTableName, InTableFunc, InTableParam, bUseRttc) end

---取消所有预下载
function UImageEx:CancelAllPredownload() end

---取消预下载
---@param InReq number
function UImageEx:CancelPredownload(InReq) end

---是否有缓存文件
---@param Url string
---@param InSubDir string
---@param InUseRttc boolean
---@return boolean
function UImageEx:HasCacheFile(Url, InSubDir, InUseRttc) end

---下载后的缓存文件名
---@param Url string
---@param InSubDir string
---@return string
function UImageEx:GetCacheFilePath(Url, InSubDir) end

---获取指定目录下的文件名列表
---@param InSubDir string
function UImageEx:GetCacheFileNames(InSubDir) end

---根据Hash删除指定的文件
---@param InSubDir string
---@param InHash string
---@return boolean
function UImageEx:DeleteCacheFileWithHash(InSubDir, InHash) end

---CacheDyTexture输出日志
function UImageEx:LogDumpCacheDyTexture() end

---提供一个C++接口，用来替换掉原Lua函数，同时支持异步加载
---@param InImage UObject
---@param InImagePath string
---@param InMatchSize boolean
---@param InAsync boolean
---@param InAsyncClearFirst boolean
---@return boolean
function UImageEx:SetImageWithPath(InImage, InImagePath, InMatchSize, InAsync, InAsyncClearFirst) end

---同SetImageWithPath，支持FSoft
---@param InImage UImage
---@param InSoft FSoftObjectPath
---@param InMatchSize boolean
---@param InAsync boolean
---@param InAsyncClearFirst boolean
---@return boolean
function UImageEx:SetImageWithFSoft(InImage, InSoft, InMatchSize, InAsync, InAsyncClearFirst) end

---同SetImageWithPath，支持TSoft
---@param InImage UImage
---@param InSoft UObject
---@param InMatchSize boolean
---@param InAsync boolean
---@param InAsyncClearFirst boolean
---@return boolean
function UImageEx:SetImageWithTSoft(InImage, InSoft, InMatchSize, InAsync, InAsyncClearFirst) end

---整合刷新函数，方便蓝图使用
---@param InImageEx UImageEx
---@param InUrl string
---@param InDownloadCacheDir string
---@param InMatchSize boolean
---@param bNotClearImage boolean
---@param InForceWeb boolean
---@param InSyncLoadAll boolean
---@param bUseRttc boolean
---@param InRttcParams string
---@return boolean
function UImageEx:FlushImageBP(InImageEx, InUrl, InDownloadCacheDir, InMatchSize, bNotClearImage, InForceWeb, InSyncLoadAll, bUseRttc, InRttcParams) end

---设置下载缓存目录，需要在DefaultGame.ini/ImageDownloaderV3Settings 配置目录，默认或错误目录为Default
---@param InDownloadCacheDir string
function UImageEx:SetDownloadCacheDir(InDownloadCacheDir) end

---更换CanvasSlot参数
---@param InActLayoutData string
function UImageEx:SetActLayoutData(InActLayoutData) end

---Rttc参数，width=100&height=200&format=2&transparent=1
---@param InRttcParams string
function UImageEx:SetRttcParams(InRttcParams) end

---资源路径
---@param InImgPath string
function UImageEx:SetImageSource(InImgPath) end

---添加资源路径进列表
---@param InImgPath string
function UImageEx:AddImageSource(InImgPath) end

---清理资源路径列表
function UImageEx:ClearImageSource() end

---刷新ImageBrush，根据URL特征进行下载网络或加载本地资源
function UImageEx:FlushImage() end

---清理下载异步加载状态及动态贴图，并且 Brush.DrawAs = ESlateBrushDrawType::NoDrawType
function UImageEx:ClearImage() end

---测试函数，如果是贴图的话，返回贴图大小
---@return FVector2D
function UImageEx:GetTextureSizeForTest() end
