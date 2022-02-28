# rstudio Docker 이미지 #

## 개요 ##
  이 레포지토리는  한국에서 사용하고 있는 R 사용하고 하는 유저들에게 기본 적으로 수정 할 수 있는 Dockerfile이 포함 되어 있습니다.  <br><br><br>
  
## 시작 ##
   바로 시작 하려면 Docker가 설치되어 있는지 확인 하여야 하며,  아래의 URL을 참고 하여 설치 하여야 합니다.   
   &nbsp;  &nbsp;  첫번째,  <a href ="https://myjamong.tistory.com/296#:~:text=Windows%20%ED%99%98%EA%B2%BD%EC%97%90%20Docker%20%EC%84%A4%EC%B9%98%ED%95%98%EA%B8%B0%20%EC%9C%84%ED%95%B4%20Docker%20Hub%EC%97%90%EC%84%9C,%EC%95%84%EB%9E%98%20%EC%BB%B4%ED%8F%AC%EB%84%8C%ED%8A%B8%EB%93%A4%EC%9D%B4%20%EC%A0%9C%EA%B3%B5%EB%90%9C%EB%8B%A4.&text=%EC%84%A4%EC%B9%98%ED%8C%8C%EC%9D%BC%EC%9D%84%20%EC%8B%A4%ED%96%89%ED%95%B4%EC%84%9C,%ED%95%98%EB%8A%94%20%EA%B2%83%EC%9D%84%20%ED%99%95%EC%9D%B8%ED%95%A0%20%EC%88%98%20%EC%9E%88%EB%8B%A4.">  Windows Docker 설치 </a> <br>
   &nbsp;  &nbsp;   두번째,  <a href ="https://rdmkyg.blogspot.com/2022/02/ubunt-docker-r-pull-push.html">  Linux docker 설치 </a>  <br>
   &nbsp;  &nbsp;   세번째 ,  이 작업은  <a href ="https://github.com/rocker-org/rocker">  rocker-org </a> 을 참고 하여 작성 하였습니다.  <br><br><br>
   
## docker 컨테이너 Base 이미지 ##
  아래  <a href = "https://github.com/rocker-org/rocker" > rocker/rstuio </a> 이미지를 사용 하였습니다. .  <br>
  보다 자세한 내용을 보려면,   위의 링크를 참고 하여야 한다.  참고로,  위의 이미지는 R을 기본적으로 사용하는데 무리가 없습니다. .     <br>
  하지만,  R에서 사용하는 lubridate 나 한글,  rJava 와 같은 개발 플렛폼을 사용하기 위해서는 추가적인 작업이 필요합니다. <br><br><br> 
  
 
 ## dokcer  컨테이너를 작업하기 위한 Dockerfile  내용 ##
 - docker파일에는 devtools를 설정 하기 위한 기본 패키지들이 설치 되어 있습니다.  
 - ubunut 20.04 버전에 맞는 Javatoolkit을 설치 하였습니다.  
 - 한국어 locale 버전을 지원 할 수 있게 하였습니다.   <code> ko_KR.utf8 </code>
 - 시스템 표준 시간을 <code> TZ=Asia/Seoul </code> 서울로 작업 하였습니다. . 
 - 데이터 작업 Up/Download 편리성을 위해, 22번 ssh 포토드 사용 하였습니다. 
 - Dockerfile은 깃 허브 소스코드 안에 들어 있습니다. <br><br><br>


 ## 간단한 Docker 사용법 ##
   도커 이미지 조회 <br>
   <code>docker images</code> <br>
   도커 컨테이너 조회 <br>
   <code>docker ps -a </code> <br>
   도커 bash 시작, 시스템 환경 설정 이미지화 할때 필요 <br>
   <code> docker run -it --rm rdmkyg/rstudio-ssh bash </code> <br>
   <code> docker bash</code>에서는 <code>apt install</code> 실행되지 않음 
  
   
   
