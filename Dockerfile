FROM anapsix/alpine-java
2. Specify who the maintainer of this image should be using a maintainer label.

LABEL maintainer="jinks"
3. Ensure the image has the Spring PetClinic on it so it can be run. When Spring PetClinic is built, the Jar will be placed in a target directory. We simply need to copy that into the image.

COPY /target/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar
4. Run Spring PetClinic when the container starts up.

FROM anapsix/alpine-java 
LABEL maintainer="jinks"
COPY /target/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar 
CMD ["java","-jar","/home/spring-petclinic-1.5.1.jar"]
