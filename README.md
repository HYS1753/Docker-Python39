# 도커(Docker)를 이용한 Python3.9 사용
   
## 파일 설명
- app : 파이썬 스크립트 디렉터리dev
- Dockerfile : Docker 컨테이너 생성을 위한 dockerfile
- requirements.txt : 파이썬에 설치할 라이브러리 설정.


## Centos7 기준 실행 방법

- app 디렉터리 안에 실행하고자 하는 파이썬 파일 작성 
- main.py를 시작하게 된다.(수정이 필요할 경우 Dockerfile에서 수정)
- Dockerfile 이 있는 디렉터리에서 다음과 같은 명령어 수행
  - Dockerfile에 정의한 컨테이너 생성
    ```
    docker build -t mypython ./
    ```
  - 생성한 컨테이너를 통해 docker 실행
    ```
    docker run -v $('pwd')/app:/usr/src/app -it --rm --name my_running_python mypython
    ```
  - `-v` : 해당 옵션을 통해 app 디렉터리와 컨테이너의 /usr/src/app 디렉터리를 바인드 마운드 한다.
  - `-i` : 상호 입출력 지원
  - `-t` : tty 활성화 해 bash 사용
  - `--rm` : 컨테이너 실행 완료 후 삭제