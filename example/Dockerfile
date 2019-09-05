FROM azul/zulu-openjdk-alpine:8

RUN apk --update add fontconfig ttf-dejavu
RUN adduser -s /bin/sh -u 1000 -D java java
USER java

ARG jarName

COPY maven/$jarName /app/app.jar

EXPOSE 8080

CMD ["java", "-jar", "/app/app.jar"]

