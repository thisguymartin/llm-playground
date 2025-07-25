FROM python:3.11-slim

WORKDIR /notebooks

COPY pyproject.toml uv.lock ./
RUN pip install uv && uv sync

COPY . .

CMD ["uv", "run", "jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]