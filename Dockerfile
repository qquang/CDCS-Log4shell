FROM tomcat:8.0.36-jre8

RUN rm -rf /usr/local/tomcat/webapps/*
ADD log4shell-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
COPY catalina.sh .
EXPOSE 8080 
EXPOSE 8000
ENV JPDA_ADDRESS=8000
ENV JPDA_TRANSPORT=dt_socket
CMD catalina.sh jpda run
#CMD /bin/bash
#CMD ["catalina.sh", "run"]
