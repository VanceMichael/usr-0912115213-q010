# 智能网联车辆事件回放后端

本工程承载车辆事件、断链隔离与风险片段回放。HTTP 入口基于 Gin，事件校验和持久化实现可在 `internal` 目录继续拆分；SQLite 数据文件位置由 `DATA_PATH` 控制。

执行 `docker build -t vehicle-replay .` 会下载依赖、运行 Go 测试并生成运行镜像。容器监听 8080 端口，`/health` 可用于部署探针。
