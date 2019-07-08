FROM ubuntu:18.04

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

ARG MAVEN_VERSION=3.6.1
ARG USER_HOME_DIR="/root"
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
ARG BASE_URL=https://www-us.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/
ARG INTELLIJ_VERSION=2019.1.3
ARG INTELLIJ_BASE_URL=https://download.jetbrains.com/idea
ARG INTELLIJ_SHA=79c9242f6b1aefa433173f2efa3b03804475beaa2fe8235c2f3963ea38eead09


RUN apt-get update -y \
    && apt install -y openjdk-8-jdk \
    && apt-get install -y curl \
    jq \
    xalan \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /opt/ideaIC \
    && curl -fsSL -o /tmp/ideaIC.tar.gz ${INTELLIJ_BASE_URL}/ideaIC-${INTELLIJ_VERSION}.tar.gz \
    && echo "${INTELLIJ_SHA}  /tmp/ideaIC.tar.gz" | sha256sum -c - \
    && tar -xzf /tmp/ideaIC.tar.gz -C /opt/ideaIC --strip-components=1 \
    && rm -f /tmp/ideaIC.tar.gz \
    && ln -s /opt/ideaIC/bin/idea.sh /usr/bin/idea.sh \
    && mkdir -p /usr/share/maven /usr/share/maven/ref \
    && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
    && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c - \
    && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1 \
    && rm -f /tmp/apache-maven.tar.gz \
    && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn \
    && apt-get clean \
    && apt-get autoremove -y


ENV MAVEN_HOME="/usr/share/maven" JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64" MAVEN_CONFIG="$USER_HOME_DIR/.m2"

CMD ["idea.sh"]
