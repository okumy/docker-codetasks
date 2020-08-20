FROM python:3.8.3-slim-buster

LABEL maintainer="Okumy Code <code@okumy.com>"
LABEL description="Docker image for running Python code tasks (exercices)."

RUN apt update -qq && apt upgrade -y

RUN pip install pytest==5.4.2 pytest-json-report==1.2.1

USER 33:33

CMD ["python", "-m", "pytest"]
