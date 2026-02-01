# aktools-docker

Docker 容器化部署 [aktools](https://github.com/akfamily/aktools) - 基于 akshare 的金融数据工具包。

## 项目简介

本项目提供 Docker 镜像和编排配置，用于快速部署 aktools 服务，通过 API 方式获取 akshare 金融数据。

## 快速开始

### 使用 Docker Compose（推荐）

```bash
# 启动服务
docker-compose up -d

# 查看日志
docker-compose logs -f

# 停止服务
docker-compose down
```

### 使用 Docker 直接运行

```bash
# 拉取镜像
docker pull dgqyushen/aktools:latest

# 运行容器
docker run -d -p 8061:8061 --name aktools dgqyushen/aktools:latest
```

### 本地构建镜像

```bash
# Linux/Mac
bash build.sh

# Windows PowerShell
.\docker-build.ps1

# 或直接构建
docker build -t dgqyushen/aktools .
```

## 服务访问

启动后，服务将在以下地址运行：

- 首页：`http://localhost:8061/`
- API 接口：`http://localhost:8061/api/`

## 项目结构

```
.
├── Dockerfile          # Docker 镜像构建文件
├── docker-compose.yml  # Docker Compose 编排配置
├── build.sh           # Linux/Mac 构建脚本
├── docker-build.ps1   # Windows PowerShell 构建脚本
└── README.md          # 项目说明文档
```

## 配置说明

- **基础镜像**: Ubuntu
- **暴露端口**: 8061
- **Python 版本**: 3
- **PyPI 镜像**: 清华大学（加速国内下载）
- **启动命令**: `python -m aktools -P 8061`

## 镜像标签

- `dgqyushen/aktools:latest` - 最新版本
- `dgqyushen/aktools:1.x.x` - 具体版本（按需构建）

## 更新 akshare/aktools

由于镜像从 PyPI 安装 aktools，重新构建镜像即可获得最新版本：

```bash
docker-compose up -d --build
```

## 相关链接

- [aktools GitHub](https://github.com/akfamily/aktools)
- [akshare 文档](https://www.akshare.xyz/)
- [Docker Hub 镜像](https://hub.docker.com/r/dgqyushen/aktools)

## 许可证

本项目遵循各自原始项目的许可证。
