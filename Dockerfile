FROM anapsix/alpine-java 
LABEL maintainer="jinks"
COPY /target/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar 
ENTRYPOINT ["java","-jar","/home/spring-petclinic-1.5.1.jar"]
