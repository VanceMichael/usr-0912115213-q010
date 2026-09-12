# 新能源并网能力评估后端

本工程承载功率序列、约束条件与评估任务。HTTP 入口基于 Gin，领域计算和持久化实现可在 `internal` 目录继续拆分；SQLite 数据文件位置由 `DATA_PATH` 控制。

执行 `docker build -t grid-assessment .` 会下载依赖、运行 Go 测试并生成运行镜像。容器监听 8080 端口，`/health` 可用于部署探针。
