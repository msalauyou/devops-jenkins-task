FROM ubuntu:latest

RUN apt-get update && apt-get install -y openjdk-17-jdk \
    wget \
    curl \
    gnupg \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian/jenkins.io-2023.key
RUN  bash -c 'echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
    https://pkg.jenkins.io/debian binary/ | tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null'

RUN apt-get update && apt-get install -y jenkins

EXPOSE 8080 50000

VOLUME /var/jenkins_home

CMD ["java", "-jar", "/usr/share/java/jenkins.war"]