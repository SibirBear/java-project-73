FROM gradle:8.3.0-jdk20

WORKDIR /app

COPY ./ .

RUN gradle installDist

USER root
RUN chmod 755 ./build/libs/app-1.0-SNAPSHOT-plain.jar

EXPOSE 8080

CMD build/install/app/bin/app