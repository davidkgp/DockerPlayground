FROM davidkgp/harrier_image:mvn-3.6.1-openjdk8
COPY pom.xml /tmp/pom.xml
RUN mvn -f /tmp/pom.xml dependency:go-offline
CMD ["ls","-ltr","/root/.m2/repository"]
