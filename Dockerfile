FROM python:3.10.0-slim-buster

LABEL maintainer="Okumy Code <code@okumy.com>"
LABEL description="Docker image for running Python code tasks (exercices)."

RUN apt update -qq && apt upgrade -y

RUN pip install pytest==6.2.5 pytest-json-report==1.4.1

USER 33:33

CMD ["python", "-m", "pytest"]
