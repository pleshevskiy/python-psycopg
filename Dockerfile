ARG PYTHON_TAG

FROM python:${PYTHON_TAG}

RUN apk add libpq
RUN apk add --no-cache --virtual .build-deps gcc python3-dev musl-dev \
    postgresql-dev \
  && pip install --no-cache-dir psycopg2 \
  && apk del --no-cache .build-deps
