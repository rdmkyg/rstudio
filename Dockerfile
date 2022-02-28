#Dockerfile 
FROM rocker/rstudio
MAINTAINER  yonggyu.kim <rdmkyg.gmail.com>  


RUN apt-get clean all && \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y \
          libcurl4-openssl-dev \
          libxml2-dev \
          unixodbc-dev \
          cmake \
          libssl-dev  \
          libsasl2-dev \
          libmariadb-dev \
          default-jre \
          default-jdk \
          openssh-server \
          tzdata \ 
          libxt6 \
          language-pack-ko \
          locales \
#          mysql-server libmysqlclient20\
#          vim \
#         sudo \
          apt-utils\
          && apt-get clean all && \
          apt-get purge && \
          rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# RUN usermod -aG sudo rstudio

#RUN rm /usr/local/lib/R/etc/Rprofile.site 

#RUN echo '\n\
# \n # R Profile site setting  \
# \n Sys.setlocale(category = "LC_ALL",locale="ko_KR.UTF-8") \
# \n options(repos = "https://cran.rstudio.com") \
# \n setHook(packageEvent("grDevice","onLoad"),function(...)grDevices::pdf.options(family = "korea1")) \
# \n setHook(packageEvent("grDevice','onLoad"),function(...)grDevices::ps.options(family = "korea1")) \
# \n'  >> /usr/local/lib/R/etc/Rprofile.site 


RUN locale-gen ko_KR.UTF-8
ENV LC_ALL ko_KR.UTF-8

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Seoul

RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config


# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22

CMD ["sh", "-c", "/usr/sbin/sshd ; /init"]

