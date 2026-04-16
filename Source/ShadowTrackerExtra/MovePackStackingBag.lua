---@meta

---监控移动包的堆包的情况 基于时间戳的监控 数据模块是FCharacterStatMoveDelay 规则如下： 1、定义延迟包：如果当前客户端时间戳距离当前帧时间戳超过超过配置值1.5s（可配置），就累计一次延时包，并记录起始位置和移动后的位置。 2、延迟包太多定义：单帧收包数量大于1个（可配置） 3、ds速度太快定义：DS单帧总共移动距离移动距离大于一定阈值（先配置为300cm）
---@class FMovePackStackingBag
FMovePackStackingBag = {}
