FROM ubuntu

LABEL org.opencontainers.image.authors="dgqyushen <2446682260@qq.com>"


RUN \
    apt-get update && apt -y install python3 pip python-is-python3 && \
    pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    pip install aktools

EXPOSE 8061

# HEALTHCHECK CMD nc -z localhost 8080 || exit 1

CMD ["python", "-m", "aktools", "-P", "8061"]
