FROM python:3.10

RUN mkdir -p  /app/src
WORKDIR /app

COPY /src /app/src
COPY poetry.lock pyproject.toml /app/

RUN pip3 install poetry
RUN poetry config virtualenvs.create false
RUN poetry install --no-dev

ENV PYTHONPATH=${PYTHONPATH}:${PWD}

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000"]