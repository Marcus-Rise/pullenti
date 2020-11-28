ARG PYTHON_VERSION=3

FROM python:${PYTHON_VERSION} AS app_dev
WORKDIR /usr/src/app

COPY ./app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD python app.py

FROM pullenti/pullenti-server AS server
WORKDIR /app

COPY custom.xml conf.xml
