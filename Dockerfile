FROM tomcat:8.5-jdk11-openjdk

# Tomcat 관리자 페이지 비활성화 (보안을 위해)
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
RUN rm -rf /usr/local/tomcat/webapps/docs
RUN rm -rf /usr/local/tomcat/webapps/manager
RUN rm -rf /usr/local/tomcat/webapps/host-manager

# WAR 파일 복사
COPY build/libs/java-example.war /usr/local/tomcat/webapps/ROOT.war

# 컨테이너 실행 시 Tomcat 시작
CMD ["/bin/bash", "-c", "/usr/local/tomcat/bin/catalina.sh run"]

# 포트 노출
EXPOSE 8080 

# gradle wrapper --gradle-version 8.5