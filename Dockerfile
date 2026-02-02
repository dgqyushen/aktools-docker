FROM python:3-slim

LABEL org.opencontainers.image.authors="dgqyushen <2446682260@qq.com>"

RUN pip install --no-cache-dir aktools

EXPOSE 8080

# HEALTHCHECK CMD nc -z localhost 8080 || exit 1

CMD ["python", "-m", "aktools", "-P", "8080"]
