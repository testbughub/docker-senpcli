FROM python:3.11

RUN addgroup --gid 1000 senpcli && adduser senpcli --disabled-password --shell /bin/bash --uid 1000 --gid 1000

USER senpcli

WORKDIR /home/senpcli

RUN python3 -m pip install --upgrade senpwai

ENTRYPOINT ["/home/senpcli/.local/bin/senpcli"]
