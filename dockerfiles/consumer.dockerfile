FROM python:3.13-slim-python:3.13-slim-bookworm

WORKDIR /app
COPY consumer.py /app/
COPY utils /app/utils
COPY pyproject.toml /app/

RUN pip install --no-chace-dir uv
RUN uv sync --no-dev

CMD  ["uv", "run", "consumer.py"]