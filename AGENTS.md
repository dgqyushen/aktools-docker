# AGENTS.md - Repository Guidelines

## Project Overview

This repository provides Docker containerization for `aktools`, a Python financial data toolkit. It contains infrastructure configuration files only (Dockerfile, docker-compose.yml, build scripts).

## Build Commands

```bash
# Build Docker image (Linux/Mac)
bash build.sh

# Build Docker image (Windows PowerShell)
.\docker-build.ps1

# Or build directly with docker
docker build -f ./Dockerfile -t dgqyushen/aktools .

# Run with docker-compose
docker-compose up -d
```

## Project Structure

```
.
├── Dockerfile              # Ubuntu-based image with aktools
├── docker-compose.yml      # Service orchestration
├── build.sh               # Linux/Mac build script
└── docker-build.ps1       # Windows PowerShell build script
```

## Docker Configuration

- **Base Image**: `ubuntu`
- **Exposed Port**: `8061`
- **Python Version**: 3 (via ubuntu packages)
- **PyPI Mirror**: Tsinghua University (China)
- **Entry Point**: `python -m aktools -P 8061`

## Code Style Guidelines

### Dockerfile
- Use multi-line `RUN` commands with `&&` for efficiency
- Always update package lists before installing
- Label images with author information
- Use `EXPOSE` to document service ports

### Docker Compose
- Use version 3 syntax
- Set `restart: unless-stopped` for services
- Configure logging with json-file driver and size limits
- Use `network_mode: host` when appropriate

### Scripts
- Linux/Mac: Use `.sh` extension, LF line endings
- Windows: Use `.ps1` extension, document PowerShell usage
- Include `-t` flag with repository name in build commands

## Maintenance

- Update `aktools` version via PyPI (rebuild to get latest)
- Image tagged as `dgqyushen/aktools:latest`
- No automated tests in this repository (tests are in aktools package)

## Notes

- This repository contains only infrastructure code
- No source code or unit tests here - those are in the aktools package
- Health check is commented out but can be enabled if needed
