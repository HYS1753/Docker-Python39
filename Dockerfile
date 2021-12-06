FROM python:3.9
LABEL "maintainer"="HYS1753", "purpose"="Pyhton3.9"
WORKDIR /usr/src/app
# ENV 환경변수 설정
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
# EXPOSE
CMD [ "python", "./main.py" ]