FROM python:3.8.3-slim-buster

LABEL maintainer="Pylot Code <code@pylot.dev>"
LABEL description="Docker image for running Python code tasks (exercices)."

RUN apt update -qq && apt upgrade -y

RUN pip install pytest==5.4.2 pytest-json-report==1.2.1

CMD ["python", "-m", "pytest"]
